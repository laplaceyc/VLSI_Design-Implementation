`timescale 1ns/100ps
`define SDFFILE    "./fifo.sdf"
module testbench;
	reg clk_w,clk_r; 
	reg[15:0] datain_w; 
	wire[15:0] dataout_r;
	wire fifo_empty_r,fifo_full_w,fifo_almost_full_w,fifo_almost_empty_r,fifo_error_w,fifo_error_r;
	reg rst_n_w; 
	reg rst_n_r; 
	reg push_w, pop_r;

	integer i;

	fifo fifo (.datain_w(datain_w), 
			  .dataout_r(dataout_r),
			  .clk_w(clk_w), 
			  .clk_r(clk_r), 
			  .rst_n_w(rst_n_w), 
			  .rst_n_r(rst_n_r), 
			  .push_w(push_w) , 
			  .pop_r(pop_r),
			  .fifo_empty_r(fifo_empty_r), 
			  .fifo_full_w(fifo_full_w),
			  .fifo_almost_full_w(fifo_almost_full_w),
			  .fifo_almost_empty_r(fifo_almost_empty_r),
			  .fifo_error_w(fifo_error_w),
			  .fifo_error_r(fifo_error_r));
			  
	initial begin
		$dumpfile("fifo.vcd");
		$dumpvars;
		$fsdbDumpfile("fifo2.fsdb");
		$fsdbDumpvars;
	end
	`ifdef SDF
	initial $sdf_annotate(`SDFFILE, fifo);
	`endif
	always #7 clk_w=~clk_w;
	always #5 clk_r=~clk_r;
	
	initial  begin 
	  clk_w=1'b0; 
	  clk_r=1'b0; 
	  push_w=1'b0;
	  pop_r=1'b0;
	  rst_n_r=1'b0;
	  rst_n_w=1'b0;
	end
	initial begin
	  #30 rst_n_r=1'b1; rst_n_w=1'b1;
	end
	initial begin
	  #5 push_w=1'b1;
	end
	initial begin 
	#1
		for(i=0;i<600;i=i+1)begin
			if(i==0)begin #7 datain_w=0; end
			else begin #7 datain_w=datain_w+1; end
		end
	end
	initial begin
	#1000 pop_r = 1'b1;
	end
	initial begin
		#9000 $finish;
	end
	
endmodule
