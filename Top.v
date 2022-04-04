`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:50 04/01/2022 
// Design Name: 
// Module Name:    Top 
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
module Top(
		input [7:0] dataInputBlock,
		output [3:0] dataRep,
		input CLK,
		input RESET,
		output [3:0]TRANSISTOR,
		output [1:0] GTVTOP,
		output A,
		output B,
		output C,
		output D,
		output E,
		output F,
		output G
    );
	 
	Receiver receiver(.informationBits(dataInputBlock), .clk(CLK), .reset(RESET));
							
	GTV gtv(.clk(CLK), .reset(reset), .GTV(GTVTOP));
							
	Transistor transistor(.GTV(GTVTOP), .transistor(TRANSISTOR));
	
	sevenSeg display(.w(dataDisplay[3]), .x(dataDisplay[2]), .y(dataDisplay[1]), .z(dataDisplay[0]), .a(A), .b(B), .c(C), .d(D), .e(E), .f(F), .g(G));
	
	
				
	
endmodule
