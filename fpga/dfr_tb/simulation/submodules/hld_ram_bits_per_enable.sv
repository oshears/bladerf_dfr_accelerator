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

//this layer resizes the data and byte enable signals to match what the physical implementation supports

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_bits_per_enable #(
    //geometry configuration
    parameter  int DEPTH,
    parameter  int WIDTH,
    parameter  int BE_WIDTH,

    //geometry constants
    parameter  bit MINIMIZE_MEMORY_USAGE,
    parameter  int MIN_PHYSICAL_DEPTH,

    //memory initialization
    parameter  bit USE_MEM_INIT_FILE,
    parameter  bit ZERO_INITIALIZE_MEM,
    parameter      MEM_INIT_NAME,

    //memory configuration
    parameter      RAM_BLOCK_TYPE,
    parameter      RAM_OPERATION_MODE,
    parameter      DEVICE_FAMILY,
    parameter      READ_DURING_WRITE,
    parameter  bit REGISTER_A_READDATA,
    parameter  bit REGISTER_B_ADDRESS,
    parameter  bit REGISTER_B_READDATA,

    //try to use memory hardened logic
    parameter  bit USE_ENABLE,
    parameter  bit COMMON_IN_CLOCK_EN,
    parameter  bit COMMON_OUT_CLOCK_EN,

    //this should be a localparam but Quartus standard doesn't support it, leave as a parameter but don't override when instantiating
    parameter  int ADDR = $clog2(DEPTH)
) (
    input  wire                 clock,
    //no reset

    //port a
    input  wire      [ADDR-1:0] a_address,
    input  wire                 a_write,
    input  wire     [WIDTH-1:0] a_writedata,
    input  wire  [BE_WIDTH-1:0] a_byteenable,
    output logic    [WIDTH-1:0] a_readdata,
    input  wire                 a_in_clock_en,
    input  wire                 a_out_clock_en,

    //port b
    input  wire      [ADDR-1:0] b_address,
    input  wire                 b_write,
    input  wire     [WIDTH-1:0] b_writedata,
    input  wire  [BE_WIDTH-1:0] b_byteenable,
    output logic    [WIDTH-1:0] b_readdata,
    input  wire                 b_in_clock_en,
    input  wire                 b_out_clock_en
);

    ///////////////////////
    //  Legality checks  //
    ///////////////////////

    //ensure ADDR value is as expected (supposed to be a localparam but Quartus standard doesn't support it)
    `ACL_PARAMETER_ASSERT(ADDR == $clog2(DEPTH))

    //width / be_width must divide evenly with no remainder
    `ACL_PARAMETER_ASSERT(WIDTH % BE_WIDTH == 0)



    //this is the physical bits per enable supported by all of M10K, M20K and MLAB
    //although may instantiate altdpram with bits per enable = 5, it uses twice the number of MLABs, which suggests that only 5 out of every 10 physical bits of storage are actually used
    localparam int PHYSICAL_BITS_PER_ENABLE = 10;

    //for every logical byte enable signal, determine how many physical byte enable signals it drives and how many bits of physical storage it controls
    //for example, if LOGICAL_BITS_PER_ENABLE = 32, the fewest number of 10 bit sections we need is 4, so each logical enable drives 4 physical byte enable signals, and we use 40 bits of physical storage
    localparam int LOGICAL_BITS_PER_ENABLE = WIDTH / BE_WIDTH;
    localparam int PHYSICAL_ENABLES_PER_LOGICAL_ENABLE = (LOGICAL_BITS_PER_ENABLE + PHYSICAL_BITS_PER_ENABLE - 1) / PHYSICAL_BITS_PER_ENABLE;   //this is the 4 in the above example
    localparam int PHYSICAL_STORAGE_PER_LOGICAL_ENABLE = PHYSICAL_ENABLES_PER_LOGICAL_ENABLE * PHYSICAL_BITS_PER_ENABLE;                        //this is the 40 in the above example

    //width of the physical byte enable and data signals
    localparam int PHYSICAL_BE_WIDTH = PHYSICAL_ENABLES_PER_LOGICAL_ENABLE * BE_WIDTH;
    localparam int PHYSICAL_WIDTH = PHYSICAL_STORAGE_PER_LOGICAL_ENABLE * BE_WIDTH;

    //decide the next instantiation layer to use
    localparam bit USE_SHORT_DEPTH_STITCH = MINIMIZE_MEMORY_USAGE && (RAM_BLOCK_TYPE != "MLAB");



    logic [PHYSICAL_WIDTH-1:0] physical_a_writedata, physical_b_writedata;
    logic [PHYSICAL_BE_WIDTH-1:0] physical_a_byteenable, physical_b_byteenable;
    logic [PHYSICAL_WIDTH-1:0] physical_a_readdata, physical_b_readdata;

    always_comb begin
        for (int i=0; i<BE_WIDTH; i++) begin : GEN_RANDOM_BLOCK_NAME_R99
            physical_a_byteenable[PHYSICAL_ENABLES_PER_LOGICAL_ENABLE*i +: PHYSICAL_ENABLES_PER_LOGICAL_ENABLE] = {PHYSICAL_ENABLES_PER_LOGICAL_ENABLE{a_byteenable[i]}};
            physical_b_byteenable[PHYSICAL_ENABLES_PER_LOGICAL_ENABLE*i +: PHYSICAL_ENABLES_PER_LOGICAL_ENABLE] = {PHYSICAL_ENABLES_PER_LOGICAL_ENABLE{b_byteenable[i]}};

            physical_a_writedata[PHYSICAL_STORAGE_PER_LOGICAL_ENABLE*i +: PHYSICAL_STORAGE_PER_LOGICAL_ENABLE] = a_writedata[LOGICAL_BITS_PER_ENABLE*i +: LOGICAL_BITS_PER_ENABLE];
            physical_b_writedata[PHYSICAL_STORAGE_PER_LOGICAL_ENABLE*i +: PHYSICAL_STORAGE_PER_LOGICAL_ENABLE] = b_writedata[LOGICAL_BITS_PER_ENABLE*i +: LOGICAL_BITS_PER_ENABLE];

            a_readdata[LOGICAL_BITS_PER_ENABLE*i +: LOGICAL_BITS_PER_ENABLE] = physical_a_readdata[PHYSICAL_STORAGE_PER_LOGICAL_ENABLE*i +: PHYSICAL_STORAGE_PER_LOGICAL_ENABLE];
            b_readdata[LOGICAL_BITS_PER_ENABLE*i +: LOGICAL_BITS_PER_ENABLE] = physical_b_readdata[PHYSICAL_STORAGE_PER_LOGICAL_ENABLE*i +: PHYSICAL_STORAGE_PER_LOGICAL_ENABLE];
        end
    end



    //imitate the query functions in the software model
    // synthesis translate_off
    int NUM_PHYSICAL_M10K, NUM_PHYSICAL_M20K, NUM_PHYSICAL_MLAB;
    // synthesis translate_on


    generate
    if (USE_SHORT_DEPTH_STITCH) begin : GEN_SHORT_DEPTH_STITCH
        hld_ram_short_depth_stitch
        #(
            .DEPTH                  (DEPTH),
            .WIDTH                  (PHYSICAL_WIDTH),           //changed
            .BE_WIDTH               (PHYSICAL_BE_WIDTH),        //changed
            .BITS_PER_ENABLE        (LOGICAL_BITS_PER_ENABLE),  //created at this layer
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (MEM_INIT_NAME),
            .RAM_BLOCK_TYPE         (RAM_BLOCK_TYPE),
            .RAM_OPERATION_MODE     (RAM_OPERATION_MODE),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .REGISTER_A_READDATA    (REGISTER_A_READDATA),
            .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .COMMON_OUT_CLOCK_EN    (COMMON_OUT_CLOCK_EN)
        )
        hld_ram_short_depth_stitch_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (physical_a_writedata),     //changed
            .a_byteenable           (physical_a_byteenable),    //changed
            .a_readdata             (physical_a_readdata),      //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (b_address),
            .b_write                (b_write),
            .b_writedata            (physical_b_writedata),     //changed
            .b_byteenable           (physical_b_byteenable),    //changed
            .b_readdata             (physical_b_readdata),      //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign NUM_PHYSICAL_M10K = hld_ram_short_depth_stitch_inst.NUM_PHYSICAL_M10K;
        assign NUM_PHYSICAL_M20K = hld_ram_short_depth_stitch_inst.NUM_PHYSICAL_M20K;
        assign NUM_PHYSICAL_MLAB = hld_ram_short_depth_stitch_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    else begin : GEN_LOWER
        hld_ram_lower
        #(
            .DEPTH                  (DEPTH),
            .WIDTH                  (PHYSICAL_WIDTH),           //changed
            .BE_WIDTH               (PHYSICAL_BE_WIDTH),        //changed
            .BITS_PER_ENABLE        (LOGICAL_BITS_PER_ENABLE),  //created at this layer
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (MEM_INIT_NAME),
            .RAM_BLOCK_TYPE         (RAM_BLOCK_TYPE),
            .RAM_OPERATION_MODE     (RAM_OPERATION_MODE),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .REGISTER_A_READDATA    (REGISTER_A_READDATA),
            .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .COMMON_OUT_CLOCK_EN    (COMMON_OUT_CLOCK_EN)
        )
        hld_ram_lower_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (physical_a_writedata),     //changed
            .a_byteenable           (physical_a_byteenable),    //changed
            .a_readdata             (physical_a_readdata),      //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (b_address),
            .b_write                (b_write),
            .b_writedata            (physical_b_writedata),     //changed
            .b_byteenable           (physical_b_byteenable),    //changed
            .b_readdata             (physical_b_readdata),      //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign NUM_PHYSICAL_M10K = hld_ram_lower_inst.NUM_PHYSICAL_M10K;
        assign NUM_PHYSICAL_M20K = hld_ram_lower_inst.NUM_PHYSICAL_M20K;
        assign NUM_PHYSICAL_MLAB = hld_ram_lower_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    endgenerate


endmodule

`default_nettype wire
