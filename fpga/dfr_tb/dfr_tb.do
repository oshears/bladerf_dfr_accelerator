# do ./mentor/msim_setup.tcl                                                                                 

# dev_com
# com
do compile_dfr_sim.do

alias comp_run_tb {

vlog -reportprogress 300 -work work /home/oshears/Documents/bladeRF/bladerf_dfr_accelerator/intel_hls/hls_float_dfr_spectrum_raw/test-fpga.prj/components/dfr/dfr/simulation/dfr_tb.v
# elab_debug
eval vsim -voptargs=+acc -t ns $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L dfr_internal_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver dfr_tb
# do /home/oshears/Documents/bladeRF/bladerf_dfr_accelerator/intel_hls/hls_float_dfr_spectrum_raw/test-fpga.prj/components/dfr/dfr/simulation/mentor/wave.do


onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dfr_tb/dfr_ip/clock
add wave -noupdate /dfr_tb/dfr_ip/resetn
add wave -noupdate /dfr_tb/dfr_ip/i_data
add wave -noupdate /dfr_tb/dfr_ip/q_data
add wave -noupdate /dfr_tb/dfr_ip/start
add wave -noupdate /dfr_tb/dfr_ip/busy
add wave -noupdate /dfr_tb/dfr_ip/done
add wave -noupdate /dfr_tb/dfr_ip/returndata
TreeUpdate [SetDefaultTree]
# WaveRestoreCursors {{Cursor 1} {1928 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
# WaveRestoreZoom {1925 ns} {1936 ns}


run 10000 ns
}

comp_run_tb