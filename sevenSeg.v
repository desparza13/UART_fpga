`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Omar Chavira
// 
// Create Date:    20:38:41 02/15/2022 
// Design Name: 
// Module Name:    sevenSeg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sevenSeg(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	
	 assign g = ~y&(~w&~x | w&x&~z);
	 assign f = ~w&(~x&(z|y) | y&z) | w&x&~y&z;	 
	 assign e = ~w&(x&~y | z) | w&~x&~y&z;
	 assign d = ~y&(~w&x&~z | ~x&z) | y&(x&z | w&~x&~z);	 
	 assign c = w&x&~y&~z | ~w&~x&y&~z | w&x&y;
	 assign b = (w&x&~z) | (~w&x&~y&z) | (w&y&z) | (x&y&~z);
	 assign a = ~w&~y&(x^z) | w&z&(x^y);
	 
													
endmodule
