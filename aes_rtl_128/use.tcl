read_verilog "aes_core.v  aes_decipher_block.v  aes_encipher_block.v  aes_inv_sbox.v  aes_key_mem.v  aes_sbox.v  aes.v  key_ass.v"
current_design aes_core
set_app_var target_library ../files/gscl45nm.db
set_app_var link_library ../files/gscl45nm.db
create_clock "clk" -period 5
set_clock_uncertainty -setup 0.15 [get_ports clk]
set_clock_transition 0.12 [get_clocks clk]
set_input_delay -max 1 -clock clk [all_inputs]
set_output__delay -max 1 -clock clk [all_outputs]
set_output_delay -max 1 -clock clk [all_outputs]
compile

