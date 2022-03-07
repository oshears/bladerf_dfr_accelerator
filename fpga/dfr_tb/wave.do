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
add wave -noupdate -divider {New Divider}
add wave -noupdate /dfr_tb/dfr_ip_fsm/clk
add wave -noupdate /dfr_tb/dfr_ip_fsm/reset
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_done
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_busy
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_input_count
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_input_count_reset
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_input_count_inc
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_resetn
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_start
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_output_ram_wen
add wave -noupdate /dfr_tb/dfr_ip_fsm/dfr_fsm_done
add wave -noupdate /dfr_tb/dfr_ip_fsm/state
add wave -noupdate /dfr_tb/dfr_ip_fsm/next_state
add wave -noupdate -divider {New Divider}
add wave -noupdate /dfr_tb/dfr_rom/address
add wave -noupdate /dfr_tb/dfr_rom/clock
add wave -noupdate /dfr_tb/dfr_rom/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2826 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {7590 ns}
