`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:36 04/01/2022 
// Design Name: 
// Module Name:    Transistor 
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
module Transistor(
		input [1:0]GTV,
		output [3:0] transistor
    );

	assign transitor = (GTV == 2'b00) ? 4'b0111:
							 (GTV == 2'b01) ? 4'b1011:
							 (GTV == 2'b10) ? 4'b1101:
							 4'b1110;

endmodule
