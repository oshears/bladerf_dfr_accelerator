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


`default_nettype none

module acl_mem1x #(
    parameter  int DEPTH_WORDS = 1,                         //number of words of memory
    parameter  int WIDTH = 32,                              //width of the data bus, both read and write data
    parameter  int MEM_LATENCY = 3,                         //read latency, first 2 pipeline stages go to hld_ram, remaining is split before and after hld_ram evenly (if odd then before takes the extra one)
    parameter      RDW_MODE = "DONT_CARE",                  //mixed port read during write, legal values are: "DONT_CARE", "OLD_DATA", "NEW_DATA"
    parameter      RAM_OPERATION_MODE = "BIDIR_DUAL_PORT",  //choose from simple dual port or true dual port, respectively the legal values are: "DUAL_PORT", "BIDIR_DUAL_PORT"
    parameter      RAM_BLOCK_TYPE = "AUTO",                 //hld_ram (not Quartus) will choose if you set this "AUTO", otherwise can explicitly ask for "MLAB" or "M20K"
    parameter      INTENDED_DEVICE_FAMILY = "Arria 10",     //legal values are determined by what hld_ram supports: "Cyclone 10 GX", "Arria 10", "Stratix 10", "Agilex"
    parameter  int ENABLED = 0,                             //avs_port1_enable and avs_port2_enable are treated as 1 if ENABLED = 0, otherwise all registers for each port are clock enabled
    parameter  bit MINIMIZE_MEMORY_USAGE = 0,               //indicates whether hld_ram should minimize memory usage. Default is 0 to to avoid fmax implications.
    parameter      MIF_FILE = "UNUSED",                     //memory initialization file name
    parameter  bit ASYNC_RESET = 1,                         //how do registers CONSUME reset, 1 = asynchronously, 0 = synchronously, no other registers consume reset
    parameter  bit SYNCHRONIZE_RESET = 0,                   //should reset be synchronized BEFORE it is consumed by registers, 1 = synchronize it, 0 = no change to reset before consumption
    parameter      enable_ecc = "FALSE",                    //whether or not to use error corrrection codes, legal values are "TRUE" or "FALSE"
    parameter  int USE_BYTEENA = 0,                         //indicate whether byte enables are used
    
    //derived parameters
    parameter int ADDR = $clog2(DEPTH_WORDS),              //width of the address signal
    parameter int BE_WIDTH = WIDTH / 8                     //width of the byte enable signal

) (
    input  wire                 clk,
    input  wire                 resetn,
    output logic          [1:0] ecc_err_status,             //error correction code status, only valid if enable_ecc = "TRUE"
    
    //port1
    input  wire                 avs_port1_enable,           //only if ENABLED=1, this acts as a clock enable for all registers on port1
    input  wire     [WIDTH-1:0] avs_port1_writedata,        //write data
    input  wire  [BE_WIDTH-1:0] avs_port1_byteenable,       //only if USE_BYTEENA=1, this is the byte enable, if USE_BYTEENA=0 then we assume a write affects all bytes
    input  wire      [ADDR-1:0] avs_port1_address,          //address for both read and write on port 1
    input  wire                 avs_port1_read,             //read request, internally if not writing then always reading, this signal is only used to assert readdatavalid in MEM_LATENCY clock cycles after the read request
    input  wire                 avs_port1_write,            //write enable
    output logic    [WIDTH-1:0] avs_port1_readdata,         //read data
    output logic                avs_port1_readdatavalid,    //indicates that there is valid read data
    output logic                avs_port1_waitrequest,      //no backpressure, tied to 0
    
    //port2
    input  wire                 avs_port2_enable,           //signals have the same meaning as port1
    input  wire     [WIDTH-1:0] avs_port2_writedata,
    input  wire  [BE_WIDTH-1:0] avs_port2_byteenable,
    input  wire      [ADDR-1:0] avs_port2_address,
    input  wire                 avs_port2_read,
    input  wire                 avs_port2_write,
    output logic    [WIDTH-1:0] avs_port2_readdata,
    output logic                avs_port2_readdatavalid,
    output logic                avs_port2_waitrequest
);
    ///////////////////////////////////////
    // Parameter checking
    //
    // Generate an error if any illegal parameter settings or combinations are used
    ///////////////////////////////////////
    initial /* synthesis enable_verilog_initial_construct */
    begin
        if (ADDR != $clog2(DEPTH_WORDS))
            $fatal(1, "Illegal parameteriazation, ADDR must be not be specified when instantiating this module, it must be left at its default value");
        
        if (BE_WIDTH != WIDTH / 8)
            $fatal(1, "Illegal parameteriazation, BE_WIDTH must be not be specified when instantiating this module, it must be left at its default value");
    end

    //tie off unused signals
    assign avs_port1_waitrequest = 1'b0;
    assign avs_port2_waitrequest = 1'b0;
    
    
    
    /////////////
    //  Reset  //
    /////////////
    
    logic aclrn, sclrn, resetn_synchronized;
    acl_reset_handler
    #(
        .ASYNC_RESET            (ASYNC_RESET),
        .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
        .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
        .PIPE_DEPTH             (3),
        .NUM_COPIES             (1) 
    )
    acl_reset_handler_inst
    (
        .clk                    (clk),
        .i_resetn               (resetn),
        .o_aclrn                (aclrn),
        .o_resetn_synchronized  (resetn_synchronized),
        .o_sclrn                (sclrn)
    );
    
    
    
    ////////////////////////////
    //  Allocate MEM_LATENCY  //
    ////////////////////////////
    
    //first 2 pipeline stages go to hld_ram, remaining is split before and after hld_ram evenly (if odd then before takes the extra one)
    localparam int HLD_RAM_LATENCY = (MEM_LATENCY == 1) ? 1 : 2;
    localparam int REMAINING_LATENCY = MEM_LATENCY - HLD_RAM_LATENCY;
    localparam int BACK_LATENCY = REMAINING_LATENCY / 2;
    localparam int FRONT_LATENCY = REMAINING_LATENCY - BACK_LATENCY;
    
    genvar g_port, g_latency;
    localparam int NUM_PORTS = 2;   //DO NOT MODIFY
    
    
    
    ////////////////////////////////////////////////////
    //  Map the parameters of acl_mem1x into hld_ram  //
    ////////////////////////////////////////////////////
    
    //geometry configuration
    localparam int HLD_RAM_DEPTH = DEPTH_WORDS;
    localparam int HLD_RAM_WIDTH = WIDTH;
    localparam int HLD_RAM_BE_WIDTH = (USE_BYTEENA) ? BE_WIDTH : 1;
    
    //geometry constants
    localparam bit HLD_RAM_MINIMIZE_MEMORY_USAGE = MINIMIZE_MEMORY_USAGE;
    localparam int HLD_RAM_SIM_ONLY_MIN_PHYSICAL_DEPTH = 0;
    
    //memory initialization
    localparam bit HLD_RAM_USE_MEM_INIT_FILE = (MIF_FILE != "UNUSED");
    localparam bit HLD_RAM_ZERO_INITIALIZE_MEM = 1;
    localparam     HLD_RAM_MEM_INIT_NAME = MIF_FILE;
    
    //error correction codes
    localparam bit HLD_RAM_ENABLE_ECC = (enable_ecc == "TRUE") ? 1 : 0;
    localparam bit HLD_RAM_ECC_STATUS_TIME_STRETCH = 1;
    localparam bit HLD_RAM_ASYNC_RESET = ASYNC_RESET;
    localparam     HLD_RAM_SYNCHRONIZE_RESET = 0;
    
    //memory configuration
    localparam     HLD_RAM_RAM_BLOCK_TYPE = (RAM_BLOCK_TYPE == "M20K" || RAM_BLOCK_TYPE == "MLAB") ? RAM_BLOCK_TYPE : "HLD_RAM_TO_CHOOSE";
    localparam     HLD_RAM_RAM_OPERATION_MODE = (RAM_OPERATION_MODE == "BIDIR_DUAL_PORT") ? "TRUE_DUAL_PORT" : "SIMPLE_DUAL_PORT";
    localparam     HLD_RAM_DEVICE_FAMILY = INTENDED_DEVICE_FAMILY;
    localparam     HLD_RAM_READ_DURING_WRITE = RDW_MODE;
    localparam bit HLD_RAM_REGISTER_A_READDATA = (HLD_RAM_LATENCY == 2) ? 1 : 0;
    localparam bit HLD_RAM_REGISTER_B_ADDRESS = 1;
    localparam bit HLD_RAM_REGISTER_B_READDATA = (HLD_RAM_LATENCY == 2) ? 1 : 0;
    
    //try to use memory hardened logic
    localparam bit HLD_RAM_USE_ENABLE = (ENABLED) ? 1 : 0;
    localparam bit HLD_RAM_COMMON_IN_CLOCK_EN = (ENABLED) ? 0 : 1;
    localparam bit HLD_RAM_COMMON_OUT_CLOCK_EN = (ENABLED) ? 0 : 1;
    
    
    
    
    /////////////////////
    //  Clock enables  //
    /////////////////////
    
    //one clock enable per port
    logic clock_enable [NUM_PORTS:1];
    assign clock_enable[1] = (ENABLED) ? avs_port1_enable : 1'b1;
    assign clock_enable[2] = (ENABLED) ? avs_port2_enable : 1'b1;
    
    
    
    ///////////////////////////////////////////////
    //  Input side pipelining for extra latency  //
    ///////////////////////////////////////////////
    
    //pipelined signals
    logic [ADDR+WIDTH+BE_WIDTH-1:0] pipe_cmd     [NUM_PORTS:1][FRONT_LATENCY:0];    //no reset, bundle together address, writedata, and byteenable to reduce code duplication
    logic                           pipe_write   [NUM_PORTS:1][FRONT_LATENCY:0];    //reset the entire pipeline
    
    //signals that connect to hld_ram (except for byteen_raw)
    logic                [ADDR-1:0] address      [NUM_PORTS:1];
    logic               [WIDTH-1:0] writedata    [NUM_PORTS:1];
    logic            [BE_WIDTH-1:0] byteen_raw   [NUM_PORTS:1];
    logic    [HLD_RAM_BE_WIDTH-1:0] byteenable   [NUM_PORTS:1];
    logic                           write        [NUM_PORTS:1];
    logic               [WIDTH-1:0] readdata_ram [NUM_PORTS:1];
    
    generate
    always_comb begin
        pipe_cmd[1][0] = {avs_port1_address, avs_port1_writedata, avs_port1_byteenable};
        pipe_cmd[2][0] = {avs_port2_address, avs_port2_writedata, avs_port2_byteenable};
        pipe_write[1][0] = avs_port1_write;
        pipe_write[2][0] = avs_port2_write;
    end
    for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R31
        for (g_latency=1; g_latency<=FRONT_LATENCY; g_latency++) begin : GEN_RANDOM_BLOCK_NAME_R32
            always_ff @(posedge clk) begin
                if (clock_enable[g_port]) pipe_cmd[g_port][g_latency] <= pipe_cmd[g_port][g_latency-1];
            end
            always_ff @(posedge clk or negedge aclrn) begin
                if (~aclrn) pipe_write[g_port][g_latency] <= 1'b0;
                else begin
                    if (clock_enable[g_port]) pipe_write[g_port][g_latency] <= pipe_write[g_port][g_latency-1];
                    if (~sclrn) pipe_write[g_port][g_latency] <= 1'b0;
                end
            end
        end
        assign {address[g_port], writedata[g_port], byteen_raw[g_port]} = pipe_cmd[g_port][FRONT_LATENCY];
        assign byteenable[g_port] = (USE_BYTEENA) ? byteen_raw[g_port] : 1'b1;
        assign write[g_port] = pipe_write[g_port][FRONT_LATENCY];
    end
    endgenerate
    
    
    
    ///////////////////////
    //  Memory instance  //
    ///////////////////////

    hld_ram
    #(
        .DEPTH                          (HLD_RAM_DEPTH),
        .WIDTH                          (HLD_RAM_WIDTH),
        .BE_WIDTH                       (HLD_RAM_BE_WIDTH),
        .MINIMIZE_MEMORY_USAGE          (HLD_RAM_MINIMIZE_MEMORY_USAGE),
        .SIM_ONLY_MIN_PHYSICAL_DEPTH    (HLD_RAM_SIM_ONLY_MIN_PHYSICAL_DEPTH),
        .USE_MEM_INIT_FILE              (HLD_RAM_USE_MEM_INIT_FILE),
        .ZERO_INITIALIZE_MEM            (HLD_RAM_ZERO_INITIALIZE_MEM),
        .MEM_INIT_NAME                  (HLD_RAM_MEM_INIT_NAME),
        .ENABLE_ECC                     (HLD_RAM_ENABLE_ECC),
        .ECC_STATUS_TIME_STRETCH        (HLD_RAM_ECC_STATUS_TIME_STRETCH),
        .ASYNC_RESET                    (HLD_RAM_ASYNC_RESET),
        .SYNCHRONIZE_RESET              (HLD_RAM_SYNCHRONIZE_RESET),
        .RAM_BLOCK_TYPE                 (HLD_RAM_RAM_BLOCK_TYPE),
        .RAM_OPERATION_MODE             (HLD_RAM_RAM_OPERATION_MODE),
        .DEVICE_FAMILY                  (HLD_RAM_DEVICE_FAMILY),
        .READ_DURING_WRITE              (HLD_RAM_READ_DURING_WRITE),
        .REGISTER_A_READDATA            (HLD_RAM_REGISTER_A_READDATA),
        .REGISTER_B_ADDRESS             (HLD_RAM_REGISTER_B_ADDRESS),
        .REGISTER_B_READDATA            (HLD_RAM_REGISTER_B_READDATA),
        .USE_ENABLE                     (HLD_RAM_USE_ENABLE),
        .COMMON_IN_CLOCK_EN             (HLD_RAM_COMMON_IN_CLOCK_EN),
        .COMMON_OUT_CLOCK_EN            (HLD_RAM_COMMON_OUT_CLOCK_EN)
    )
    hld_ram_inst
    (
        .clock                          (clk),
        .resetn                         (resetn_synchronized),
        .ecc_err_status                 (ecc_err_status),
        .a_address                      (address[1]),
        .a_write                        (write[1]),
        .a_writedata                    (writedata[1]),
        .a_byteenable                   (byteenable[1]),
        .a_readdata                     (readdata_ram[1]),
        .a_in_clock_en                  (clock_enable[1]),
        .a_out_clock_en                 (RDW_MODE=="OLD_DATA" ? 1'b1 : clock_enable[1]),    // for old data mode, the output registers must always be enabled so we don't lose data generated when we read and write to the same address at the same time
        .b_address                      (address[2]),
        .b_write                        (write[2]),
        .b_writedata                    (writedata[2]),
        .b_byteenable                   (byteenable[2]),
        .b_readdata                     (readdata_ram[2]),
        .b_in_clock_en                  (clock_enable[2]),
        .b_out_clock_en                 (RDW_MODE=="OLD_DATA" ? 1'b1 : clock_enable[2])     // for old data mode, the output registers must always be enabled so we don't lose data generated when we read and write to the same address at the same time
    );


    ///////////////////////////////////////////////////////////////////////////////////////
    //  Staging registers to capture output data when Enables are used with OLD_DATA mode//
    ///////////////////////////////////////////////////////////////////////////////////////

    // When a read and write happen to the same address on the same cycle, and we want OLD_DATA mode (so we want the data that was in the memory BEFORE the new write),
    // and we are using the 'enable' signal, things get complicated.  With NEW_DATA mode we have no problem, because the write can be allowed to happen and then we
    // can read the new data later.  With OLD_DATA mode, once the write has been committed to the memory, the old data is lost.  So we need to 'catch' this old data as
    // it comes out of the RAM and hold onto it until the enable signal is re-asserted and then we release it.  This is done with staging registers (one or two depending
    // on the latency through the RAM).
    
    // signals for implementing the staging registers to 'catch' read data when enable is low
    logic               [WIDTH-1:0] readdata    [NUM_PORTS:1];

    generate
        if (ENABLED && (RDW_MODE == "OLD_DATA")) begin  // only require extra registers for the 'old data' case, when new data mode is used the enables to the RAM internal registers are adequate for proper operation

            // delayed versions of enable signal (simple shift register which is not itself enabled)
            logic [NUM_PORTS:1][1:HLD_RAM_LATENCY] clock_enable_dly;
            always_ff @(posedge clk or negedge aclrn) begin
                if (!aclrn) begin
                    clock_enable_dly <= '1;
                end else begin

                    for (int port_num=1; port_num<=NUM_PORTS; port_num++) begin : GEN_RANDOM_BLOCK_NAME_R33
                        clock_enable_dly[port_num][1] <= clock_enable[port_num];
                        for (int i=2; i<=HLD_RAM_LATENCY; i++) begin : GEN_RANDOM_BLOCK_NAME_R34
                            clock_enable_dly[port_num][i] <= clock_enable_dly [port_num][i-1];
                        end
                    end

                    if (!sclrn) begin
                        clock_enable_dly <= '1;
                    end
                
                end
            end

            // first staging reg, used regardless of latency through the ram

            logic [NUM_PORTS:1][HLD_RAM_WIDTH-1:0] readdata_sr1;        // data out of the first staging register
            logic [NUM_PORTS:1] valid_out_sr1;
            logic [NUM_PORTS:1] stall_in_sr1;

            for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R35
            
                acl_staging_reg #(
                    .WIDTH              (HLD_RAM_WIDTH),
                    .ASYNC_RESET        (ASYNC_RESET),
                    .SYNCHRONIZE_RESET  ('0)
                ) first_staging_reg (
                    .clk        ( clk ),
                    .reset      ( !resetn_synchronized ),
                    .i_data     ( readdata_ram[g_port] ),
                    .i_valid    ( clock_enable_dly[g_port][HLD_RAM_LATENCY] ),  // if enable was asserted HLD_RAM_LATENCY clock cycles ago, we have to 'catch' the data that comes out of the RAM
                    .o_stall    (  ),                                           // not used, we can't ever backpressure, must have enough capacity to 'catch' all read data
                    .o_data     ( readdata_sr1[g_port] ),
                    .o_valid    ( valid_out_sr1[g_port] ),
                    .i_stall    ( stall_in_sr1[g_port] )
                );

            end

            // only need a second staging register if delay through RAM is 2
            if (HLD_RAM_LATENCY > 1) begin

                for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R36
                
                    acl_staging_reg #(
                        .WIDTH              (HLD_RAM_WIDTH),
                        .ASYNC_RESET        (ASYNC_RESET),
                        .SYNCHRONIZE_RESET  ('0)
                    ) second_staging_reg (
                        .clk        ( clk ),
                        .reset      ( !resetn_synchronized ),
                        .i_data     ( readdata_sr1[g_port] ),
                        .i_valid    ( valid_out_sr1[g_port] ),
                        .o_stall    ( stall_in_sr1[g_port] ),
                        .o_data     ( readdata[g_port] ),
                        .o_valid    (  ),
                        .i_stall    ( !clock_enable[g_port] )
                    );

                end

            end else begin          // only one staging register required

                for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R37
                    assign readdata[g_port] = readdata_sr1[g_port];
                    assign stall_in_sr1[g_port] = !clock_enable[g_port];
                end

            end

        end else begin    // If not enabled or not using OLD_DATA mode, pass the read data from the RAM straight through to the output

            for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R38
                assign readdata[g_port] = readdata_ram[g_port];
            end

        end
    endgenerate

    
    
    ////////////////////////////////////////////////
    //  Output side pipelining for extra latency  //
    ////////////////////////////////////////////////
    
    //pipeline the output signal readdata, no reset
    logic [WIDTH-1:0] pipe_rsp [NUM_PORTS:1][BACK_LATENCY:0];
    
    generate
    for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R39
        assign pipe_rsp[g_port][0] = readdata[g_port];
        for (g_latency=1; g_latency<=BACK_LATENCY; g_latency++) begin : GEN_RANDOM_BLOCK_NAME_R40
            always_ff @(posedge clk) begin
                if (clock_enable[g_port]) pipe_rsp[g_port][g_latency] <= pipe_rsp[g_port][g_latency-1];
            end
        end
    end
    always_comb begin
        avs_port1_readdata = pipe_rsp[1][BACK_LATENCY];
        avs_port2_readdata = pipe_rsp[2][BACK_LATENCY];
    end
    endgenerate
    
    
    
    ////////////////////////////////
    //  Readdatavalid pipelining  //
    ////////////////////////////////
    
    //pipeline the readdatavalid signal, which goes around hld_ram instead of through it
    //reset is used, the entire pipeline is reset
    logic pipe_read [NUM_PORTS:1][MEM_LATENCY:0];
    
    generate
    always_comb begin
        pipe_read[1][0] = avs_port1_read;
        pipe_read[2][0] = avs_port2_read;
    end
    for (g_port=1; g_port<=NUM_PORTS; g_port++) begin : GEN_RANDOM_BLOCK_NAME_R41
        for (g_latency=1; g_latency<=MEM_LATENCY; g_latency++) begin : GEN_RANDOM_BLOCK_NAME_R42
            always_ff @(posedge clk or negedge aclrn) begin
                if (~aclrn) pipe_read[g_port][g_latency] <= 1'b0;
                else begin
                    if (clock_enable[g_port]) pipe_read[g_port][g_latency] <= pipe_read[g_port][g_latency-1];
                    if (~sclrn) pipe_read[g_port][g_latency] <= 1'b0;
                end
            end
        end
    end
    always_comb begin
        avs_port1_readdatavalid = pipe_read[1][MEM_LATENCY];
        avs_port2_readdatavalid = pipe_read[2][MEM_LATENCY];
    end
    endgenerate
    
endmodule

`default_nettype wire
