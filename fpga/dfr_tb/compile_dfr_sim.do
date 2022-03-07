# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

# if ![info exists TOP_LEVEL_NAME] { 
#   set TOP_LEVEL_NAME "dfr"
# }

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./simulation"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/home/oshears/software/intelFPGA/21.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d434_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d435_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d436_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d437_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d440_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d441_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d442_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d445_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000d446_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000848_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000852_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000855_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000858_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d434_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d435_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d436_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d437_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d440_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d441_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d442_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d445_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d446_lnTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001848_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001852_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001855_expTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001858_expTables_lutmem.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*Intel*FPGA*" [ vsim -version ] ] {
ensure_lib                       ./libraries/altera_ver/           
vmap       altera_ver            ./libraries/altera_ver/           
ensure_lib                       ./libraries/lpm_ver/              
vmap       lpm_ver               ./libraries/lpm_ver/              
ensure_lib                       ./libraries/sgate_ver/            
vmap       sgate_ver             ./libraries/sgate_ver/            
ensure_lib                       ./libraries/altera_mf_ver/        
vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
ensure_lib                       ./libraries/altera_lnsim_ver/     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
ensure_lib                       ./libraries/cyclonev_ver/         
vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
ensure_lib                       ./libraries/cyclonev_hssi_ver/    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
ensure_lib                       ./libraries/altera/               
vmap       altera                ./libraries/altera/               
ensure_lib                       ./libraries/lpm/                  
vmap       lpm                   ./libraries/lpm/                  
ensure_lib                       ./libraries/sgate/                
vmap       sgate                 ./libraries/sgate/                
ensure_lib                       ./libraries/altera_mf/            
vmap       altera_mf             ./libraries/altera_mf/            
ensure_lib                       ./libraries/altera_lnsim/         
vmap       altera_lnsim          ./libraries/altera_lnsim/         
ensure_lib                       ./libraries/cyclonev/             
vmap       cyclonev              ./libraries/cyclonev/             
ensure_lib                       ./libraries/cyclonev_hssi/        
vmap       cyclonev_hssi         ./libraries/cyclonev_hssi/        
}
ensure_lib                   ./libraries/dfr_internal_inst/
vmap       dfr_internal_inst ./libraries/dfr_internal_inst/

# ----------------------------------------
# Compile device library files
if ![ string match "*Intel*FPGA*" [ vsim -version ] ] {
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                     -work altera_ver           
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                              -work lpm_ver              
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                 -work sgate_ver            
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                             -work altera_mf_ver        
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                         -work altera_lnsim_ver     
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                        -work cyclonev_ver         
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                   -work cyclonev_hssi_ver    
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"               -work cyclonev_pcie_hip_ver
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"               -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"           -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"              -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"           -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"        -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                   -work altera               
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                             -work lpm                  
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                            -work lpm                  
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                          -work sgate                
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                               -work sgate                
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                -work altera_mf            
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                           -work altera_mf            
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"         -work altera_lnsim         
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"             -work altera_lnsim         
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"          -work cyclonev             
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                      -work cyclonev             
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                 -work cyclonev             
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_components.vhd"            -work cyclonev_hssi        
eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi        
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.vhd"                 -work cyclonev_hssi        
}

