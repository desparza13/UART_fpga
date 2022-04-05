`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:38 04/01/2022 
// Design Name: 
// Module Name:    Receiver 
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
module Receiver(
		input [10:0] informationBus,
		output [7:0] dataToDisplay,
		input clk,
		input reset
    );
	 
	 reg [13:0] count; 
	 reg [7:0] localDataToDisplay;
	 reg [3:0] i = 1'b0;
	 
	 assign dataToDisplay = localDataToDisplay;
	 
	 always @(posedge clk, posedge reset)begin 
		if(reset)
			count <= 0;
		else begin 
			if(count == 9_600)
				if (informationBus[10] == 0)begin
					if (i < 7)
						localDataToDisplay[i] <= informationBus[i+2];
					else 
						i <= 0;
				end
		end
	 end
	 
endmodule
