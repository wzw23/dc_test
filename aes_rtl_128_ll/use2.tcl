read_verilog "aes_core.v  aes_decipher_block.v  aes_encipher_block.v  aes_inv_sbox.v  aes_key_mem.v  aes_sbox.v  key_ass.v mix_column.v"
current_design aes_core
set_app_var target_library ../files/gscl45nm.db
set_app_var link_library ../files/gscl45nm.db
create_clock "clk" -period 2 
compile

