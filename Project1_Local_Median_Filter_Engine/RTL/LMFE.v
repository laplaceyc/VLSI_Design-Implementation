module LMFE ( clk, reset, Din, in_en, busy, out_valid, Dout);

	input   clk; //clk signal
	input   reset; //active hign asynchronous reset
	input   in_en; //in_en for data in
	output  busy; //busy signal
	output  out_valid; //out valid signal
	input   [7:0]  Din; //8bits grayscale number for each pixel from host
	output  [7:0]  Dout; //8bits grayscale number for each pixel after filtering

	wire	[9:0]	sram_address;
	wire	[7:0]	sram_in;
	wire	[7:0]	sram_out;
	wire	[7:0]	sort_insert;
	wire	[7:0]	sort_delete;
	wire	[7:0]	sort_median;
	wire 			chip_enable;
	wire			write_enable;
	wire			sort_enable;

	filter_ctrl lmfe_filter_ctrl1 (
	//-- input port
	.clk	(clk),
	.RST	(reset),
	.IEN	(in_en),
	.DIN	(Din),
	.Q		(sram_out),
	.MED	(sort_median),
	//-- output port
	.A		(sram_address),
	.D		(sram_in),	
	.CE		(chip_enable),
	.WE		(write_enable),
	.SE		(sort_enable),
	.INS	(sort_insert),
	.DEL	(sort_delete),
	.DOUT	(Dout),
	.OV		(out_valid),
	.BZ		(busy)
	);

	lmfe_med49 lmfe_med491 (
		//-- input port
		.clk	(clk),
		.RST	(reset),
		.SEN	(sort_enable),
		.INS	(sort_insert),
		.DEL	(sort_delete),
		//-- output port
		.MED	(sort_median)
	);

	sram_1024x8_t13 sram1 (
		//-- input port
		.CLK	(clk),
		.CEN	(chip_enable),
		.WEN	(write_enable),
		.A		(sram_address),
		.D		(sram_in),
		//-- output port
		.Q		(sram_out)
	);

endmodule
