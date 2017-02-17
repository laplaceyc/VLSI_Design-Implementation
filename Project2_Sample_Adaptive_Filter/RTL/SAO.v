module SAO ( clk, reset, in_en, din, sao_type, sao_band_pos, sao_eo_class, sao_offset, lcu_x, lcu_y, lcu_size, busy, finish);
input   clk;
input   reset;
input   in_en;
input   signed [7:0]  din;
input   [1:0]  sao_type;
input   [4:0]  sao_band_pos;
input          sao_eo_class;
input   [15:0] sao_offset;
input   [2:0]  lcu_x;
input   [2:0]  lcu_y;
input   [1:0]  lcu_size;
output  busy;
output  finish;

reg [13:0] sao_counter;
reg [13:0] pixel_num;
reg [7:0] ram_din;
wire [13:0] ram_waddr;

reg sao_off;
reg sao_bo;
reg sao_eo;

wire lcu_size_16;
wire lcu_size_32;
wire lcu_size_64;

wire lcu_label_16;
wire lcu_label_32;
wire lcu_label_64;

wire lcu_label_16_end;
wire lcu_label_32_end;
wire lcu_label_64_end;

reg cen;
reg wen;

wire [4:0] din_shift;
wire din_equa_band_0;
wire din_equa_band_1;
wire din_equa_band_2;
wire din_equa_band_3;
wire [3:0] bo_offset;
wire [7:0] din_bo;

reg busy;
reg finish;


wire work_enable;
reg [7:0] din_d[0:128];

reg [5:0] busy_cnt;
reg eo_type;
reg eo_class;
reg ver_eo_keep;
reg hor_eo_keep;

reg [4:0] sao_band_pos_syn;
reg [15:0] sao_offset_syn;

//EO signal
wire hor_category1;
wire hor_category2;
wire hor_category3;
wire hor_category4;

wire ver_category1;
wire ver_category2;
wire ver_category3;
wire ver_category4;

wire [3:0] ver_offset;
wire [3:0] hor_offset;
wire [3:0] eo_offset;
wire eo_keep;
wire [7:0] din_ver;
wire [7:0] din_hor;
wire [7:0] din_eo;
wire [7:0] ver_data_in1;
wire [7:0] ver_data_in2;
wire signed [8:0] ver_sub1;
wire signed [8:0] ver_sub2;
wire signed [8:0] hor_sub1;
wire signed [8:0] hor_sub2;
reg [15:0] eo_offset_syn;
reg eo_ready_d;
wire eo_start;

assign lcu_size_16 = (lcu_size == 0);
assign lcu_size_32 = (lcu_size == 1);
assign lcu_size_64 = (lcu_size == 2);

