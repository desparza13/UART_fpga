`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:25 04/01/2022 
// Design Name: 
// Module Name:    Transmitter 
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
module Transmitter(
		input [7:0] informationBits,
		output [7:0] bitsInformation,
		input clk, 
		input reset
    );
	
	always @(posedge clk, posedge reset) begin 
		if(reset)
			informationBits <= 8'b00000000;
	end
	
	assign bitsInformation = informationBits;
	
endmodule