# ----------------------------------------
# Compile the design files in correct order
# echo "\[exec\] com"
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_top.v"                                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_host.v"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_global_load_store.sv"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu.sv"                                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv"                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv"                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv"                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv"                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv"                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv"                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwdsrc.v"                                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ffwddst.sv"                                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_function_wrapper.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_function.sv"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B0_runOnce.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B0_runOnce_stall_region.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B0_runOnce_merge_reg.sv"                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B0_runOnce_branch.sv"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B0_runOnce_merge.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B1_runOnce.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B1_runOnce_stall_region.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B1_runOnce_merge_reg.sv"                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_s_c0_in_lp_init_s_c0_enter2_dfr1.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_lp_init_s_c0_exit_dfr0.sv"         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_lp_ini0000t_dfr1_full_detector.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_lp_ini0000_exit_dfr1_data_fifo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_logic_s_c0_in_lp_init_s_c0_enter2_dfr0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going18_0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i4_cleanups21_pop11_0.sv"                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i4_initerations16_pop10_0.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i5_index_pop9_0.sv"                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i1_lastiniteration20_0.sv"                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i1_notexitcond28_0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i4_cleanups21_push11_0.sv"                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i4_initerations16_push10_0.sv"                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i5_index_push9_0.sv"                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_mem_unnamed_1_dfr0.sv"                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B1_runOnce_branch.sv"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B1_runOnce_merge.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B2_runOnce.sv"                                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B2_runOnce_stall_region.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_token_i1_wt_limpush_0_reg.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B2_runOnce_branch.sv"                                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B2_runOnce_merge.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B3_start.sv"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B3_start_stall_region.sv"                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B3_start_merge_reg.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_iord_bl_call_unnamed_dfr4_dfr0.sv"                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_s_c0_in_wt_entry_s_c0_enter311_dfr0.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit33_dfr0.sv"      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter311_dfr0.sv"              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going12_0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i1_notexitcond13_0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_s_c1_in_wt_entry_s_c1_enter_dfr4.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_s_c1_exit_dfr0.sv"        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c1_out_wt_ent0000t_dfr1_full_detector.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c1_out_wt_ent0000_exit_dfr1_data_fifo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_dfr0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_source_i26_unnamed_5_dfr0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0000f0cd16ol0cd06cj0qfzo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_s_c2_in_wt_entry_s_c2_enter_dfr6.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c2_out_wt_entry_s_c2_exit_dfr0.sv"        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c2_out_wt_ent0000t_dfr1_full_detector.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c2_out_wt_ent0000_exit_dfr1_data_fifo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_logic_s_c2_in_wt_entry_s_c2_enter_dfr0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_source_i26_unnamed_7_dfr0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_0.sv"             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_0.sv"             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600003a0054c2a6344c246w65.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0001f0cd16ol0cd06cj0qfzo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0002f0cd16ol0cd06cj0qfzo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0003f0cd16ol0cd06cj0qfzo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260000b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260001b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260000b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260001b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B3_start_branch.sv"                                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B3_start_merge.sv"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B4.sv"                                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B4_stall_region.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B4_merge_reg.sv"                                                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_s_c0_in_for_body_s_c0_enter363_dfr1.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_for_body_s_c0_exit40_dfr0.sv"      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_for_bo00000_dfr1_full_detector.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_sfc_exit_s_c0_out_for_bo0000xit40_dfr1_data_fifo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_sfc_logic_s_c0_in_for_body_s_c0_enter363_dfr0.sv"              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_dest_i26_result_i_i2768_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_dest_i26_result_i_i4607_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_source_i26_unnamed_9_dfr0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going_0.sv"                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_0.sv"   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i32_node_idx_01431_pop14_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i4_cleanups_pop16_0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i4_initerations_pop15_0.sv"                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_0.sv"                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i1_lastiniteration_0.sv"                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i1_notexitcond_0.sv"                            -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_0.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i32_node_idx_01431_push14_0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i4_cleanups_push16_0.sv"                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i4_initerations_push15_0.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_0.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_63_dfr0.sv"          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_mem_memdep_2_0.sv"                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260000123642i229744c22675x.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600013a0054c2a6344c246w65.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260001123642i229744c22675x.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600023a0054c2a6344c246w65.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260002123642i229744c22675x.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600033a0054c2a6344c246w65.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed00002cdo6u2ocpq6c0ouq3cz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed00012cdo6u2ocpq6c0ouq3cz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00006uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00016uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00026uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00036uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00046uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00056uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00066uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00076uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00086uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00096uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000a6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000b6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000c6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000d6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000e6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000f6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000g6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000h6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000i6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000j6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000k6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000l6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000m6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000n6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000o6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000p6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000q6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000r6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000s6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000t6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000u6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000v6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000w6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000x6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000y6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000z6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00106uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00116uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00126uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00136uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00146uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00156uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00166uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00176uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00186uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00196uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001a6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001b6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001c6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001d6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001e6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001f6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001g6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001h6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001i6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001j6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001k6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001l6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001m6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001n6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001o6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001p6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001q6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001r6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001s6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001t6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001u6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001v6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001w6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001x6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001y6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001z6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00206uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00216uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00226uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00236uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00246uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00256uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00266uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00276uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00286uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00296uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002a6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002b6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002c6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002d6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002e6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002f6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002g6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002h6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002i6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002j6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002k6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002l6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002m6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002n6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002o6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002p6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002q6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002r6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002s6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002t6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002u6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002v6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002w6uq0cp0ju20cp0jo0ouz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260000226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260002b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260000226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260002b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260001226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260003b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260002226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260004b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260003226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260005b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260004226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260006b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260005226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260007b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260006226123642i229742iyc5.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260008b0c2463a0054c2a6355y.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000ol0cd06cj0of0cdj6uzo.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i2600000ju20cp0jo00uq0dpjiz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_flt_i_llvm_fpga_vpfp_sqrt_i26_i26_re00000dd6oq3cd16oe0cp3doz.sv" -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B4_branch.sv"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B4_merge.sv"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B5.sv"                                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B5_stall_region.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_ffwd_dest_i26_result_i_i_19_0.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_token_i1_throttle_push_0.sv"                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_push_token_i1_throttle_push_3_reg.sv"                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_iowr_nb_return_unnamed_dfr11_dfr0.sv"                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B5_branch.sv"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_B5_merge.sv"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going12_1_sr.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going12_1_valid_fifo.sv"               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going18_6_sr.sv"                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going18_6_valid_fifo.sv"               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going_6_sr.sv"                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv"                 -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_loop_limiter_0.sv"                                               -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B1_runOnce_sr_1.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B2_runOnce_sr_0.sv"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B3_start_sr_1.sv"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B4_sr_1.sv"                                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_bb_B5_sr_0.sv"                                                   -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                     -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mem1x.v"                                                         -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram.sv"                                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_ecc.sv"                                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_tall_depth_stitch.sv"                                        -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_remaining_width.sv"                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_bits_per_enable.sv"                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_generic_two_way_depth_stitch.sv"                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_generic_three_way_depth_stitch.sv"                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_short_depth_stitch.sv"                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_bottom_width_stitch.sv"                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_bottom_depth_stitch.sv"                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_lower.sv"                                                    -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_lower_mlab_simple_dual_port.sv"                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_lower_m20k_simple_dual_port.sv"                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_ram_lower_m20k_true_dual_port.sv"                                -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_local_mem_router.v"                                           -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v"                                              -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                      -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                       -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v"                                             -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v"                                                  -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_arb2.v"                                                          -work dfr_internal_inst
eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dfr_internal.v"                                                      -work dfr_internal_inst
eval  vcom $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS        "$QSYS_SIMDIR/dfr.vhd"                                                                                               