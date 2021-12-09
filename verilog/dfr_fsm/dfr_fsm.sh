#!/usr/bin/bash

vcom dfr_fsm.vhd
vlog dfr_fsm_tb.v

vsim dfr_fsm_tb -do dfr_fsm.do