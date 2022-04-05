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
		input [10:0] informationBits,
		output [10:0] informationBus,
		input clk, 
		input reset,
		input button
    );
	
	 reg [13:0] count; 
	
	 reg [10:0] localDataToDisplay;
	
	 
	always @(posedge clk, posedge reset) begin 
		if(reset)
			count <= 0;
		if(count == 9_600)
			if (~button)
				informationBus[10] <= 0;
			else begin
				if (i < 7)
					localDataToDisplay[i] <= informationBus[i+2];
				else 
					i <= 0;
			end
	end

	 assign infroamtionBus = localDataToDisplay;
	 
endmodule
