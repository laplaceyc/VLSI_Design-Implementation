`include "lab03_header.v"

module lab03_pingpong(
clk,
rst_n,
out,
max,
min,
hold,
flip,
dir,
mode);
//parameterize
parameter width = `WIDTH;
parameter [`WIDTH-1:0] lower_bound = `LOWER_BOUND;
parameter [`WIDTH-1:0] upper_bound = `UPPER_BOUND;
input clk,rst_n,hold,flip;
input [1:0] mode;
output [`WIDTH-1:0] out;
output dir;
output max,min;


reg [`WIDTH-1:0] result;
reg direction;
wire [`WIDTH-1:0] expression;

assign out = result;
assign dir = direction;
assign max = (result == `UPPER_BOUND) ? 1: 0;
assign min = (result == `LOWER_BOUND) ? 1: 0;
assign expression = (hold) ? result:		
	                (mode == 2'b00 && result  < `UPPER_BOUND) ? result + 1:
	                (mode == 2'b00 && result == `UPPER_BOUND) ? `LOWER_BOUND:
	                (mode == 2'b01 && result  > `LOWER_BOUND) ? result-1:
	                (mode == 2'b01 && result == `LOWER_BOUND) ? `UPPER_BOUND:
	                (dir == 0 && result < `UPPER_BOUND)       ? result + 1:
                    (dir == 0 && result == `UPPER_BOUND)      ? `LOWER_BOUND:
                    (dir == 1 && result > `LOWER_BOUND)       ? result - 1:
                    (dir == 1 && result == `LOWER_BOUND)      ? `UPPER_BOUND: `LOWER_BOUND;	 
				   
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin//reset triggered on
        result <= `LOWER_BOUND;//initial and triggered off remain zero
		direction <= 1'b0;//assume initial dir is 0	    
	end else begin//if rst_n==0 then reset to initial state 
			result <= expression;
			
			if(mode==2'b00)begin
                direction<=0;
            end else if(mode==2'b01)begin
                direction<=1;
            end else begin
                if(expression==`LOWER_BOUND) begin  //////
                direction<=0;           
                end else if(expression==`UPPER_BOUND) begin
                direction<=1;
                end else if(flip==1) begin
                direction<=~direction;                
                end else begin
                direction<=direction;
                end
            end
			
		end//end of if
	end//end of always



endmodule
