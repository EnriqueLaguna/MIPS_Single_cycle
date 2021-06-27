/******************************************************************
* Description
*	This is the top-level of a MIPS processor that can execute the next set of instructions:
*		add
*		addi
*		sub
*		ori
*		or
*		bne
*		beq
*		and
*		nor
* This processor is written Verilog-HDL. Also, it is synthesizable into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be execute. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/


module MIPS_Processor
#(
	parameter MEMORY_DEPTH = 32
)
(
	// Inputs
	input clk,
	input reset,
	// Output
	output [31:0] alu_result_o
);
//******************************************************************/
//******************************************************************/
// Data types to connect modules

wire reg_dst_w;
wire alu_rc_w;
wire reg_write_w;
wire zero_w;
wire mem_write_w;
wire mem_read_w;
wire mem_to_reg_w;
wire j_w;
wire jal_w;
wire jr_w;
wire branch_eq_w;
wire branch_ne_w;
wire [3:0] alu_op_w;
wire [3:0] alu_operation_w;
wire [4:0] write_register_w;
wire [4:0] r_or_i_instruction;
wire [31:0] pc_w;
wire [31:0] instruction_w;
wire [31:0] read_data_1_w;
wire [31:0] read_data_2_w;
wire [31:0] inmmediate_extend_w;
wire [31:0] read_ata_2_r_nmmediate_w;
wire [31:0] alu_result_w;
wire [31:0] pc_plus_4_w;
wire [31:0] mem_read_data_w;
wire [31:0] read_memory_or_alu_result_w;
wire [31:0] pc_plus4_or_data_w;
wire [31:0] pc_branch_adder_w;
wire [31:0] pc_branch_adder_result_w;
wire [31:0] pc_jump_w; 
wire [31:0] pc_new_adderss_w;






//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
CONTROL_UNIT
(
	.opcode_i(instruction_w[31:26]),
	.funct(instruction_w[5:0]),
	.j_o(j_w),
	.jal_o(jal_w),
	.jr_o(jr_w),
	.reg_dst_o(reg_dst_w),
	.branch_ne_o(branch_ne_w),
	.branch_eq_o(branch_eq_w),
	.mem_read_o(mem_read_w),
	.mem_write_o(mem_write_w),
	.mem_to_reg_o(mem_to_reg_w),
	.alu_op_o(alu_op_w),
	.alu_src_o(alu_rc_w),
	.reg_write_o(reg_write_w)
);

Program_Counter
PC
(
	.clk(clk),
	.reset(reset),
	.new_pc_i(pc_new_adderss_w),
	.pc_value_o(pc_w)
);



Program_Memory
#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
ROM
(
	.address_i(pc_w),
	.instruction_o(instruction_w)
);


Data_Memory
#(
	.DATA_WIDTH(32),
	.MEMORY_DEPTH(256)
)
RAM
(
	.write_data_i(read_data_2_w),
	.address_i(alu_result_w),
	.mem_write_i(mem_write_w),
	.mem_read_i(mem_read_w),
	.clk(clk),
	.data_o(mem_read_data_w)
);


Adder
PC_Puls_4
(
	.data_0_i(pc_w),
	.data_1_i(32'h4),
	
	.result_o(pc_plus_4_w)
);


Adder
#(
	.N_BITS(32)
)
PC_BRANCH_ADDER
(
	.data_0_i(pc_plus_4_w),
	.data_1_i(inmmediate_extend_w * 4),
	
	.result_o(pc_branch_adder_w)
);

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Multiplexer_2_to_1
#(
	.N_BITS(5)
)
MUX_R_TYPE_OR_I_Type
(
	.selector_i(reg_dst_w),
	.data_0_i(instruction_w[20:16]),
	.data_1_i(instruction_w[15:11]),
	
	.mux_o(r_or_i_instruction)

);


Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_READ_DATA_2_OR_IMMEDIATE
(
	.selector_i(alu_rc_w),
	.data_0_i(read_data_2_w),
	.data_1_i(inmmediate_extend_w),
	
	.mux_o(read_ata_2_r_nmmediate_w)

);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_READ_MEMORY_OR_ALU_RESULT
(
	.selector_i(mem_to_reg_w),
	.data_0_i(alu_result_w),
	.data_1_i(mem_read_data_w),
	
	.mux_o(read_memory_or_alu_result_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_PC_PLUS4_OR_DATA
(
	.selector_i(jal_w),
	.data_0_i(read_memory_or_alu_result_w),
	.data_1_i(pc_plus_4_w),
	
	.mux_o(pc_plus4_or_data_w)
);


Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_PC_PLUS_BRANCH_OR_PC_PLUS_4
(
	.selector_i((branch_ne_w & ~(zero_w)) | (branch_eq_w & zero_w)),
	.data_0_i(pc_plus_4_w),
	.data_1_i(pc_branch_adder_w),
	
	.mux_o(pc_branch_adder_result_w)
);


Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_J_OR_JAL_OR_NOT
(
	.selector_i(j_w | jal_w),
	.data_0_i(pc_branch_adder_result_w),
	.data_1_i({pc_plus_4_w[31:28], instruction_w[25:0], 2'b00}),
	
	.mux_o(pc_jump_w)
);


Multiplexer_2_to_1
#(
	.N_BITS(32)
)
MUX_JR_OR_NOT
(
	.selector_i(jr_w),
	.data_0_i(pc_jump_w),
	.data_1_i(read_data_1_w),
	
	.mux_o(pc_new_adderss_w)
);

Multiplexer_2_to_1
#(
	.N_BITS(5)
)
MUX_RA_OR_REGS
(
	.selector_i(jal_w),
	.data_0_i(r_or_i_instruction),
	.data_1_i(5'b11111),
	
	.mux_o(write_register_w)
);


Register_File
REGISTER_FILE_UNIT
(
	.clk(clk),
	.reset(reset),
	.reg_write_i(reg_write_w),
	.write_register_i(write_register_w),
	.read_register_1_i(instruction_w[25:21]),
	.read_register_2_i(instruction_w[20:16]),
	.write_data_i(pc_plus4_or_data_w),
	.read_data_1_o(read_data_1_w),
	.read_data_2_o(read_data_2_w)

);

Sign_Extend
SIGNED_EXTEND_FOR_CONSTANTS
(   
	.data_i(instruction_w[15:0]),
   .sign_extend_o(inmmediate_extend_w)
);



ALU_Control
ALU_CTRL
(
	.alu_op_i(alu_op_w),
	.alu_function_i(instruction_w[5:0]),
	.alu_operation_o(alu_operation_w)

);



ALU
ALU_UNIT
(
	.alu_operation_i(alu_operation_w),
	.a_i(read_data_1_w),
	.b_i(read_ata_2_r_nmmediate_w),
	.shamt(instruction_w[10:6]),
	.zero_o(zero_w),
	.alu_data_o(alu_result_w)
);

assign alu_result_o = alu_result_w;


endmodule

