/******************************************************************
* Description
*	This performs a shift left opeartion in roder to calculate the brances.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	05/07/2020
******************************************************************/
module Shift_Left_2 
#(
	parameter N_BITS=32
)
(   
	input [N_BITS - 1 : 0]  data_i,
   output reg [N_BITS - 1 : 0] data_o

);
   always @ (data_i)
     data_o = {data_i[N_BITS - 3 : 0], 2'b0};

endmodule // leftShift2