//each lcu block start flag
assign lcu_label_16 = in_en  && lcu_size_16 && (sao_counter[7:0] == 0);
assign lcu_label_32 = in_en  && lcu_size_32 && (sao_counter[9:0] == 0);
assign lcu_label_64 = in_en  && lcu_size_64 && (sao_counter[11:0] == 0);
//each lcu block end flag
assign lcu_label_16_end = in_en && lcu_size_16 && (sao_counter[7:0] == 8'hff);
assign lcu_label_32_end = in_en && lcu_size_32 && (sao_counter[9:0] == 10'h3ff);
assign lcu_label_64_end = in_en && lcu_size_64 && (sao_counter[11:0] == 12'hfff);

//BO operation
always@(posedge clk or posedge reset)
	if(reset)
	begin
		sao_band_pos_syn <= 0;
		sao_offset_syn <= 0;
	end
	else
	begin
		sao_band_pos_syn <= sao_band_pos;
		sao_offset_syn <= sao_offset;
	end

assign din_shift = din_d[0] >> 3;

assign din_equa_band_0 = (din_shift == sao_band_pos_syn);
assign din_equa_band_1 = (din_shift == sao_band_pos_syn+1);
assign din_equa_band_2 = (din_shift == sao_band_pos_syn+2);
assign din_equa_band_3 = (din_shift == sao_band_pos_syn+3);

assign bo_offset =  din_equa_band_0 ? sao_offset_syn[15:12] : 0 + 
					din_equa_band_1 ? sao_offset_syn[11: 8] : 0 + 
					din_equa_band_2 ? sao_offset_syn[ 7: 4] : 0 + 
					din_equa_band_3 ? sao_offset_syn[ 3: 0] : 0 ;
					
assign din_bo = din_d[0] + {{4{bo_offset[3]}}, bo_offset};

//EO operation
assign ver_sub1 = ver_data_in1 - ver_data_in2;
assign ver_sub2 = ver_data_in1 - din_d[0];

assign hor_sub1 = din_d[2] - din_d[3]; 
assign hor_sub2 = din_d[2] - din_d[1];

assign hor_category1 = hor_sub1[8] && hor_sub2[8];
assign hor_category2 = (hor_sub1[8] && (hor_sub2 == 0)) || (hor_sub2[8] && (hor_sub1 == 0));
assign hor_category3 = ((hor_sub1 > 0) && (hor_sub2 == 0)) || ((hor_sub2 > 0) && (hor_sub1 == 0));
assign hor_category4 = (hor_sub1 > 0) && (hor_sub2 > 0);

assign ver_category1 = ver_sub1[8] && ver_sub2[8];
assign ver_category2 = (ver_sub1[8] && (ver_sub2 == 0)) || (ver_sub2[8] && (ver_sub1 == 0)); 
assign ver_category3 = ((ver_sub1 > 0) && (ver_sub2 == 0)) || ((ver_sub2 > 0) && (ver_sub1 == 0)); 
assign ver_category4 = (ver_sub1 > 0) && (ver_sub2 > 0);

assign eo_offset = eo_class ? ver_offset : hor_offset;
assign ver_offset = ver_category1 ? eo_offset_syn[15:12] : 0 +
		    ver_category2 ? eo_offset_syn[11:8] : 0 +
		    ver_category3 ? eo_offset_syn[7:4] : 0 +
		    ver_category4 ? eo_offset_syn[3:0] : 0;
assign hor_offset = hor_category1 ? eo_offset_syn[15:12] : 0 +
		    hor_category2 ? eo_offset_syn[11:8] : 0 +
		    hor_category3 ? eo_offset_syn[7:4] : 0 +
		    hor_category4 ? eo_offset_syn[3:0] : 0;
assign eo_keep = eo_class ? ver_eo_keep : hor_eo_keep;
assign ver_data_in1 = lcu_size_16 ? din_d[16] :
		      lcu_size_32 ? din_d[32] :
		      lcu_size_64 ? din_d[64] : 0;
assign ver_data_in2 = lcu_size_16 ? din_d[32] :
		      lcu_size_32 ? din_d[64] :
		      lcu_size_64 ? din_d[128] : 0;

assign din_ver = eo_keep ? ver_data_in1 : (ver_data_in1 + {{4{ver_offset[3]}}, ver_offset});
assign din_hor = eo_keep ? din_d[2] : (din_d[2] + {{4{hor_offset[3]}}, hor_offset});


assign din_eo = eo_class ? din_ver : din_hor;

wire [7:0] test1 = din_d[0];	
wire [7:0] test2 = din_d[16];	
wire [7:0] test3 = din_d[32];	
wire [7:0] test4 = din_d[1];
wire [7:0] test5 = din_d[2];
wire [7:0] test6 = din_d[3];
reg [7:0] tmp;

always@(posedge clk or posedge reset)
	if(reset)
		tmp <= 0;
	else
		tmp <= din;


always@(posedge clk or posedge reset)
	if(reset)
		din_d[0] <= 0;
	else if(in_en) din_d[0] <= din;

always@(posedge clk or posedge reset)
	if(reset)
		hor_eo_keep <= 0;
	else if(lcu_size_16 && ((lcu_label_16 && !work_enable) || (pixel_num[3:0] == 4'he) || (pixel_num[3:0] == 4'hd)))
		hor_eo_keep <= 1;
	else if(lcu_size_32 && ((lcu_label_32 && !work_enable) || (pixel_num[4:0] == 5'h1e) || (pixel_num[4:0] == 5'h1d)))
		hor_eo_keep <= 1;
	else if(lcu_size_64 && ((lcu_label_64 && !work_enable) || (pixel_num[5:0] == 6'h3e) || (pixel_num[5:0] == 6'h3d)))
		hor_eo_keep <= 1;
	else 
		hor_eo_keep <= 0;

always@(posedge clk or posedge reset)
	if(reset)
		ver_eo_keep <= 0;
	else if(lcu_size_16 && (lcu_label_16 || ((pixel_num[10:7] == 4'he) && (pixel_num[3:0] == 4'he))))
		ver_eo_keep <= 1;
	else if(lcu_size_32 && (lcu_label_32 || ((pixel_num[11:7] == 5'h1e) && (pixel_num[4:0] == 5'h1e))))
		ver_eo_keep <= 1;
	else if(lcu_size_64 && (lcu_label_64 || ((pixel_num[12:7] == 6'h3e) && (pixel_num[5:0] == 6'h3e))))
		ver_eo_keep <= 1;
	else if(lcu_size_16 && (pixel_num[3:0] == 4'he))
		ver_eo_keep <= 0;
	else if(lcu_size_32 && (pixel_num[4:0] == 5'h1e))
		ver_eo_keep <= 0;
	else if(lcu_size_64 && (pixel_num[5:0] == 6'h3e))
		ver_eo_keep <= 0;


genvar i;
generate
for(i = 1; i < 129; i = i + 1)
begin:shift
always@(posedge clk or posedge reset)
	if(reset)
		din_d[i] <= 0;
	else
		din_d[i] <= din_d[i-1];
end
endgenerate			   

reg [6:0] eo_counter;
reg eo_ready;
reg busy_d;

assign eo_start = eo_ready && !eo_ready_d;
always@(posedge clk or posedge reset)
	if(reset)
		eo_ready_d <= 0;
	else
		eo_ready_d <= eo_ready;


always@(posedge clk or posedge reset)
	if(reset)
		eo_counter <= 0;
	else if(eo_start)
		eo_counter <= 0;
	else if(!eo_ready && (|eo_counter))
		eo_counter <= eo_counter + 1;
	else if(sao_eo && (lcu_label_16 || lcu_label_32 || lcu_label_64))
		eo_counter <= 1;


always@(posedge clk or posedge reset)
	if(reset)
		eo_ready <= 0;
	else if(busy_d && !busy)
		eo_ready <= 0;
	else if(sao_eo_class && lcu_size_16 && (eo_counter == 7'hf))
		eo_ready <= 1;
	else if(sao_eo_class && lcu_size_32 && (eo_counter == 7'h1f))
		eo_ready <= 1;
	else if(sao_eo_class && lcu_size_64 && (eo_counter == 7'h3f))
		eo_ready <= 1;
	else if(!sao_eo_class && (eo_counter == 7'h1))
		eo_ready <= 1;

always@(posedge clk or posedge reset)
	if(reset)
		eo_offset_syn <= 0;
	else if(sao_eo_class && (eo_counter == 7'hf))
		eo_offset_syn <= sao_offset;
	else if(!sao_eo_class && (eo_counter == 7'h1))
		eo_offset_syn <= sao_offset;


always@(posedge clk or posedge reset)
	if(reset)
	begin
		eo_type <= 0;
		eo_class <= 0;
	end
	else if(sao_eo && (|eo_counter))
	begin 
		eo_type <= 1;
		eo_class <= sao_eo_class;
	end
	else if(busy_d && !busy)
	begin
		eo_type <= 0;
		eo_class <= 0;
	end

always@(posedge clk or posedge reset)
	if(reset)
		busy_d <= 0;
	else
		busy_d <= busy;

always@(posedge clk or posedge reset)
	if(reset)
		busy_cnt <= 0;
	else if(busy)
		busy_cnt <= busy_cnt + 1;
	else
		busy_cnt <= 0;

always@(posedge clk or posedge reset)
	if(reset)
		busy <= 0;
	else if(eo_class & eo_type && lcu_size_16 && (sao_counter[7:0] == 8'b11101110)) 
		busy <= 1;
	else if(!eo_class & eo_type && lcu_size_16 && (sao_counter[7:0] == 8'b11111100)) 
		busy <= 1;
	else if(eo_class & eo_type && lcu_size_32 && (sao_counter[9:0] == 10'b1111011110)) 
		busy <= 1;
	else if(!eo_class & eo_type && lcu_size_32 && (sao_counter[9:0] == 10'b1111111100)) 
		busy <= 1;
	else if(eo_class & eo_type && lcu_size_64 && (sao_counter[11:0] == 12'b111110111110)) 
		busy <= 1;
	else if(!eo_class & eo_type && lcu_size_64 && (sao_counter[11:0] == 12'b111111111100)) 
		busy <= 1;
	else if(eo_class && lcu_size_16 && (busy_cnt == 4'hf))
		busy <= 0;
	else if(eo_class && lcu_size_32 && (busy_cnt == 5'h1f))
		busy <= 0;
	else if(eo_class && lcu_size_64 && (busy_cnt == 6'h3f))
		busy <= 0;
	else if(!eo_class && (busy_cnt == 4'h1))
		busy <= 0;

always@(posedge clk or posedge reset)
	if(reset)
		sao_off <= 0;
	else if(in_en && (sao_type == 0))
		sao_off <= 1;
	else
		sao_off <= 0;

always@(posedge clk or posedge reset)
	if(reset)
		sao_bo <= 0;
	else if(in_en && (sao_type == 1))
		sao_bo <= 1;
	else
		sao_bo <= 0;

always@(posedge clk or posedge reset)
	if(reset)
		sao_eo <= 0;
	else if(in_en && (sao_type == 2))
		sao_eo <= 1;
	else
		sao_eo <= 0;

assign work_enable = sao_off || sao_bo || eo_ready;

always@(posedge clk or posedge reset)
	if(reset)
		finish <= 0;
	else if(finish)
		finish <= 0;
	else if(pixel_num == 14'd16383)
		finish <= 1;

always@(posedge clk or posedge reset)
	if(reset)
		cen <= 1;
	else if(work_enable)
		cen <= 0;
	else
		cen <= 1;

always@(posedge clk or posedge reset)
	if(reset)
		wen <= 1;
	else if(work_enable)
		wen <= 0;
	else
		wen <= 1;

always@(posedge clk or posedge reset)
	if(reset)
		sao_counter <= 0;
	else if(work_enable)
		sao_counter <= sao_counter + 1;

always@(posedge clk or posedge reset)
	if(reset)
		pixel_num <= 0;
	else if(lcu_label_16) 
		pixel_num <= (lcu_x << 4) + (lcu_y << 11);
	else if(lcu_label_32) 
		pixel_num <= (lcu_x << 5) + (lcu_y << 12);
	else if(lcu_label_64)
		pixel_num <= (lcu_x << 6) + (lcu_y << 13);
	else if(lcu_size_16 && (sao_counter[3:0] == 4'h0))
		pixel_num <= pixel_num + 113;
	else if(lcu_size_32 && (sao_counter[4:0] == 5'h00))
		pixel_num <= pixel_num + 97;
	else if(lcu_size_64 && (sao_counter[5:0] == 6'h00))
		pixel_num <= pixel_num + 65;
	else if(work_enable)
		pixel_num <= pixel_num + 1;

assign ram_waddr = pixel_num;

always@(posedge clk or posedge reset)
	if(reset)
		ram_din <= 0;
	else if(work_enable && eo_type)
		ram_din <= din_eo;
	else if(work_enable && sao_off)
		ram_din <= din_d[0];
	else if(work_enable && sao_bo)
		ram_din <= din_bo;




  sram_16384x8 golden_sram(.Q( ), .CLK(clk), .CEN(cen ), .WEN(wen ), .A(ram_waddr ), .D(ram_din )); 
     
endmodule