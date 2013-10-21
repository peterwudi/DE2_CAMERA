## Generated SDC file "DE2_D5M.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

## DATE    "Mon Oct 21 15:01:39 2013"

##
## DEVICE  "EP2C35F672C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]
create_clock -name {GPIO_1[16]} -period 20.000 -waveform { 0.000 10.000 } [get_ports {GPIO_1[16]}]
create_clock -name {GPIO_1[0]} -period 20.000 -waveform { 0.000 10.000 } [get_ports {GPIO_1[0]}]
create_clock -name {N/C} -period 10.000 -waveform { 0.000 5.000 } 


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {sdram_pll:u6|altpll:altpll_component|_clk0} -source [get_pins {u6|altpll_component|pll|inclk[0]}] -duty_cycle 50.000 -multiply_by 5 -divide_by 2 -master_clock {CLOCK_50} [get_pins {u6|altpll_component|pll|clk[0]}] 
create_generated_clock -name {sdram_pll:u6|altpll:altpll_component|_clk1} -source [get_pins {u6|altpll_component|pll|inclk[0]}] -duty_cycle 50.000 -multiply_by 5 -divide_by 2 -phase -135.000 -master_clock {CLOCK_50} [get_pins {u6|altpll_component|pll|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[0]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[1]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[2]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[3]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[4]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[5]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[6]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[7]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[8]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[9]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[10]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[11]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[12]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[13]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[14]}]
set_output_delay -add_delay  -clock [get_clocks {N/C}]  0.000 [get_ports {DRAM_DQ[15]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_keepers {*rdptr_g*}] -to [get_keepers {*ws_dgrp|dffpipe_qe9:dffpipe22|dffe23a*}]
set_false_path -from [get_keepers {*delayed_wrptr_g*}] -to [get_keepers {*rs_dgwp|dffpipe_pe9:dffpipe18|dffe19a*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports *] -to [get_registers {rCCD_DATA[*]}] 4.000
set_max_delay -from [get_ports *] -to [get_registers {rCCD_FVAL}] 4.000
set_max_delay -from [get_ports *] -to [get_registers {rCCD_LVAL}] 4.000
set_max_delay -from [get_ports {DRAM_DQ[*]}] -to [get_registers *] 1.000
set_max_delay -from [get_keepers *] -to [get_ports {DRAM_DQ[*]}] 1.000


#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

