module lmfe_med49 (
	clk,
	RST,
	SEN,
	INS,
	DEL,
	MED
);

	//-- I/O declaration
	input  clk; //clk signal
	input  RST; //active hign asynchronous reset
	input  SEN; //sort enable signal from filter controller
	input  [7:0] INS; //unsorted insert number from filter controller
	input  [7:0] DEL; //wanted delete number from filter controller
	output [7:0] MED; //median number after caculate

	//--- reg and wire
	wire [7:0] hold00, hold01, hold02, hold03, hold04, hold05, hold06, hold07, hold08, hold09,
		hold10, hold11, hold12, hold13, hold14, hold15, hold16, hold17, hold18, hold19,
		hold20, hold21, hold22, hold23, hold24, hold25, hold26, hold27, hold28, hold29,
		hold30, hold31, hold32, hold33, hold34, hold35, hold36, hold37, hold38, hold39,
		hold40, hold41, hold42, hold43, hold44, hold45, hold46, hold47, hold48;
	wire [7:0] w_INS, w_DEL;

	assign MED = hold24;
	assign w_INS = (SEN)? 255: INS;
	assign w_DEL = (SEN)? 255: DEL;
//	assign w_min = 8'h00;
//	assign w_max = 8'hff;

	COMPARE C00 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(8'h00), .NXT(hold01), .HOLD(hold00));
	COMPARE C01 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold00), .NXT(hold02), .HOLD(hold01));
	COMPARE C02 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold01), .NXT(hold03), .HOLD(hold02));
	COMPARE C03 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold02), .NXT(hold04), .HOLD(hold03));
	COMPARE C04 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold03), .NXT(hold05), .HOLD(hold04));
	COMPARE C05 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold04), .NXT(hold06), .HOLD(hold05));
	COMPARE C06 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold05), .NXT(hold07), .HOLD(hold06));
	COMPARE C07 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold06), .NXT(hold08), .HOLD(hold07));
	COMPARE C08 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold07), .NXT(hold09), .HOLD(hold08));
	COMPARE C09 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold08), .NXT(hold10), .HOLD(hold09));
	COMPARE C10 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold09), .NXT(hold11), .HOLD(hold10));
	COMPARE C11 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold10), .NXT(hold12), .HOLD(hold11));
	COMPARE C12 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold11), .NXT(hold13), .HOLD(hold12));
	COMPARE C13 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold12), .NXT(hold14), .HOLD(hold13));
	COMPARE C14 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold13), .NXT(hold15), .HOLD(hold14));
	COMPARE C15 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold14), .NXT(hold16), .HOLD(hold15));
	COMPARE C16 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold15), .NXT(hold17), .HOLD(hold16));
	COMPARE C17 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold16), .NXT(hold18), .HOLD(hold17));
	COMPARE C18 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold17), .NXT(hold19), .HOLD(hold18));
	COMPARE C19 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold18), .NXT(hold20), .HOLD(hold19));
	COMPARE C20 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold19), .NXT(hold21), .HOLD(hold20));
	COMPARE C21 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold20), .NXT(hold22), .HOLD(hold21));
	COMPARE C22 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold21), .NXT(hold23), .HOLD(hold22));
	COMPARE C23 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold22), .NXT(hold24), .HOLD(hold23));
	COMPARE C24 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold23), .NXT(hold25), .HOLD(hold24));
	COMPARE C25 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold24), .NXT(hold26), .HOLD(hold25));
	COMPARE C26 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold25), .NXT(hold27), .HOLD(hold26));
	COMPARE C27 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold26), .NXT(hold28), .HOLD(hold27));
	COMPARE C28 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold27), .NXT(hold29), .HOLD(hold28));
	COMPARE C29 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold28), .NXT(hold30), .HOLD(hold29));
	COMPARE C30 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold29), .NXT(hold31), .HOLD(hold30));
	COMPARE C31 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold30), .NXT(hold32), .HOLD(hold31));
	COMPARE C32 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold31), .NXT(hold33), .HOLD(hold32));
	COMPARE C33 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold32), .NXT(hold34), .HOLD(hold33));
	COMPARE C34 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold33), .NXT(hold35), .HOLD(hold34));
	COMPARE C35 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold34), .NXT(hold36), .HOLD(hold35));
	COMPARE C36 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold35), .NXT(hold37), .HOLD(hold36));
	COMPARE C37 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold36), .NXT(hold38), .HOLD(hold37));
	COMPARE C38 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold37), .NXT(hold39), .HOLD(hold38));
	COMPARE C39 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold38), .NXT(hold40), .HOLD(hold39));
	COMPARE C40 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold39), .NXT(hold41), .HOLD(hold40));
	COMPARE C41 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold40), .NXT(hold42), .HOLD(hold41));
	COMPARE C42 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold41), .NXT(hold43), .HOLD(hold42));
	COMPARE C43 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold42), .NXT(hold44), .HOLD(hold43));
	COMPARE C44 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold43), .NXT(hold45), .HOLD(hold44));
	COMPARE C45 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold44), .NXT(hold46), .HOLD(hold45));
	COMPARE C46 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold45), .NXT(hold47), .HOLD(hold46));
	COMPARE C47 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold46), .NXT(hold48), .HOLD(hold47));
	COMPARE C48 (.clk(clk), .RST(RST), .INS(w_INS), .DEL(w_DEL), .PRE(hold47), .NXT(8'hff), .HOLD(hold48));

	endmodule

	module COMPARE (clk, RST, INS, DEL, PRE, NXT, HOLD);
	input clk; //clk signal
	input RST; //active hign asynchronous reset
	input [7:0] INS; //unsorted insert number from filter controller
	input [7:0] DEL; //wanted delete number from filter controller
	input [7:0] PRE; //hold number from front comparetor
	input [7:0] NXT; //hold number from next comparetor
	output reg [7:0] HOLD; //hold number of each comparetor

	reg [7:0] n_HOLD;

	always @ (posedge clk, posedge RST) begin
		if (RST) begin
			HOLD <= 8'hff;
		end else begin
			HOLD <= n_HOLD;
		end
	end

	always @ * begin
		n_HOLD = HOLD;
		if (INS<DEL) begin
			if (HOLD>INS && HOLD<=DEL && PRE>INS) begin
				n_HOLD = PRE;
			end else if (HOLD>INS && HOLD<=DEL && PRE<=INS) begin
				n_HOLD = INS;
			end
		end else if (INS>DEL) begin
			if (HOLD<INS && HOLD>=DEL && NXT<INS) begin
				n_HOLD = NXT;
			end else if (HOLD<INS && HOLD>=DEL && NXT>=INS) begin
				n_HOLD = INS;
			end
		end
	end

	endmodule
