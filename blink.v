`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:07 05/25/2022 
// Design Name: 
// Module Name:    blink 
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
module blink (clk,LED);

output LED;
input clk;
//reg clk1;
reg [31:0] counter;
reg LED_status;
/*
initial begin
clk1<=1'b0;
end
always #10 clk1=~clk1;*/

initial begin
counter <= 32'b0;
LED_status <= 1'b0;
end

always @ (posedge clk) 
begin
counter <= counter + 1'b1;
if (counter > 50000000)
begin
LED_status <= !LED_status;
counter <= 32'b0;
end


end

assign LED = LED_status;

endmodule 
