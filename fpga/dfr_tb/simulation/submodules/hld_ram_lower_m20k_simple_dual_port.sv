//// (c) 1992-2021 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


//see hld_ram.sv for a description of the parameters, ports, and general functionality of all the hld_ram layers

//this module provides a unified interface for M10K or M20K in simple dual port mode, it instantiates altera_syncram and adds soft logic to support new data mode

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_lower_m20k_simple_dual_port #(
    //geometry of the memory
    parameter  int DEPTH,                   //number of words of memory
    parameter  int WIDTH,                   //width of the data bus, both read and write data
    parameter  int BE_WIDTH,                //width of the byte enable signal, note that WIDTH / BE_WIDTH must divide evenly
    parameter  int MAXIMUM_DEPTH,           //ensure access to all 20k bits of memory by limiting how narrow the physical width can get, implemented by limiting the max physical depth, 0 = no limit

    //operation of memory
    parameter      DEVICE_FAMILY,           //legal values are: "Cyclone V", "Arria V", "Stratix V", "Cyclone 10 GX", "Arria 10", "Stratix 10", "Agilex"
    parameter      READ_DURING_WRITE,       //legal values are: "DONT_CARE", "OLD_DATA", "NEW_DATA"

    //simplified use-cases that lead to more use of hardened logic
    parameter  bit USE_ENABLE,              //set to 0 if all clock enables are unused
    parameter  bit COMMON_IN_CLOCK_EN,      //set to 1 if a_in_clock_en and b_in_clock_en are driven by the same source

    //specify whether to register or unregister the read data
    parameter  bit REGISTER_B_READDATA,     //latency from b_address to b_readdata is 1 (if unregistered) or 2 (if registered)

    //memory initialization
    parameter  bit USE_MEM_INIT_FILE,       //0 = do not use memory initialization file, 1 = use memory initialization file
    parameter  bit ZERO_INITIALIZE_MEM,     //only when USE_MEM_INIT_FILE = 0, choose whether the memory contents power up to zero or don't care
    parameter      MEM_INIT_FILE_NAME,      //only when USE_MEM_INIT_FILE = 1, specify the name of the file that contains the initial memory contents

    //this should be a localparam but Quartus standard doesn't support it, leave as a parameter but don't override when instantiating
    parameter  int ADDR = $clog2(DEPTH)
) (
    input  wire                     clock,
    //no reset

    //port a
    input  wire      [ADDR-1:0] a_address,          //address for write
    input  wire                 a_write,            //write enable
    input  wire     [WIDTH-1:0] a_writedata,        //data to write to memory
    input  wire  [BE_WIDTH-1:0] a_byteenable,       //which bytes of write data to commit to memory
    input  wire                 a_in_clock_en,      //applies to all inputs of port a: address, write enable, write data, byte enable

    //port b
    input  wire      [ADDR-1:0] b_address,          //address for read
    output logic    [WIDTH-1:0] b_readdata,         //data read from memory
    input  wire                 b_in_clock_en,      //applies to all inputs of port b: address
    input  wire                 b_out_clock_en      //applies to all outputs of port b: read data
);
    
    ///////////////////////
    //  Legality checks  //
    ///////////////////////

    //ensure ADDR value is as expected (supposed to be a localparam but Quartus standard doesn't support it)
    `ACL_PARAMETER_ASSERT(ADDR == $clog2(DEPTH))

    //other legality checks are intended to have already been checked by hld_ram and hld_ram_lower


    //////////////////////////
    //  Derived parameters  //
    //////////////////////////

    localparam int BITS_PER_ENABLE = WIDTH / BE_WIDTH;



    //////////////////////////////////////////////////////////////////////
    //  Model the hardened address and input registers inside the m20k  //
    //////////////////////////////////////////////////////////////////////

    //in many cases these registers have no fanout so they will just get swept away
    logic     [ADDR-1:0] a_internal_address, b_internal_address;
    logic                a_internal_write;
    logic [BE_WIDTH-1:0] a_internal_byteenable;
    logic    [WIDTH-1:0] a_internal_writedata;
    logic     [ADDR-1:0] a_mux_address, b_mux_address;

    always_ff @(posedge clock) begin
        if (a_in_clock_en) begin
            a_internal_address    <= a_address;
            a_internal_write      <= a_write;
            a_internal_byteenable <= a_byteenable;
            a_internal_writedata  <= a_writedata;
        end
        if (b_in_clock_en) begin
            b_internal_address    <= b_address;
        end
    end

    //this is what drives the address port if soft logic is used for address stall
    assign a_mux_address = (a_in_clock_en) ? a_address : a_internal_address;
    assign b_mux_address = (b_in_clock_en) ? b_address : b_internal_address;



    ////////////////////////////
    //  altera_syncram ports  //
    ////////////////////////////

    //add soft logic when hardened logic lacks functionality
    //if byte enables are not used, then altera_syncram can be used with arbitrary width
    //if mixed port read during write is new data mode, can emulate this by adding a data bypass

    logic     [ADDR-1:0] address_a, address_b;
    logic                addressstall_b;
    logic                wren_a;
    logic [BE_WIDTH-1:0] byteena_a;
    logic    [WIDTH-1:0] data_a;
    logic    [WIDTH-1:0] q_b;
    logic                clock0;
    logic                clock1;
    logic                clocken1;

    //write enable and byte enable
    generate
    if (BE_WIDTH == 1) begin    //1 byte enable for the entire data width, don't need to use physical byte enable, combine it with write enable
        assign wren_a    = a_write & a_in_clock_en & a_byteenable;
        assign byteena_a = 1'b1;
    end
    else begin
        assign wren_a    = a_write & a_in_clock_en;
        assign byteena_a = a_byteenable;
    end
    endgenerate

    //ports that have a natural mapping
    assign address_a      = a_address;
    assign data_a         = a_writedata;
    assign address_b      = b_address;

    //clock enable for input: always use soft logic for write port (by masking the write enable), always use hard logic for read port
    assign addressstall_b = ~b_in_clock_en;
    assign clock0         = clock;

    //clock enable for output: always use hard logic
    generate
    if (!REGISTER_B_READDATA || !USE_ENABLE) begin
        assign clock1   = 1'b1;
        assign clocken1 = 1'b1;
    end
    else begin
        assign clock1   = clock;
        assign clocken1 = b_out_clock_en;
    end
    endgenerate

    //output the read data
    generate
    if (READ_DURING_WRITE == "NEW_DATA") begin  //new data mode is achieved by using a data bypass
        logic addr_match;
        logic [BE_WIDTH-1:0] b_bypass_enable_unreg, b_bypass_enable_reg, b_bypass_enable;
        logic    [WIDTH-1:0] b_bypass_data_unreg  , b_bypass_data_reg,   b_bypass_data;

        //detect when the addresses match, less logic is needed if the effective addresses can only change at the same time (due to a common input clock enable)
        if (COMMON_IN_CLOCK_EN) begin
            always_ff @(posedge clock) begin
                if (a_in_clock_en) addr_match <= (a_address == b_address);
            end
        end
        else begin
            always_ff @(posedge clock) begin
                addr_match <= (a_mux_address == b_mux_address);
            end
        end

        //if the output data is unregistered, determine whether to use bypass and what the bypass data should be
        assign b_bypass_enable_unreg = (a_internal_write & addr_match) ? a_internal_byteenable : '0;
        assign b_bypass_data_unreg   = a_internal_writedata;

        //if the output data is registered, the logic above serves as next state logic for the registered version, but now also need to factor in the output clock enable
        always_ff @(posedge clock) begin
            if (b_out_clock_en) begin
                b_bypass_enable_reg <= b_bypass_enable_unreg;
                b_bypass_data_reg   <= b_bypass_data_unreg;
            end
        end

        //select between registered or unregistered output
        assign b_bypass_enable = (REGISTER_B_READDATA) ? b_bypass_enable_reg : b_bypass_enable_unreg;
        assign b_bypass_data   = (REGISTER_B_READDATA) ? b_bypass_data_reg   : b_bypass_data_unreg;

        //adjust the read data if we have a mixed port read during write
        always_comb begin
            for (int i=0; i<BE_WIDTH; i++) begin : GEN_RANDOM_BLOCK_NAME_R103
                b_readdata[i*BITS_PER_ENABLE+:BITS_PER_ENABLE] = (b_bypass_enable[i]) ? b_bypass_data[i*BITS_PER_ENABLE+:BITS_PER_ENABLE] : q_b[i*BITS_PER_ENABLE+:BITS_PER_ENABLE];
            end
        end
    end
    else begin
        assign b_readdata = q_b;
    end
    endgenerate



    /////////////////////////////////
    //  altera_syncram parameters  //
    /////////////////////////////////

    localparam int BYTE_SIZE                    = (BE_WIDTH == 1) ? 0 : BITS_PER_ENABLE;
    localparam     RAM_BLOCK_TYPE               = (DEVICE_FAMILY == "Cyclone V" || DEVICE_FAMILY == "Arria V") ? "M10K" : "M20K";
    localparam     INTENDED_DEVICE_FAMILY       = DEVICE_FAMILY;
    localparam     OUTDATA_REG                  = (REGISTER_B_READDATA) ? ((USE_ENABLE) ? "CLOCK1" : "CLOCK0") : "UNREGISTERED";
    localparam     CLOCK_ENABLE_OUTPUT          = (USE_ENABLE && REGISTER_B_READDATA) ? "NORMAL" : "BYPASS";
    localparam     MIXED_PORT_READ_DURING_WRITE = (READ_DURING_WRITE == "DONT_CARE") ? "DONT_CARE" : "OLD_DATA";
    localparam     POWER_UP_UNINITIALIZED       = (USE_MEM_INIT_FILE || ZERO_INITIALIZE_MEM) ? "FALSE" : "TRUE";
    localparam     MEM_INIT_FILE                = (USE_MEM_INIT_FILE) ? MEM_INIT_FILE_NAME : "UNUSED";



    ///////////////////////////////
    //  altera_syncram instance  //
    ///////////////////////////////

    altera_syncram
    #(
        //fundamentals
        .lpm_type                           ("altera_syncram"),
        .ram_block_type                     (RAM_BLOCK_TYPE),
        .intended_device_family             (INTENDED_DEVICE_FAMILY),
        .operation_mode                     ("DUAL_PORT"),

        //clocking
        .address_reg_b                      ("CLOCK0"),
        .outdata_reg_b                      (OUTDATA_REG),

        //clock enables
        .clock_enable_input_a               ("BYPASS"),
        .clock_enable_input_b               ("BYPASS"),
        .clock_enable_output_b              (CLOCK_ENABLE_OUTPUT),

        //reset is not used
        .address_aclr_b                     ("NONE"),
        .outdata_aclr_b                     ("NONE"),
        .outdata_sclr_b                     ("NONE"),

        //size of the memory
        .widthad_a                          (ADDR),             //bit width of the address
        .widthad_b                          (ADDR),
        .numwords_a                         (DEPTH),            //number of words
        .numwords_b                         (DEPTH),
        .width_a                            (WIDTH),            //width of the write data and read data signals
        .width_b                            (WIDTH),
        .width_byteena_a                    (BE_WIDTH),         //width of the byte enable signal
        .byte_size                          (BYTE_SIZE),

        //limit the depth of the memory to ensure access to all 20k bits
        .maximum_depth                      (MAXIMUM_DEPTH),

        //mixed port read during write
        .read_during_write_mode_mixed_ports (MIXED_PORT_READ_DURING_WRITE),

        //hardened error correction code
        .enable_ecc                         ("FALSE"),

        //memory initialization
        .power_up_uninitialized             (POWER_UP_UNINITIALIZED),
        .init_file                          (MEM_INIT_FILE)
    )
    altera_syncram_inst
    (
        //clock
        .clock0                             (clock0),
        .clock1                             (clock1),

        //no reset
        .aclr0                              (1'b0),
        .aclr1                              (1'b0),
        .sclr                               (1'b0),

        //port a
        .address_a                          (address_a),
        .addressstall_a                     (1'b0),
        .byteena_a                          (byteena_a),
        .data_a                             (data_a),
        .wren_a                             (wren_a),
        .q_a                                (),
        .rden_a                             (1'b1),

        //port b
        .address_b                          (address_b),
        .addressstall_b                     (addressstall_b),
        .byteena_b                          (1'b1),
        .data_b                             ({WIDTH{1'b1}}),
        .wren_b                             (1'b0),
        .q_b                                (q_b),
        .rden_b                             (1'b1),

        //shared
        .clocken0                           (1'b1),
        .clocken1                           (clocken1),

        //unused stuff which was intended for quad port ram
        .address2_a                         (1'b1),
        .address2_b                         (1'b1),
        .clocken2                           (1'b1),
        .clocken3                           (1'b1),

        //error correction codes
        .eccencbypass                       (1'b0),
        .eccencparity                       (8'b0),
        .eccstatus                          ()
    );

endmodule

`default_nettype wire
