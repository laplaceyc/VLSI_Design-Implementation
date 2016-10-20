`timescale 1ns / 1ps
module stimulus;
parameter cyc = 10;
parameter delay = 10;
reg clk, rst_n, start;
reg [7:0] a, b;
wire done, error;
wire [7:0] y;

GCD gcd01(.CLK(clk), .RST_N(rst_n), . START(start), .A(a), .B(b), .DONE(done), .Y(y), .ERROR(error));

initial begin
$fsdbDumpfile("Majority.fsdb");
$fsdbDumpvars;
end 


always #(cyc/2) clk = ~clk;

initial begin
$monitor($time, " CLK=%b RST_N=%b START=%b A=%d B=%d | DONE=%b Y=%d ERROR=%b", clk, rst_n, start, a, b, done, y, error);
end

initial begin
clk = 1;
rst_n = 1;
#(cyc);
#(delay) rst_n = 0;
#(cyc*4) rst_n = 1;
#(cyc*2);
#(cyc) nop;
//A=1024 //B=8192 and seperate cycle
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd4, 8'd32);
#(cyc) nop;
#(cyc*4) load; data_in(8'd0, 8'd0);
#(cyc) nop;
@(posedge done);
#(cyc*3) nop;
//A=518 //B=259
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd2, 8'd1);
#(cyc) nop;
#(cyc) load; data_in(8'd6, 8'd3);
#(cyc) nop;
@(posedge done);
#(cyc*3) nop;
//A=259 //B=0
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd1, 8'd0);
#(cyc) nop;
#(cyc) load; data_in(8'd3, 8'd0);
#(cyc) nop;
@(posedge done);
#(cyc*3) nop;
//A=0 //B=259
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd0, 8'd1);
#(cyc) nop;
#(cyc) load; data_in(8'd0, 8'd3);
#(cyc) nop;
@(posedge done);
#(cyc*3) nop;
//A=0 //B=0
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd0, 8'd0);
#(cyc) nop;
#(cyc) load; data_in(8'd0, 8'd0);
#(cyc) nop;
@(posedge done);
#(cyc*3) nop;
//A=9487 //B=9487
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd37, 8'd37);
#(cyc) nop;
#(cyc) load; data_in(8'd15, 8'd15);
#(cyc) nop;
@(posedge done);
#(cyc*2) nop;
//A=46368 //B=28657
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd181, 8'd111);
#(cyc) nop;
#(cyc) load; data_in(8'd32, 8'd241);
#(cyc) nop;
@(posedge done);
#(cyc) nop;
// [lab] apply more patterns to cover
// different conditions
#(cyc) nop;
#(cyc*8);
$finish;
end

// take a careful look at
// the usage of task here
task nop;
begin
start = 0;
end
endtask
task load;
begin
start = 1;
end
endtask
task data_in;
input [7:0] data1, data2;
begin
a = data1;
b = data2;
end
endtask
endmodule