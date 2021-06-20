onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk_tb
add wave -noupdate /MIPS_Processor_TB/reset_tb
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/alu_result_tb
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROM/instruction_o
add wave -noupdate -expand -group REGISTERS -label s0 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s0/data_o
add wave -noupdate -expand -group REGISTERS -label s2 -radix decimal /MIPS_Processor_TB/DUV/REGISTER_FILE_UNIT/s2/data_o
add wave -noupdate -expand -group CONTROL /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_op_o
add wave -noupdate -expand -group CONTROL -radix decimal -childformat {{{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[10]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[9]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[8]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[7]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[6]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[5]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[4]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[3]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[2]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[1]} -radix decimal} {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[0]} -radix decimal}} -expand -subitemconfig {{/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[10]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[9]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[8]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[7]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[6]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[5]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[4]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[3]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[2]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[1]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r[0]} {-height 15 -radix decimal}} /MIPS_Processor_TB/DUV/CONTROL_UNIT/control_values_r
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_dst_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_eq_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/branch_ne_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_read_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_to_reg_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/mem_write_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/alu_src_o
add wave -noupdate -group CONTROL_O /MIPS_Processor_TB/DUV/CONTROL_UNIT/reg_write_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ps} 0}
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
WaveRestoreZoom {0 ps} {42 ps}
