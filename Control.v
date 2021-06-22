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
	
	output reg_dst_o,
	output branch_eq_o,
	output branch_ne_o,
	output mem_read_o,
	output mem_to_reg_o,
	output mem_write_o,
	output alu_src_o,
	output reg_write_o,
	output [2:0]alu_op_o
);

//Declarar los diferentes Opcodes para las instrucciones. Es un switch xd
localparam R_TYPE = 0;
localparam I_TYPE_ADDI = 6'H8;
localparam I_TYPE_ORI =	6'HD;



reg [10:0] control_values_r;

always@(opcode_i) begin

	case(opcode_i)
	
		R_TYPE     :  control_values_r = 11'b1_001_00_00_111; // mismo OpCode para todas las tipo R
		I_TYPE_ADDI:  control_values_r = 11'b0_101_00_00_100; // ultimos 3 bits son random (pero no se pueden rep.)
		I_TYPE_ORI :  control_values_r = 11'b0_101_00_00_001;
		

		default:
			control_values_r = 11'b0000000000;
	endcase
		
end	
	
assign reg_dst_o = control_values_r[10];  // es el destino (varía entre las tipo R y las tipo I -> rd, rt)
assign alu_src_o = control_values_r[9];   // el dato que entra a la ALU viene como constante o viene del regFile?
assign mem_to_reg_o = control_values_r[8];// bandera que indica si se escribe en registros con un valor de mmry
assign reg_write_o = control_values_r[7]; // bandera para saber si se escribe en registros o no
assign mem_read_o = control_values_r[6];  // cuando se lee de memoria
assign mem_write_o = control_values_r[5]; // cuando se escribe en memoria
assign branch_ne_o = control_values_r[4]; // para bnq
assign branch_eq_o = control_values_r[3]; // para beq
assign alu_op_o = control_values_r[2:0];	// 3 primeros bits = ALU Op

endmodule