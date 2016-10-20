`timescale 1ns / 1ps
module GCD (
input wire CLK,
input wire RST_N,
input wire [7:0] A,
input wire [7:0] B,
input wire START,
output reg [7:0] Y,
output reg DONE,
output reg ERROR
);
wire found, swap;
reg [15:0] reg_a, reg_b, data_a, data_b;
reg [15:0] diff;
reg error_next;
reg [2:0] state, state_next;
reg found_key1, found_key2, load_key1, load_key2;
parameter [2:0] IDLE = 3'b000;
parameter [2:0] IDLE_cont = 3'b001;
parameter [2:0] CALC = 3'b010;
parameter [2:0] FINISH = 3'b011;
parameter [2:0] FINISH_cont = 3'b100;


// [lab] define the signal found here
assign found = ( reg_a == reg_b ) ? 1 : 0;
// [lab] define the signal swap here
assign swap = ( reg_b >= reg_a ) ? 1 : 0;
 
always @* begin
    if (swap) begin
		data_a = reg_b;
		data_b = reg_a;
    end else begin
		data_a = reg_a;
		data_b = reg_b;
    end
end

always @* begin
	diff = data_a - data_b;
end

always @(posedge CLK or negedge RST_N)
begin
	if(!RST_N) begin
		Y = 0;
		end else begin 
			if(!ERROR) begin
				if (found_key1) begin
				Y = data_a[15:8];
				end else if (found_key2)begin
				Y = data_a[7:0];
				end else begin
				Y = 0;
				end
			end else begin
				Y = 0;
        end
	end
end 

always @(posedge CLK or negedge RST_N) begin
    if (~RST_N) begin
		reg_a = 0;
		reg_b = 0;
    end else if (load_key1) begin
		reg_a[15:8] = A;
		reg_b[15:8] = B;
    end else if (load_key2)begin
		reg_a[7:0] = A;
		reg_b[7:0] = B;
	end else begin
		reg_a = diff;
		reg_b = data_b;
    end
end

always @(posedge CLK or negedge RST_N) begin
    if (RST_N == 0) begin
		state <= IDLE;
		ERROR <= 0;
    end else begin
		state <= state_next;
		ERROR <= error_next;
    end
end

// You may revise the coding style
always @* begin
    case (state)
        IDLE: begin
			DONE = 0;
			load_key1 = 1;
			load_key2 = 0;
			found_key1 = 0;
			found_key2 = 0;
			if (START) begin
			    state_next = IDLE_cont;
                error_next = 0;
            end else begin
				state_next = IDLE;
				error_next = 0;
            end
        end
		IDLE_cont: begin
			DONE = 0;
			load_key1 = 0;         
			load_key2 = 1;
            if (START) begin 
                state_next = CALC;
                error_next = (reg_a == 0 || reg_b == 0) ? 1'b1 : 0;
            end else begin
				state_next = IDLE_cont;
				error_next = 0;
            end
        end
		CALC: begin
			DONE = 0;
			load_key2 = 0;
			error_next = ERROR;
            if(!found && !ERROR) begin
				state_next = CALC;
            end else begin
				state_next = FINISH;
            end
        end
        FINISH: begin
			DONE = 1;
			if(!ERROR)
				found_key1 = 1;
				state_next = FINISH_cont;
				error_next = 0;
			end
		FINISH_cont: begin
			DONE = 1;
			if(found_key1) begin
				found_key1 = 0;
				found_key2 = 1;
			end
				state_next = IDLE;
				error_next = 0;
		end
        default: begin
			DONE = 0;
			state_next = IDLE;
			error_next = 0;
        end
    endcase
end
endmodule
