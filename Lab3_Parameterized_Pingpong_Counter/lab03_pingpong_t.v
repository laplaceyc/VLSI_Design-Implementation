`timescale 1ns / 1ps


module lab03_pingpong_t;
	parameter width=`WIDTH;
	parameter pattern_file=`PATTERN;
	parameter golden_file=`GOLDEN;
	parameter fsdb=`FSDB;
	parameter period=`PERIOD;
	parameter delat=`DELAY;
	parameter pattern_count=`PATTERN_COUNT;	
	parameter debug=`DEBUG;
	
	reg clk;
    reg rst_n,hold,flip;
    reg [1:0] mode; //
    wire [`WIDTH-1:0] out; //
    wire dir,max,min;
	
	
    
    lab03_pingpong pp(.clk(clk), .rst_n(rst_n), .hold(hold) ,.flip(flip) , .mode(mode), .out(out), .dir(dir), .max(max), .min(min));
	
	reg [3:0] pattern [0:`PATTERN_COUNT];
	reg [`WIDTH+2:0] golden [0:`PATTERN_COUNT];
	
	reg [`WIDTH-1:0] gold_out;
	reg gold_max;
	reg gold_min;
	reg gold_dir;
	reg cmp_out,cmp_dir,cmp_max,cmp_min;
	integer i;	
	integer err_out,err_dir,err_max,err_min;


	always #(`PERIOD/2) clk = ~clk;
	
	initial begin
	$fsdbDumpfile(`FSDB);
	$fsdbDumpvars;
	clk = 0;
	rst_n = 1;
	flip = 0;
	hold = 0;
	mode = 2'b10;
	err_out = 0;
	err_dir = 0;
	err_max = 0;
	err_min = 0;
	#(`DELAY) rst_n = 0;
	#(`PERIOD/2*5+`DELAY) rst_n = 1;
	#(`PERIOD/2-`DELAY);
	
	$readmemb(`PATTERN,pattern);		
	$readmemb(`GOLDEN,golden);
	$display("DEBUG LEVEL: %d",`DEBUG);
	if(pattern[i]!=4'bx)begin
		flip=pattern[i][3];
		hold=pattern[i][2];
		mode=pattern[i][1:0];
		apply_golden(golden[i]);
		if(`DEBUG > 1)begin
			if (out !== gold_out) begin
			$display("Error at pattern %d: out=%h exp expected=%h!",i, out, gold_out);
			end
			if (dir !== gold_dir) begin
			$display("Error at pattern %d: dir=%h exp expected=%h!",i, dir, gold_dir);
			end
			if (max !== gold_max) begin
			$display("Error at pattern %d: max=%h exp expected=%h!",i, max, gold_max);
			end
			if (min!== gold_min) begin
			$display("Error at pattern %d: min=%h exp expected=%h!",i, min, gold_min);
			end
			if (min==gold_min && max==gold_max && dir==gold_dir && out==gold_out) begin
			$display("success at %d!",i);
			end
		end
	end
	for (i = 1; i < `PATTERN_COUNT; i = i + 1) begin
		if (pattern[i] !== 4'bx) begin
			apply_pattern(pattern[i]);
			apply_golden(golden[i]);
			if(`DEBUG > 1)begin
				if (out !== gold_out) begin
				$display("Error at pattern %d: out=%h exp expected=%h!",i, out, gold_out);
				end
				if (dir !== gold_dir) begin
				$display("Error at pattern %d: dir=%h exp expected=%h!",i, dir, gold_dir);
				end
				if (max !== gold_max) begin
				$display("Error at pattern %d: max=%h exp expected=%h!",i, max, gold_max);
				end
				if (min!== gold_min) begin
				$display("Error at pattern %d: min=%h exp expected=%h!",i, min, gold_min);
				end
				if (min==gold_min && max==gold_max && dir==gold_dir && out==gold_out) begin
				$display("success at %d!",i);
				end
			end
		end //end of if
	end //end of for
	if(`DEBUG > 0)begin
	$display("Signal out: error count = %d",err_out);
	$display("Signal dir: error count = %d",err_dir);
	$display("Signal max: error count = %d",err_max);
	$display("Signal min: error count = %d",err_min);
	$display("Pattern file: %s",`PATTERN);	
	$display("Repsonse file: %s",`GOLDEN);
	
	end
	$finish;
	end
	
	task apply_pattern;
		input [3:0] pattern;
		begin
			#(`PERIOD)
			flip = pattern[3];
			hold = pattern[2];
			mode = pattern[1:0];
			
		end
	endtask
	
	task apply_golden;
		input [`WIDTH+2:0] golden;
		begin
			gold_out=golden[`WIDTH-1:0];
			gold_max=golden[`WIDTH];
			gold_min=golden[`WIDTH+1];
			gold_dir=golden[`WIDTH+2];
			
		end
	endtask
//for compare and error

	always @(posedge clk) begin
	cmp_out = out == gold_out ? 1 : 0;
	if (cmp_out == 0) err_out = err_out + 1;
	end
	always @(posedge clk) begin
	cmp_dir = dir == gold_dir ? 1 : 0;
	if (cmp_dir == 0) err_dir = err_dir + 1;
	end
	always @(posedge clk) begin
	cmp_max = max == gold_max ? 1 : 0;
	if (cmp_max == 0) err_max = err_max + 1;
	end
	always @(posedge clk) begin
	cmp_min = min == gold_min ? 1 : 0;
	if (cmp_min == 0) err_min = err_min + 1;
	end
	
endmodule