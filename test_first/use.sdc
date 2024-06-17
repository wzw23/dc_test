###################################################################

# Created by write_sdc on Sun Mar 31 17:02:41 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_transition -max -rise 0.12 [get_clocks clk]
set_clock_transition -max -fall 0.12 [get_clocks clk]
set_clock_transition -min -rise 0.12 [get_clocks clk]
set_clock_transition -min -fall 0.12 [get_clocks clk]
set_input_delay -clock clk  -max 3  [get_ports clk]
set_input_delay -clock clk  -max 3  [get_ports rstn]
set_output_delay -clock clk  -max 3  [get_ports {cnt[3]}]
set_output_delay -clock clk  -max 3  [get_ports {cnt[2]}]
set_output_delay -clock clk  -max 3  [get_ports {cnt[1]}]
set_output_delay -clock clk  -max 3  [get_ports {cnt[0]}]
set_output_delay -clock clk  -max 3  [get_ports cout]
set_clock_uncertainty -setup 0.15  [get_ports clk]
