`timescale 1ns / 1ps
module stimulus;
parameter cyc = 10;
parameter delay = 1;
reg clk, rst_n, start;
reg [7:0] a, b;
wire done, error;
wire [7:0] y;

GCD gcd01 (.CLK(clk), .RST_N(rst_n), . START(start), .A(a), .B(b), .DONE(done), .Y(y), .ERROR(error));

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

//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd21, 8'd6);// A = 21 B=6
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd0, 8'd6);//  A = 0 B = 6
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd21, 8'd0);// A = 21 B = 0
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd21, 8'd21);// A = 21 B = 21
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd6, 8'd21);// A = 6 B = 21
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd0, 8'd0);// A = 0 B = 0
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
#(cyc) load; data_in(8'd233, 8'd144);// coprime
#(cyc) nop;
@(posedge done);
#(cyc) nop;
//--------------------------------------------------------------------------------------------------------------------------
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