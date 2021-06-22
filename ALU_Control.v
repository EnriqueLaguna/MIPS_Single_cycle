/******************************************************************
* Description
*	This is the control unit for the ALU. It receves an signal called 
*	ALUOp from the control unit and a signal called ALUFunction from
*	the intrctuion field named function.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/
module ALU_Control
(
	input [2:0] alu_op_i,
	input [5:0] alu_function_i,
	
	output [3:0] alu_operation_o

);

// 									CTL_FUNCTN
//										111_020HEX
localparam R_TYPE_ADD    = 9'b111_100000;
//										100_XXXHEX
localparam I_TYPE_ADDI	 = 9'b100_xxxxxx; // las tipo I no tienen FUNCTN, por eso las 'x'
localparam I_TYPE_ORI	 = 9'b001_xxxxxx; // las tipo I no tienen FUNCTN, por eso las 'x'

//										111_000HEX
localparam R_TYPE_SLL	 = 9'b111_000000;
//										111_022HEX
localparam R_TYPE_SUB	 = 9'b111_100010;
//										111_002HEX
localparam R_TYPE_SRL	 = 9'b111_000010;


reg [3:0] alu_control_values_r;
wire [8:0] selector_w;

// concatenación entre la OP de ALU y la FNTN de ALU
assign selector_w = {alu_op_i, alu_function_i};
//							{b_i, 16'b0}

always@(selector_w)begin

	casex(selector_w)
		// 											  ARBITRARIOS
		R_TYPE_ADD:    alu_control_values_r = 4'b0011;
		I_TYPE_ADDI:	alu_control_values_r = 4'b0011;
		I_TYPE_ORI:		alu_control_values_r = 4'b0001;
		R_TYPE_SLL: 	alu_control_values_r = 4'b0010;
		R_TYPE_SUB: 	alu_control_values_r = 4'b0100;
		R_TYPE_SRL: 	alu_control_values_r = 4'b0101;
		

		default: alu_control_values_r = 4'b1001;
	endcase
	
end


assign alu_operation_o = alu_control_values_r;

endmodule