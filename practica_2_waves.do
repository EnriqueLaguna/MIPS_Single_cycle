onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk_tb
add wave -noupdate /MIPS_Processor_TB/reset_tb
add wave -noupdate -radix decimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -expand -group PC -radix hexadecimal /MIPS_Processor_TB/DUV/PC/new_pc_i
add wave -noupdate -expand -group PC -radix hexadecimal /MIPS_Processor_TB/DUV/PC/pc_value_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/opcode_i
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/j_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/jal_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_dst_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_to_reg_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_write_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -expand -group CONTROL -radix binary /MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r
add wave -noupdate -expand -group ROM -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/address_i
add wave -noupdate -expand -group ROM -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/real_address_mask_w
add wave -noupdate -expand -group ROM -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/real_address_r
add wave -noupdate -expand -group ROM -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group RAM -radix hexadecimal /MIPS_Processor_TB/DUV/RAM/write_data_i
add wave -noupdate -expand -group RAM -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/RAM/address_i[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/RAM/address_i[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/RAM/address_i[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/RAM/address_i[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/RAM/address_i
add wave -noupdate -expand -group RAM -radix hexadecimal /MIPS_Processor_TB/DUV/RAM/real_address_helper_1
add wave -noupdate -expand -group RAM -radix hexadecimal /MIPS_Processor_TB/DUV/RAM/real_address_helper_2
add wave -noupdate -expand -group RAM /MIPS_Processor_TB/DUV/RAM/mem_write_i
add wave -noupdate -expand -group RAM /MIPS_Processor_TB/DUV/RAM/mem_read_i
add wave -noupdate -expand -group RAM -radix decimal /MIPS_Processor_TB/DUV/RAM/data_o
add wave -noupdate -expand -group REGISTERS -label t0 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -expand -group REGISTERS -label s0 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {30 ps}
