/******************************************************************
* Description
*	This is control unit for the MIPS processor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/
module Control
(
	input [5:0]opcode_i,
	input [5:0]funct, // mandamos traer la parte funct de la instrucción R (6 bits)
	output j_o,
	output jal_o,
	output jr_o,
	output reg_dst_o,
	output branch_eq_o,
	output branch_ne_o,
	output mem_read_o,
	output mem_to_reg_o,
	output mem_write_o,
	output alu_src_o,
	output reg_write_o,
	output [3:0]alu_op_o
);

//Declarar los diferentes Opcodes para las instrucciones. Es un switch xd
localparam R_TYPE = 0;
localparam I_TYPE_ADDI = 6'h8;
localparam I_TYPE_ORI =	6'hD;
localparam I_TYPE_LUI =	6'hF;
localparam I_TYPE_ANDI = 6'hC;
localparam I_TYPE_LW = 6'h23;
localparam I_TYPE_SW = 6'h2b;
localparam I_TYPE_BEQ = 6'h4;
localparam I_TYPE_BNE = 6'h5;
localparam J_TYPE_JUMP = 6'h2;
localparam J_TYPE_JAL = 6'h3;

reg [13:0] control_values_r;

always@(opcode_i) begin

	case(opcode_i)
	
		R_TYPE     :  control_values_r = 14'b00_1_001_00_00_0111; // mismo OpCode para todas las tipo R
		I_TYPE_ADDI:  control_values_r = 14'b00_0_101_00_00_0100; // ultimos 3 bits son random (pero no se pueden rep.)
		I_TYPE_ORI :  control_values_r = 14'b00_0_101_00_00_0001;
		I_TYPE_LUI :  control_values_r = 14'b00_0_101_00_00_0010;
		I_TYPE_ANDI:  control_values_r = 14'b00_0_101_00_00_0011;
		I_TYPE_LW: 	  control_values_r = 14'b00_0_111_10_00_0101;
		I_TYPE_SW:    control_values_r = 14'b00_0_100_01_00_1001;
		I_TYPE_BEQ:	  control_values_r = 14'b00_0_000_00_01_0110;
		I_TYPE_BNE:   control_values_r = 14'b00_0_000_00_10_1000;
		J_TYPE_JUMP:  control_values_r = 14'b10_0_000_00_00_0000;
		J_TYPE_JAL:	  control_values_r = 14'b01_0_001_00_00_0000;

		default:
			control_values_r = 14'b000000000000;
	endcase
		
end	

assign j_o = control_values_r[13];			// bandera de jump, 0 no se salta, 1 si salta
assign jal_o = control_values_r[12];      // bandera de jal, 0 no se salta, 1 si salta
assign reg_dst_o = control_values_r[11];  // es el destino (varía entre las tipo R y las tipo I -> rd, rt)
assign alu_src_o = control_values_r[10];   // el dato que entra a la ALU viene como constante o viene del regFile?
assign mem_to_reg_o = control_values_r[9];// bandera que indica si se escribe en registros con un valor de mmry
assign reg_write_o = control_values_r[8]; // bandera para saber si se escribe en registros o no
assign mem_read_o = control_values_r[7];  // cuando se lee de memoria
assign mem_write_o = control_values_r[6]; // cuando se escribe en memoria
assign branch_ne_o = control_values_r[5]; // para bnq
assign branch_eq_o = control_values_r[4]; // para beq
assign alu_op_o = control_values_r[3:0];	// 4 primeros bits = ALU Op

assign jr_o = reg_dst_o & funct[3]; // si el destino de la tipo R esta en 1 y el 3 bit de la instrucción está prendido, entonces jr = 1
				    // jr es la única operacion tipo R que tiene el 3er bit en 1

endmodule


