`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/09/26 04:36:25
// Design Name: 
// Module Name: pingpong
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module pingpong(
clk,
rst_n,
out,
max,
min,
hold,
filp,
dir);

input clk,rst_n,hold,filp;
output [4:0] out;
output dir;
output max,min;

parameter MAX_VALUE = 5'b11111;
parameter MIN_VALUE = 5'b00000;

reg [4:0] result;
wire [4:0] expression;
reg direction;

assign out = result;
assign dir = direction;
assign expression = (!dir) ? (result + 1'b1) : (result - 1'b1);
assign max = (result == MAX_VALUE) ? 1: 0;
assign min = (result == MIN_VALUE) ? 1: 0;

always @(posedge clk or negedge rst_n) begin
    if(rst_n) begin//reset triggered on
        if(!hold) begin//triggered count if hold==0
			if(filp) begin
			direction <= ~direction;//if filp triggered on then invert direction state
			result <= expression;
			end else begin//filp triggered off
			result <= expression;
			end//end of if(filp)
			if(result == MAX_VALUE - 1'b1) begin
            direction <= 1'b1;
            end else if(result == MIN_VALUE + 1'b1) begin
            direction <= 1'b0;
            end
				    
        end//end of if(!hold)
    end else begin//if rst_n==0 then reset to initial state  
    result <= 5'b00000;//initial and triggered off remain zero
    direction <= 1'b0;//assume initial dir is 1
    end//end of else

end//end of always posedge clk

endmodule