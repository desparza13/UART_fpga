`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:19 04/01/2022 
// Design Name: 
// Module Name:    GTV 
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
module GTV(
		input clk,
		input reset,
		output [1:0] GTV
    );
	 
	 reg [14:0]count;
	 reg [1:0] localGTV;
	 
	 always @(posedge clk, posedge reset) begin
			if(reset)
				count <= 0;
			else begin
				if(count == 10_000)
						localGTV <= localGTV + 1;
			end
	 end

	assign GTV = localGTV;

endmodule
