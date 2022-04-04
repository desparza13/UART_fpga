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
		input [7:0] informationBits,
		output [3:0] receivedData,
		output [1:0] receivedOriginSW,
		output [1:0] receivedDestinationSW,
		input clk,
		input reset
    );
	 
	 
	 
	 always @(posedge clk, posedge reset)begin 
		if (reset)
			localDisplayData <= 4'b00;
		else begin 
			if (externalDestinationSW == internalIdentifierSW)  
				localDisplayData <= data;
			else 
				localDisplayData <= 4'b00;
		end
	 end
	 
	 assign receivedData = informationBits[3:0];
	 assign receivedOriginSW = informationBits[7:6];
	 assign receivedDestinationSW = informationBits[4:5];
	

endmodule
