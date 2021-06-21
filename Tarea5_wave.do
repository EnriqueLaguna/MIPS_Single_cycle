onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk_tb
add wave -noupdate /MIPS_Processor_TB/reset_tb
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} -radix binary} {{/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} -radix binary}} -subitemconfig {{/MIPS_Processor_TB/DUV/ROM/instruction_o[31]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[30]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[29]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[28]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[27]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[26]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[25]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[24]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[23]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[22]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[21]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[20]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[19]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[18]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[17]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[16]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[15]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[14]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[13]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[12]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[11]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[10]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[9]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[8]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[7]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[6]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[5]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[4]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[3]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[2]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[1]} {-height 15 -radix binary} {/MIPS_Processor_TB/DUV/ROM/instruction_o[0]} {-height 15 -radix binary}} /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group REGISTERS -label s0 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group REGISTERS -label s2 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s2/data_o
add wave -noupdate -expand -group REGISTERS -label s3 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s3/data_o
add wave -noupdate -expand -group REGISTERS -label s4 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s4/data_o
add wave -noupdate -expand -group REGISTERS -label t0 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t0/data_o
add wave -noupdate -expand -group REGISTERS -label t1 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t1/data_o
add wave -noupdate -expand -group REGISTERS -label t2 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/t2/data_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -expand -group CONTROL -radix decimal -childformat {{{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[10]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[9]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[8]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[7]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[6]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[5]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[4]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[3]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[2]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[1]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[0]} -radix decimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[10]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[9]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[8]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[7]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[6]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[5]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[4]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[3]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[2]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[1]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[0]} {-height 15 -radix decimal}} /MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_dst_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_to_reg_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_write_o
add wave -noupdate -expand -group ALU /MIPS_Processor_TB/DUV/ALU_UNIT/alu_operation_i
add wave -noupdate -expand -group ALU /MIPS_Processor_TB/DUV/ALU_CTRL/alu_function_i
add wave -noupdate -expand -group ALU /MIPS_Processor_TB/DUV/ALU_CTRL/alu_control_values_r
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/shamt
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/a_i
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/b_i
add wave -noupdate -expand -group ALU -radix decimal /MIPS_Processor_TB/DUV/ALU_UNIT/alu_data_o
add wave -noupdate -expand -group SIGNED_EXT -radix decimal /MIPS_Processor_TB/DUV/SIGNED_EXTEND_FOR_CONSTANTS/data_i
add wave -noupdate -expand -group SIGNED_EXT -radix decimal /MIPS_Processor_TB/DUV/SIGNED_EXTEND_FOR_CONSTANTS/sign_extend_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15 ps} 0}
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
WaveRestoreZoom {61 ps} {103 ps}
