module filter_ctrl (
	clk,
	RST,
	IEN,
	DIN,
	Q,
	MED,
	A,
	D,
	CE,
	WE,
	SE,
	INS,
	DEL,
	DOUT,
	OV,
	BZ
);

	input			clk; //clk signal
	input			RST; //active hign asynchronous reset
	input			IEN; //in_en for data in
	input	[7:0]	DIN; //8bits grayscale number for each pixel from host
	input	[7:0]	Q; //8bits grayscale number for each pixel from SRAM
	input	[7:0]	MED; //median number of each 7x7mask
	output	[9:0]	A; // pixel address
	output	[7:0]	D; //8bits grayscale number for each pixel to SRAM
	output			CE; //chip enable to SRAM
	output			WE; //write enable to SRAM, when CEN in "Low", WEN "Low" for write and "Hign" for read
	output			SE; //sort enable signal to medianfilter49
	output	[7:0]	INS; //unsorted insert number to medianfilter49 
	output	[7:0]	DEL; //wanted delete number for medianfilter49
	output	[7:0]	DOUT; //8bits grayscale number for each pixel after filtering
	output			OV; //out valid signal
	output			BZ; //busy signal

	//parameters
	parameter IDLE = 3'b000;
	parameter W_AREA = 3'b001;
	parameter R_MASK = 3'b010;
	parameter R_SCAN = 3'b011;
	parameter W_ROW = 3'b100;
	parameter RESET = 3'b101;
	parameter RESULT = 3'b110;
	
	reg	[2:0] state, state_next;
	reg	[9:0] A, A_next;
	reg	[7:0] D, D_next;
	reg	CE, CE_next;
	reg	WE, WE_next;
	reg	SE, SE_next;
	reg	[7:0] INS, INS_next;
	reg	[7:0] DEL, DEL_next;
	reg	[7:0] DOUT, DOUT_next;
	reg	OV, OV_next;
	reg	BZ, BZ_next;
	reg	[9:0] wa, wa_next;
	reg	[9:0] wc, wc_next;
	reg	[5:0] rc, rc_next;
	reg	[7:0] lc, lc_next;
	reg	[13:0] pc, pc_next;
	reg	[7:0] px, px_next;
	reg	[7:0] py, py_next;
	reg	[7:0] mv[0:48];
	reg	[7:0] mv_next[0:48];
	
	reg	[7:0] mx[0:48];
	reg	[7:0] my[0:48];
	reg	[7:0] i;
	reg	zero_check[0:48];
	
	//-- state register
	always @ (posedge clk, posedge RST) begin
		if (RST) begin
			state <= IDLE;
		end else begin
			state <= state_next;
		end
	end

	//-- next state logic
	always @ * begin
		
		case (state)
			IDLE: begin
				if (IEN) begin
					state_next = W_AREA;
				end else begin
					state_next = IDLE;
				end
			end
			W_AREA: begin
				if (wc<511) begin
					state_next = W_AREA;
				end else begin
					state_next = R_MASK;
				end
			end
			R_MASK: begin
				if (rc<51) begin
					state_next = R_MASK;
				end else begin
					state_next = R_SCAN;
				end
			end
			R_SCAN: begin
				if (rc<9) begin
					state_next = R_SCAN;
				end else if (lc==127 && (pc>15998)) begin
					state_next = RESET;
				end else if (lc==127) begin
					state_next = W_ROW;
				end else begin
					state_next = R_SCAN;
				end
			end
			W_ROW: begin
				if (wc<128) begin
					state_next = W_ROW;
				end else begin
					state_next = RESET;
				end
			end
			RESET: begin
				if (pc == 16383) begin
					state_next = RESULT;
				end else if (rc < 49) begin
					state_next = RESET;
				end else begin
					state_next = R_MASK;
				end
			end
			RESULT: begin
				state_next = IDLE;
			end
			default: begin
				state_next = IDLE;
			end
		endcase
	end

	//-- output register
	always @ (posedge clk, posedge RST) begin
		if (RST) begin
			DOUT <= 8'b0;
			BZ   <= 1'b0;
			OV   <= 1'b0;
			A    <= 10'b0;
			D    <= 8'b0;
			CE   <= 1'b1;
			WE   <= 1'b1;
			SE   <= 1'b1;
			INS  <= 8'hff;
			DEL  <= 8'hff;
		end else begin
			DOUT <= DOUT_next;
			BZ   <= BZ_next;
			OV   <= OV_next;
			A    <= A_next;
			D    <= D_next;
			CE   <= CE_next;
			WE   <= WE_next;
			SE   <= SE_next;
			INS  <= INS_next;
			DEL  <= DEL_next;
		end
	end

	//-- output logic
	always @ * begin
		DOUT_next = DOUT;
		BZ_next   = BZ;
		OV_next   = OV;
		A_next    = A;
		D_next    = D;
		CE_next   = CE;
		WE_next   = WE;
		SE_next   = SE;
		INS_next  = INS;
		DEL_next  = DEL;
		case (state)
			IDLE: begin
				if (IEN) begin
					// state_next = W_AREA;
					A_next    = wa;
					D_next    = DIN;
					CE_next   = 1'b0;
					WE_next   = 1'b0;
				end else begin
					// state_next = IDLE;
				end
			end
			W_AREA: begin
				if (wc<511) begin
					// state_next = W_AREA;
					BZ_next = (wc==510)? 1'b1: 1'b0;
					A_next  = wa;
					D_next  = DIN;
				end else begin
					// state_next = R_MASK;
					CE_next  = 1'b0;
					WE_next  = 1'b1;
				end
			end
			R_MASK: begin
				if (rc<51) begin
					// state_next = R_MASK;
					A_next   = (rc<49)? ((my[rc]-3)<<7) + (mx[rc]-3): 0;				
					SE_next  = (rc>1)? 1'b0: 1'b1;
					INS_next = (rc>1)? (zero_check[rc-2]>0)? Q: 0: 8'hff;
					
				end else begin
					// state_next = R_SCAN;
					SE_next = 1'b1;
				end
			end		
			R_SCAN: begin
				if (rc<9) begin
					// state_next = R_SCAN;
					OV_next   = (rc<1)? 1'b1: 0;
					DOUT_next = (rc<1)? MED: 0;
					//insert right hand side column
					A_next    = (rc<7)? ((my[6+rc*7]-3)<<7) + (mx[6+rc*7]-3): 0;
					//sort enable after 2 cycle
					SE_next   = (rc>1)? 1'b0: 1'b1;
					//insert new column
					INS_next  = (rc>1)? (zero_check[6+(rc-2)*7]>0)? Q: 0: 8'hff;
					//delete old column
					DEL_next  = (rc>1)? mv[0+(rc-2)*7]: 8'hff;
				end else if (lc==127 && (pc>15998)) begin
					// state_next = RESET;
					SE_next = 1'b0;
				end else if (lc==127) begin
					// state_next = W_ROW;
					BZ_next = 1'b0;
					SE_next = 1'b1;
				end else begin
					// state_next = R_SCAN;
					SE_next = 1'b1;
				end
			end
			W_ROW: begin
				if (wc<128) begin
					// state_next = W_ROW;
					BZ_next   = (wc==127)? 1'b1: 1'b0;
					A_next    = wa;
					D_next    = DIN;
					CE_next = 0;
					WE_next = 0;
				end else begin
					// state_next = RESET;
					SE_next = 1'b0;
				end
			end
			RESET: begin
				if (pc == 16384) begin
					// state_next = RESULT
				end else if (rc < 49) begin
					//renew
					OV_next   = (rc<1)? 1'b1: 0;
					DOUT_next = (rc<1)? MED: 0;
					// state_next = RESET;
					INS_next = 8'hff;
					DEL_next = 0;
					
				end else begin
					//state_next = SR_R49
					SE_next = 1'b1;
					CE_next = 0;
					WE_next = 1'b1;
					DEL_next = 8'hff;
				end
			end
			
			RESULT: begin
				// state_next = IDLE;
			end
			default: begin
				//state_next = IDLE;
			end
		endcase
	end

	//-- internal register
	always @ (posedge clk, posedge RST) begin
		if (RST) begin
			wa <= 0;
			wc <= 0;
			rc <= 0;
			lc <= 0;
			pc <= 0;
			px <= 3;
			py <= 3;
		end else begin
			wa <= wa_next;
			wc <= wc_next;
			rc <= rc_next;
			lc <= lc_next;
			pc <= pc_next;
			px <= px_next;
			py <= py_next;		
		end
	end
	always @ (posedge clk, posedge RST) begin
		if (RST) begin
			for (i=0; i<49; i=i+1) begin
				mv[i] <= 0;
			end
		end else begin
			for (i=0; i<49; i=i+1) begin
				mv[i] <= mv_next[i];
			end
		end
	end

	//-- internal logic
	always @ * begin
		wa_next = wa;
		wc_next = wc;
		rc_next = rc;
		lc_next = lc;
		pc_next = pc;
		px_next = px;
		py_next = py;
		case (state)
			IDLE: begin
				if (IEN) begin
					// state_next = W_AREA;
					wa_next = wa + 1;
					wc_next = 0;
				end else begin
					// state_next = IDLE;
				end
			end
			W_AREA: begin
				if (wc<511) begin
					// state_next = W_AREA;
					wa_next = wa + 1;
					wc_next = wc + 1;
				end else begin
					// state_next = R_MASK;
					rc_next = 0;
				end
			end
			R_MASK: begin
				if (rc<51) begin
					// state_next = R_MASK;
					rc_next = rc + 1;
				end else begin
					// state_next = R_SCAN;
					rc_next = 0;
					lc_next = lc + 1;
					pc_next = pc + 1;
					px_next = px + 1;
				end
			end
			R_SCAN: begin	
				if (rc<9) begin
					// state_next = R_SCAN;
					rc_next = rc + 1;
				end else if (lc==127 && (pc>15998)) begin
					// state_next = RESET;
					rc_next = 0;
					lc_next = 0;
					pc_next = pc + 1;
					py_next = py + 1;
					px_next = 3;
				end else if (lc==127) begin
					// state_next = W_ROW;
					rc_next = 0;
					wc_next = 0;
					lc_next = 0;
					pc_next = pc + 1;
					py_next = py + 1;
					px_next = 3;
				end else begin
					// state_next = R_SCAN;
					rc_next = 0;
					lc_next = lc + 1;
					pc_next = pc + 1;
					px_next = px + 1;
				end
			end
			W_ROW: begin
				if (wc<128) begin
					// state_next = W_ROW;
					lc_next = lc + 1;
					wa_next = wa + 1;
					wc_next = wc + 1;
				end else begin
					// state_next = RESET;
					lc_next = 0;
					rc_next = 0;
				end
			end
			RESET: begin
				if (pc == 16383) begin
					// state_next = RESULT;
				end else if (rc < 49) begin
					// state_next = RESET;
					rc_next = rc + 1;
				end else begin
					// state_next = R_MASK;
					rc_next = 0;
				end
			end
			RESULT: begin
				// state_next = IDLE;
			end
			default: begin
				//state_next = IDLE;
			end
		endcase
	end
	// mv[i]
	always @ * begin
		for (i=0; i<49; i=i+1) begin
			mv_next[i] = mv[i];
		end
		if (state==R_MASK && rc<51 && rc>1) begin
			mv_next[rc-2] = (zero_check[rc-2]>0)? Q: 0;
		end else if (state==R_SCAN && rc<9 && rc >1) begin
			mv_next[6+(rc-2)*7] = (zero_check[6+(rc-2)*7]>0)? Q: 0;
			for (i=0; i<6; i=i+1) begin
				mv_next[i+(rc-2)*7] = mv[(i+1)+(rc-2)*7];
			end
		end else begin
		
		end
	end

	// mx[i]
	always @ * begin
		for (i=0; i<7; i=i+1) begin
			mx[7*i+0] = px-3;
			mx[7*i+1] = px-2;
			mx[7*i+2] = px-1;
			mx[7*i+3] = px;
			mx[7*i+4] = px+1;
			mx[7*i+5] = px+2;
			mx[7*i+6] = px+3;
		end
	end
	// my[i]
	always @ * begin
		for (i=0; i<7; i=i+1) begin
			my[i+0] = py-3;
			my[i+7] = py-2;
			my[i+14] = py-1;
			my[i+21] = py;
			my[i+28] = py+1;
			my[i+35] = py+2;
			my[i+42] = py+3;
		end
	end
	// zero_check[i]
	always @ * begin
		for (i=0; i<49; i=i+1) begin
			zero_check[i] = (mx[i]>2 && mx[i]<131 && my[i]>2 && my[i]<131)? 1'b1: 1'b0;
		end
	end
	
endmodule
