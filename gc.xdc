# Clock signal
set_property PACKAGE_PIN F14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
# create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN K2 [get_ports {clr}]
set_property IOSTANDARD LVCMOS33 [get_ports {clr}]

# LEDs
set_property PACKAGE_PIN G1 [get_ports {NS[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NS[0]}]
set_property PACKAGE_PIN G2 [get_ports {NS[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NS[1]}]
set_property PACKAGE_PIN F1 [get_ports {NS[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {NS[2]}]