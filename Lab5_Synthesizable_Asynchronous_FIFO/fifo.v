module fifo #(parameter DSIZE = 16,
 parameter ASIZE = 8)
 (output [DSIZE-1:0] dataout_r,
 output fifo_full_w,
 output fifo_empty_r,
 output fifo_almost_full_w,
 output fifo_almost_empty_r,
 output fifo_error_w,
 output fifo_error_r,
 input [DSIZE-1:0] datain_w,
 //change port name
 input push_w, clk_w, rst_n_w,
 input pop_r, clk_r, rst_n_r);
 wire [ASIZE-1:0] waddr, raddr;
 wire [ASIZE:0] wptr, rptr, wq2_rptr, rq2_wptr;
 sync_r2w sync_r2w (.wq2_rptr(wq2_rptr), .rptr(rptr),
 .wclk(clk_w), .wrst_n(rst_n_w));
 sync_w2r sync_w2r (.rq2_wptr(rq2_wptr), .wptr(wptr),
 .rclk(clk_r), .rrst_n(rst_n_r));
 /*
 fifomem #(DSIZE, ASIZE) fifomem
 (.rdata(rdata), .wdata(wdata),
 .waddr(waddr), .raddr(raddr),
 .wclken(winc), .wfull(wfull),
 .wclk(wclk));
 */
 //use memory compiler generator sram

assign zero_flag = 1'b0;
assign one_flag = 1'b1;
//these two ports are unused for read/write particallly
wire [15:0] wdata_out;
wire [15:0] rdata_in;
//prevent the condition mention on revise.log
assign CENB = (fifo_full_w || !push_w) ? 1 : 0;
 dpsram256x16 sram (.QA(dataout_r), .CLKA(clk_r), .CENA(zero_flag), .WENA(one_flag), .AA(raddr), .DA(rdata_in), .OENA(zero_flag),
					.QB(wdata_out), .CLKB(clk_w), .CENB(CENB), .WENB(zero_flag), .AB(waddr), .DB(datain_w), .OENB(one_flag));
 rptr_empty #(ASIZE) rptr_empty
 (.rempty(fifo_empty_r),
 .raddr(raddr),
 .rptr(rptr), .rq2_wptr(rq2_wptr),
 .rinc(pop_r), .rclk(clk_r),
 .rrst_n(rst_n_r),.fifo_almost_empty_r(fifo_almost_empty_r),.fifo_error_r(fifo_error_r));
 wptr_full #(ASIZE) wptr_full
 (.wfull(fifo_full_w), .waddr(waddr),
 .wptr(wptr), .wq2_rptr(wq2_rptr),
 .winc(push_w), .wclk(clk_w),
 .wrst_n(rst_n_w),.fifo_almost_full_w(fifo_almost_full_w),.fifo_error_w(fifo_error_w));
endmodule
//*************************************************************************
/*
module fifomem #(parameter DATASIZE = 16, // Memory data word width
 parameter ADDRSIZE = 8) // Number of mem address bits
 (output [DATASIZE-1:0] rdata,
 input [DATASIZE-1:0] wdata,
 input [ADDRSIZE-1:0] waddr, raddr,
 input wclken, wfull, wclk);
 `ifdef VENDORRAM
 // instantiation of a vendor's dual-port RAM
 vendor_ram mem (.dout(rdata), .din(wdata),
 .waddr(waddr), .raddr(raddr),
 .wclken(wclken),
 .wclken_n(wfull), .clk(wclk));
 `else
 // RTL Verilog memory model
 localparam DEPTH = 1<<ADDRSIZE;
 reg [DATASIZE-1:0] mem [0:DEPTH-1];
 assign rdata = mem[raddr];
 always @(posedge wclk)
 if (wclken && !wfull) mem[waddr] <= wdata;
 `endif
 */
 /*always @(posedge wclk)
 $display($time,"-----%b",mem[16]);*/
//endmodule
//****************************************************************************
module sync_r2w #(parameter ADDRSIZE = 8)
 (output reg [ADDRSIZE:0] wq2_rptr,
 input [ADDRSIZE:0] rptr,
 input wclk, wrst_n);
 reg [ADDRSIZE:0] wq1_rptr;
 always @(posedge wclk or negedge wrst_n)
 if (!wrst_n) {wq2_rptr,wq1_rptr} <= 0;
 else {wq2_rptr,wq1_rptr} <= {wq1_rptr,rptr};
endmodule

module sync_w2r #(parameter ADDRSIZE = 8)
 (output reg [ADDRSIZE:0] rq2_wptr,
 input [ADDRSIZE:0] wptr,
 input rclk, rrst_n);
 reg [ADDRSIZE:0] rq1_wptr;
 always @(posedge rclk or negedge rrst_n)
 if (!rrst_n) {rq2_wptr,rq1_wptr} <= 0;
 else {rq2_wptr,rq1_wptr} <= {rq1_wptr,wptr};
