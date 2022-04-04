`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:49 04/03/2022 
// Design Name: 
// Module Name:    FlipFlop 
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
module FlipFlop(
    input [3:0]D,
    input clk,
    input reset,
    output reg [3:0]Q
    );
	 
	 always @(posedge clk, posedge reset) begin
		if (reset)
			Q <= 4'b0000;
		else 
			Q <= D;
	 end


endmodule