endmodule
//*********************************************************************************
module rptr_empty #(parameter ADDRSIZE = 8)
 (output reg rempty,output reg fifo_almost_empty_r,output reg fifo_error_r,
 output reg [ADDRSIZE-1:0] raddr,
 output reg [ADDRSIZE :0] rptr,
 input [ADDRSIZE :0] rq2_wptr,
 input rinc, rclk, rrst_n);
 reg [ADDRSIZE:0] rbin;
 wire [ADDRSIZE:0] rgraynext, rbinnext,alrbinnext,alrgraynext;
 reg temp;
 //-------------------
 // GRAYSTYLE2 pointer
 //-------------------
 always @(posedge rclk)
 if(!rempty&&rinc) raddr = rbin[ADDRSIZE-1:0];
 always @(posedge rclk or negedge rrst_n)
 if (!rrst_n) {rbin, rptr} <= 0;
 else {rbin, rptr} <= {rbinnext, rgraynext};
 // Memory read-address pointer (okay to use binary to address memory)
 //assign raddr = rbin[ADDRSIZE-1:0];
 assign rbinnext = rbin + (rinc & ~rempty);
 assign rgraynext = (rbinnext>>1) ^ rbinnext;
 
 assign alrbinnext = rbinnext + (rinc & ~rempty);
 assign alrgraynext = (alrbinnext>>1) ^ alrbinnext;
 //---------------------------------------------------------------
 // FIFO empty when the next rptr == synchronized wptr or on reset
 //---------------------------------------------------------------
 assign rempty_val = (rgraynext == rq2_wptr);
 assign alrempty_val = (alrgraynext == rq2_wptr)||(rgraynext == rq2_wptr);
 
 always @* begin	
   if(temp==1 && rinc==1)begin fifo_error_r=1;end
   else begin fifo_error_r=0; end
 end
 
 always @(posedge rclk or negedge rrst_n)begin
 if (!rrst_n) begin rempty <= 1'b1;temp <= 1'b1;end
 else begin rempty <= rempty_val;temp <= rempty_val;end
  //$display($time,"-----%b*****%b.....%b rempty=%b",rgraynext,rq2_wptr,rinc);
 end
 always @(posedge rclk or negedge rrst_n)
 if (!rrst_n) fifo_almost_empty_r <= 1'b1;
 else fifo_almost_empty_r <= alrempty_val;
 /*always @(posedge rclk or negedge rrst_n)
 $display($time,"-----%b*****%b.....%b///%b",rgraynext,rq2_wptr,rinc,rempty);*/
endmodule
//**********************************************************************************
module wptr_full #(parameter ADDRSIZE = 8)
 (output reg wfull,output reg fifo_almost_full_w,output reg fifo_error_w,
 output [ADDRSIZE-1:0] waddr,
 output reg [ADDRSIZE :0] wptr,
 input [ADDRSIZE :0] wq2_rptr,
 input winc, wclk, wrst_n);
 reg [ADDRSIZE:0] wbin;
 wire [ADDRSIZE:0] wgraynext, wbinnext,alwbinnext,alwgraynext;
 reg temp;
 // GRAYSTYLE2 pointer
 always @(posedge wclk or negedge wrst_n)
 if (!wrst_n) {wbin, wptr} <= 0;
 else {wbin, wptr} <= {wbinnext, wgraynext};
 // Memory write-address pointer (okay to use binary to address memory)
 assign waddr = wbin[ADDRSIZE-1:0];
 assign wbinnext = wbin + (winc & ~wfull);
 assign wgraynext = (wbinnext>>1) ^ wbinnext;
 
 assign alwbinnext = wbinnext + (winc & ~wfull);
 assign alwgraynext = (alwbinnext>>1) ^ alwbinnext;
 //------------------------------------------------------------------
 // Simplified version of the three necessary full-tests:
 // assign wfull_val=((wgnext[ADDRSIZE] !=wq2_rptr[ADDRSIZE] ) &&
 // (wgnext[ADDRSIZE-1] !=wq2_rptr[ADDRSIZE-1]) &&
 // (wgnext[ADDRSIZE-2:0]==wq2_rptr[ADDRSIZE-2:0]));
 //------------------------------------------------------------------
 assign wfull_val = (wgraynext=={~wq2_rptr[ADDRSIZE:ADDRSIZE-1],
 wq2_rptr[ADDRSIZE-2:0]});
 
 assign alwfull_val = (alwgraynext=={~wq2_rptr[ADDRSIZE:ADDRSIZE-1],
 wq2_rptr[ADDRSIZE-2:0]})||(wgraynext=={~wq2_rptr[ADDRSIZE:ADDRSIZE-1],
 wq2_rptr[ADDRSIZE-2:0]});
 
 always @* begin	
   if(temp==1 && winc==1)begin fifo_error_w=1;end
   else begin fifo_error_w=0; end
 end
 
 always @(posedge wclk or negedge wrst_n)begin
 if (!wrst_n) begin wfull <= 1'b0;temp <= 1'b0;end
 else begin wfull <= wfull_val;temp <= wfull_val;end
 end
 always @(posedge wclk or negedge wrst_n)
 if (!wrst_n) fifo_almost_full_w <= 1'b0;
 else fifo_almost_full_w <= alwfull_val;
 /*always @(posedge wclk or negedge wrst_n)
 $display("-----%b*****%b",wgraynext,alwgraynext);*/
endmodule