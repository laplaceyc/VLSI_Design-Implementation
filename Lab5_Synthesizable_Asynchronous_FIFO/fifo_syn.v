/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Jan  4 10:37:07 2017
/////////////////////////////////////////////////////////////


module sync_r2w ( wq2_rptr, rptr, wclk, wrst_n );
  output [8:0] wq2_rptr;
  input [8:0] rptr;
  input wclk, wrst_n;
  wire   n1, n2;
  wire   [8:0] wq1_rptr;

  DFFRX1 \wq2_rptr_reg[0]  ( .D(wq1_rptr[0]), .CK(wclk), .RN(n2), .Q(
        wq2_rptr[0]) );
  DFFRX1 \wq2_rptr_reg[7]  ( .D(wq1_rptr[7]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[7]) );
  DFFRX1 \wq2_rptr_reg[5]  ( .D(wq1_rptr[5]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[5]) );
  DFFRX1 \wq2_rptr_reg[8]  ( .D(wq1_rptr[8]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[8]) );
  DFFRX1 \wq2_rptr_reg[6]  ( .D(wq1_rptr[6]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[6]) );
  DFFRX1 \wq2_rptr_reg[4]  ( .D(wq1_rptr[4]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[4]) );
  DFFRX1 \wq2_rptr_reg[3]  ( .D(wq1_rptr[3]), .CK(wclk), .RN(n1), .Q(
        wq2_rptr[3]) );
  DFFRX1 \wq2_rptr_reg[2]  ( .D(wq1_rptr[2]), .CK(wclk), .RN(n2), .Q(
        wq2_rptr[2]) );
  DFFRX1 \wq2_rptr_reg[1]  ( .D(wq1_rptr[1]), .CK(wclk), .RN(n2), .Q(
        wq2_rptr[1]) );
  DFFRX1 \wq1_rptr_reg[8]  ( .D(rptr[8]), .CK(wclk), .RN(n1), .Q(wq1_rptr[8])
         );
  DFFRX1 \wq1_rptr_reg[7]  ( .D(rptr[7]), .CK(wclk), .RN(n1), .Q(wq1_rptr[7])
         );
  DFFRX1 \wq1_rptr_reg[6]  ( .D(rptr[6]), .CK(wclk), .RN(n1), .Q(wq1_rptr[6])
         );
  DFFRX1 \wq1_rptr_reg[5]  ( .D(rptr[5]), .CK(wclk), .RN(n1), .Q(wq1_rptr[5])
         );
  DFFRX1 \wq1_rptr_reg[4]  ( .D(rptr[4]), .CK(wclk), .RN(n1), .Q(wq1_rptr[4])
         );
  DFFRX1 \wq1_rptr_reg[3]  ( .D(rptr[3]), .CK(wclk), .RN(n1), .Q(wq1_rptr[3])
         );
  DFFRX1 \wq1_rptr_reg[2]  ( .D(rptr[2]), .CK(wclk), .RN(n2), .Q(wq1_rptr[2])
         );
  DFFRX1 \wq1_rptr_reg[1]  ( .D(rptr[1]), .CK(wclk), .RN(n2), .Q(wq1_rptr[1])
         );
  DFFRX1 \wq1_rptr_reg[0]  ( .D(rptr[0]), .CK(wclk), .RN(n2), .Q(wq1_rptr[0])
         );
  CLKBUFX3 U3 ( .A(wrst_n), .Y(n1) );
  CLKBUFX3 U4 ( .A(wrst_n), .Y(n2) );
endmodule


module sync_w2r ( rq2_wptr, wptr, rclk, rrst_n );
  output [8:0] rq2_wptr;
  input [8:0] wptr;
  input rclk, rrst_n;
  wire   n1, n2;
  wire   [8:0] rq1_wptr;

  DFFRX1 \rq2_wptr_reg[0]  ( .D(rq1_wptr[0]), .CK(rclk), .RN(n2), .Q(
        rq2_wptr[0]) );
  DFFRX1 \rq2_wptr_reg[5]  ( .D(rq1_wptr[5]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[5]) );
  DFFRX1 \rq2_wptr_reg[8]  ( .D(rq1_wptr[8]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[8]) );
  DFFRX1 \rq2_wptr_reg[7]  ( .D(rq1_wptr[7]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[7]) );
  DFFRX1 \rq2_wptr_reg[6]  ( .D(rq1_wptr[6]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[6]) );
  DFFRX1 \rq2_wptr_reg[4]  ( .D(rq1_wptr[4]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[4]) );
  DFFRX1 \rq2_wptr_reg[3]  ( .D(rq1_wptr[3]), .CK(rclk), .RN(n1), .Q(
        rq2_wptr[3]) );
  DFFRX1 \rq2_wptr_reg[2]  ( .D(rq1_wptr[2]), .CK(rclk), .RN(n2), .Q(
        rq2_wptr[2]) );
  DFFRX1 \rq2_wptr_reg[1]  ( .D(rq1_wptr[1]), .CK(rclk), .RN(n2), .Q(
        rq2_wptr[1]) );
  DFFRX1 \rq1_wptr_reg[8]  ( .D(wptr[8]), .CK(rclk), .RN(n1), .Q(rq1_wptr[8])
         );
  DFFRX1 \rq1_wptr_reg[7]  ( .D(wptr[7]), .CK(rclk), .RN(n1), .Q(rq1_wptr[7])
         );
  DFFRX1 \rq1_wptr_reg[6]  ( .D(wptr[6]), .CK(rclk), .RN(n1), .Q(rq1_wptr[6])
         );
  DFFRX1 \rq1_wptr_reg[5]  ( .D(wptr[5]), .CK(rclk), .RN(n1), .Q(rq1_wptr[5])
         );
  DFFRX1 \rq1_wptr_reg[4]  ( .D(wptr[4]), .CK(rclk), .RN(n1), .Q(rq1_wptr[4])
         );
  DFFRX1 \rq1_wptr_reg[3]  ( .D(wptr[3]), .CK(rclk), .RN(n1), .Q(rq1_wptr[3])
         );
  DFFRX1 \rq1_wptr_reg[2]  ( .D(wptr[2]), .CK(rclk), .RN(n2), .Q(rq1_wptr[2])
         );
  DFFRX1 \rq1_wptr_reg[1]  ( .D(wptr[1]), .CK(rclk), .RN(n2), .Q(rq1_wptr[1])
         );
  DFFRX1 \rq1_wptr_reg[0]  ( .D(wptr[0]), .CK(rclk), .RN(n2), .Q(rq1_wptr[0])
         );
  CLKBUFX3 U3 ( .A(rrst_n), .Y(n1) );
  CLKBUFX3 U4 ( .A(rrst_n), .Y(n2) );
endmodule


module rptr_empty_ADDRSIZE8 ( rempty, fifo_almost_empty_r, fifo_error_r, raddr, 
        rptr, rq2_wptr, rinc, rclk, rrst_n );
  output [7:0] raddr;
  output [8:0] rptr;
  input [8:0] rq2_wptr;
  input rinc, rclk, rrst_n;
  output rempty, fifo_almost_empty_r, fifo_error_r;
  wire   N3, alrempty_val, temp, N6, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, \add_119/carry[8] ,
         \add_119/carry[7] , \add_119/carry[6] , \add_119/carry[5] ,
         \add_119/carry[4] , \add_119/carry[3] , \add_119/carry[2] ,
         \add_119/carry[1] , \add_116/carry[8] , \add_116/carry[7] ,
         \add_116/carry[6] , \add_116/carry[5] , \add_116/carry[4] ,
         \add_116/carry[3] , \add_116/carry[2] , \add_116/carry[1] , n1, n34,
         n35;
  wire   [8:0] rbin;
  wire   [8:0] rbinnext;
  wire   [7:0] rgraynext;
  wire   [8:0] alrbinnext;
  assign fifo_error_r = N6;

  DFFSX1 temp_reg ( .D(n35), .CK(rclk), .SN(n34), .Q(temp) );
  DFFRX1 \rbin_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n34), .Q(rbin[8]) );
  DFFRX1 \rbin_reg[4]  ( .D(rbinnext[4]), .CK(rclk), .RN(n1), .Q(rbin[4]) );
  DFFRX1 \rbin_reg[5]  ( .D(rbinnext[5]), .CK(rclk), .RN(n1), .Q(rbin[5]) );
  DFFRX1 \rbin_reg[6]  ( .D(rbinnext[6]), .CK(rclk), .RN(n1), .Q(rbin[6]) );
  DFFRX1 \rbin_reg[7]  ( .D(rbinnext[7]), .CK(rclk), .RN(n34), .Q(rbin[7]) );
  DFFRX1 \rbin_reg[1]  ( .D(rbinnext[1]), .CK(rclk), .RN(n1), .Q(rbin[1]) );
  DFFRX1 \rbin_reg[2]  ( .D(rbinnext[2]), .CK(rclk), .RN(n1), .Q(rbin[2]) );
  DFFRX1 \rbin_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(n1), .Q(rbin[3]) );
  DFFRX1 \rbin_reg[0]  ( .D(rbinnext[0]), .CK(rclk), .RN(n1), .Q(rbin[0]) );
  DFFSX1 rempty_reg ( .D(n35), .CK(rclk), .SN(n34), .Q(rempty) );
  DFFSX1 fifo_almost_empty_r_reg ( .D(alrempty_val), .CK(rclk), .SN(n34), .Q(
        fifo_almost_empty_r) );
  EDFFX1 \raddr_reg[0]  ( .D(rbin[0]), .E(N3), .CK(rclk), .Q(raddr[0]) );
  EDFFX1 \raddr_reg[1]  ( .D(rbin[1]), .E(N3), .CK(rclk), .Q(raddr[1]) );
  EDFFX1 \raddr_reg[2]  ( .D(rbin[2]), .E(N3), .CK(rclk), .Q(raddr[2]) );
  EDFFX1 \raddr_reg[3]  ( .D(rbin[3]), .E(N3), .CK(rclk), .Q(raddr[3]) );
  EDFFX1 \raddr_reg[4]  ( .D(rbin[4]), .E(N3), .CK(rclk), .Q(raddr[4]) );
  EDFFX1 \raddr_reg[5]  ( .D(rbin[5]), .E(N3), .CK(rclk), .Q(raddr[5]) );
  EDFFX1 \raddr_reg[6]  ( .D(rbin[6]), .E(N3), .CK(rclk), .Q(raddr[6]) );
  EDFFX1 \raddr_reg[7]  ( .D(rbin[7]), .E(N3), .CK(rclk), .Q(raddr[7]) );
  DFFRX1 \rptr_reg[0]  ( .D(rgraynext[0]), .CK(rclk), .RN(n1), .Q(rptr[0]) );
  DFFRX1 \rptr_reg[1]  ( .D(rgraynext[1]), .CK(rclk), .RN(n1), .Q(rptr[1]) );
  DFFRX1 \rptr_reg[2]  ( .D(rgraynext[2]), .CK(rclk), .RN(n1), .Q(rptr[2]) );
  DFFRX1 \rptr_reg[3]  ( .D(rgraynext[3]), .CK(rclk), .RN(n1), .Q(rptr[3]) );
  DFFRX1 \rptr_reg[4]  ( .D(rgraynext[4]), .CK(rclk), .RN(n1), .Q(rptr[4]) );
  DFFRX1 \rptr_reg[5]  ( .D(rgraynext[5]), .CK(rclk), .RN(n34), .Q(rptr[5]) );
  DFFRX1 \rptr_reg[6]  ( .D(rgraynext[6]), .CK(rclk), .RN(n34), .Q(rptr[6]) );
  DFFRX1 \rptr_reg[8]  ( .D(rbinnext[8]), .CK(rclk), .RN(n34), .Q(rptr[8]) );
  DFFRX1 \rptr_reg[7]  ( .D(rgraynext[7]), .CK(rclk), .RN(n34), .Q(rptr[7]) );
  NOR4X1 U3 ( .A(n8), .B(n9), .C(n10), .D(n11), .Y(n7) );
  XOR2X1 U4 ( .A(alrbinnext[1]), .B(n14), .Y(n9) );
  XOR2X1 U5 ( .A(alrbinnext[2]), .B(n15), .Y(n8) );
  XOR2X1 U6 ( .A(alrbinnext[3]), .B(n13), .Y(n10) );
  XOR2X1 U7 ( .A(rbinnext[7]), .B(rbinnext[8]), .Y(rgraynext[7]) );
  XOR2X1 U8 ( .A(rbinnext[6]), .B(rbinnext[7]), .Y(rgraynext[6]) );
  NAND2X1 U9 ( .A(n2), .B(n3), .Y(alrempty_val) );
  NAND4X1 U10 ( .A(n4), .B(n5), .C(n6), .D(n7), .Y(n3) );
  XOR2X1 U11 ( .A(n22), .B(alrbinnext[0]), .Y(n4) );
  XNOR2X1 U12 ( .A(alrbinnext[5]), .B(n21), .Y(n5) );
  CLKINVX1 U13 ( .A(n2), .Y(n35) );
  XOR2X1 U14 ( .A(rbinnext[4]), .B(rbinnext[5]), .Y(rgraynext[4]) );
  XOR2X1 U15 ( .A(rbinnext[3]), .B(rbinnext[4]), .Y(rgraynext[3]) );
  XOR2X1 U16 ( .A(rbinnext[2]), .B(rbinnext[3]), .Y(rgraynext[2]) );
  XOR2X1 U17 ( .A(rbinnext[1]), .B(rbinnext[2]), .Y(rgraynext[1]) );
  XOR2X1 U18 ( .A(rbinnext[5]), .B(rbinnext[6]), .Y(rgraynext[5]) );
  XOR2X1 U19 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  NOR2BX1 U20 ( .AN(rinc), .B(rempty), .Y(N3) );
  NAND4X1 U21 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n2) );
  XNOR2X1 U22 ( .A(rq2_wptr[0]), .B(rgraynext[0]), .Y(n23) );
  XNOR2X1 U23 ( .A(rq2_wptr[5]), .B(rgraynext[5]), .Y(n24) );
  NOR4X1 U24 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  NOR3X1 U25 ( .A(n16), .B(n17), .C(n18), .Y(n6) );
  XOR2X1 U26 ( .A(alrbinnext[6]), .B(n19), .Y(n17) );
  XOR2X1 U27 ( .A(rq2_wptr[8]), .B(alrbinnext[8]), .Y(n18) );
  XOR2X1 U28 ( .A(alrbinnext[7]), .B(n20), .Y(n16) );
  NOR3X1 U29 ( .A(n31), .B(n32), .C(n33), .Y(n25) );
  XOR2X1 U30 ( .A(rq2_wptr[6]), .B(rgraynext[6]), .Y(n32) );
  XOR2X1 U31 ( .A(rq2_wptr[8]), .B(rbinnext[8]), .Y(n33) );
  XOR2X1 U32 ( .A(rq2_wptr[7]), .B(rgraynext[7]), .Y(n31) );
  XOR2X1 U33 ( .A(alrbinnext[4]), .B(n12), .Y(n11) );
  XOR2X1 U34 ( .A(rq2_wptr[4]), .B(alrbinnext[5]), .Y(n12) );
  XOR2X1 U35 ( .A(rq2_wptr[6]), .B(alrbinnext[7]), .Y(n19) );
  XOR2X1 U36 ( .A(rq2_wptr[3]), .B(alrbinnext[4]), .Y(n13) );
  XOR2X1 U37 ( .A(rq2_wptr[7]), .B(alrbinnext[8]), .Y(n20) );
  XOR2X1 U38 ( .A(rq2_wptr[5]), .B(alrbinnext[6]), .Y(n21) );
  XNOR2X1 U39 ( .A(alrbinnext[1]), .B(rq2_wptr[0]), .Y(n22) );
  XOR2X1 U40 ( .A(rq2_wptr[4]), .B(rgraynext[4]), .Y(n30) );
  XOR2X1 U41 ( .A(rq2_wptr[3]), .B(rgraynext[3]), .Y(n29) );
  XOR2X1 U42 ( .A(rq2_wptr[2]), .B(rgraynext[2]), .Y(n27) );
  XOR2X1 U43 ( .A(rq2_wptr[1]), .B(rgraynext[1]), .Y(n28) );
  XOR2X1 U44 ( .A(rq2_wptr[2]), .B(alrbinnext[3]), .Y(n15) );
  XOR2X1 U45 ( .A(rq2_wptr[1]), .B(alrbinnext[2]), .Y(n14) );
  CLKBUFX3 U46 ( .A(rrst_n), .Y(n1) );
  CLKBUFX3 U47 ( .A(rrst_n), .Y(n34) );
  AND2X2 U48 ( .A(temp), .B(rinc), .Y(N6) );
  XOR2X1 U49 ( .A(rbinnext[8]), .B(\add_119/carry[8] ), .Y(alrbinnext[8]) );
  AND2X1 U50 ( .A(rbinnext[7]), .B(\add_119/carry[7] ), .Y(\add_119/carry[8] )
         );
  XOR2X1 U51 ( .A(rbinnext[7]), .B(\add_119/carry[7] ), .Y(alrbinnext[7]) );
  AND2X1 U52 ( .A(rbinnext[6]), .B(\add_119/carry[6] ), .Y(\add_119/carry[7] )
         );
  XOR2X1 U53 ( .A(rbinnext[6]), .B(\add_119/carry[6] ), .Y(alrbinnext[6]) );
  AND2X1 U54 ( .A(rbinnext[5]), .B(\add_119/carry[5] ), .Y(\add_119/carry[6] )
         );
  XOR2X1 U55 ( .A(rbinnext[5]), .B(\add_119/carry[5] ), .Y(alrbinnext[5]) );
  AND2X1 U56 ( .A(rbinnext[4]), .B(\add_119/carry[4] ), .Y(\add_119/carry[5] )
         );
  XOR2X1 U57 ( .A(rbinnext[4]), .B(\add_119/carry[4] ), .Y(alrbinnext[4]) );
  AND2X1 U58 ( .A(rbinnext[3]), .B(\add_119/carry[3] ), .Y(\add_119/carry[4] )
         );
  XOR2X1 U59 ( .A(rbinnext[3]), .B(\add_119/carry[3] ), .Y(alrbinnext[3]) );
  AND2X1 U60 ( .A(rbinnext[2]), .B(\add_119/carry[2] ), .Y(\add_119/carry[3] )
         );
  XOR2X1 U61 ( .A(rbinnext[2]), .B(\add_119/carry[2] ), .Y(alrbinnext[2]) );
  AND2X1 U62 ( .A(rbinnext[1]), .B(\add_119/carry[1] ), .Y(\add_119/carry[2] )
         );
  XOR2X1 U63 ( .A(rbinnext[1]), .B(\add_119/carry[1] ), .Y(alrbinnext[1]) );
  AND2X1 U64 ( .A(N3), .B(rbinnext[0]), .Y(\add_119/carry[1] ) );
  XOR2X1 U65 ( .A(N3), .B(rbinnext[0]), .Y(alrbinnext[0]) );
  XOR2X1 U66 ( .A(rbin[8]), .B(\add_116/carry[8] ), .Y(rbinnext[8]) );
  AND2X1 U67 ( .A(rbin[7]), .B(\add_116/carry[7] ), .Y(\add_116/carry[8] ) );
  XOR2X1 U68 ( .A(rbin[7]), .B(\add_116/carry[7] ), .Y(rbinnext[7]) );
  AND2X1 U69 ( .A(rbin[6]), .B(\add_116/carry[6] ), .Y(\add_116/carry[7] ) );
  XOR2X1 U70 ( .A(rbin[6]), .B(\add_116/carry[6] ), .Y(rbinnext[6]) );
  AND2X1 U71 ( .A(rbin[5]), .B(\add_116/carry[5] ), .Y(\add_116/carry[6] ) );
  XOR2X1 U72 ( .A(rbin[5]), .B(\add_116/carry[5] ), .Y(rbinnext[5]) );
  AND2X1 U73 ( .A(rbin[4]), .B(\add_116/carry[4] ), .Y(\add_116/carry[5] ) );
  XOR2X1 U74 ( .A(rbin[4]), .B(\add_116/carry[4] ), .Y(rbinnext[4]) );
  AND2X1 U75 ( .A(rbin[3]), .B(\add_116/carry[3] ), .Y(\add_116/carry[4] ) );
  XOR2X1 U76 ( .A(rbin[3]), .B(\add_116/carry[3] ), .Y(rbinnext[3]) );
  AND2X1 U77 ( .A(rbin[2]), .B(\add_116/carry[2] ), .Y(\add_116/carry[3] ) );
  XOR2X1 U78 ( .A(rbin[2]), .B(\add_116/carry[2] ), .Y(rbinnext[2]) );
  AND2X1 U79 ( .A(rbin[1]), .B(\add_116/carry[1] ), .Y(\add_116/carry[2] ) );
  XOR2X1 U80 ( .A(rbin[1]), .B(\add_116/carry[1] ), .Y(rbinnext[1]) );
  AND2X1 U81 ( .A(N3), .B(rbin[0]), .Y(\add_116/carry[1] ) );
  XOR2X1 U82 ( .A(N3), .B(rbin[0]), .Y(rbinnext[0]) );
endmodule


module wptr_full_ADDRSIZE8 ( wfull, fifo_almost_full_w, fifo_error_w, waddr, 
        wptr, wq2_rptr, winc, wclk, wrst_n );
  output [7:0] waddr;
  output [8:0] wptr;
  input [8:0] wq2_rptr;
  input winc, wclk, wrst_n;
  output wfull, fifo_almost_full_w, fifo_error_w;
  wire   \wbin[8] , N2, alwfull_val, temp, N7, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, \add_162/carry[8] ,
         \add_162/carry[7] , \add_162/carry[6] , \add_162/carry[5] ,
         \add_162/carry[4] , \add_162/carry[3] , \add_162/carry[2] ,
         \add_162/carry[1] , \add_159/carry[8] , \add_159/carry[7] ,
         \add_159/carry[6] , \add_159/carry[5] , \add_159/carry[4] ,
         \add_159/carry[3] , \add_159/carry[2] , \add_159/carry[1] , n1, n34,
         n35;
  wire   [8:0] wbinnext;
  wire   [7:0] wgraynext;
  wire   [8:0] alwbinnext;
  assign fifo_error_w = N7;

  DFFRX1 temp_reg ( .D(n35), .CK(wclk), .RN(n34), .Q(temp) );
  DFFRX1 \wbin_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n34), .Q(\wbin[8] )
         );
  DFFRX1 \wbin_reg[5]  ( .D(wbinnext[5]), .CK(wclk), .RN(n1), .Q(waddr[5]) );
  DFFRX1 \wbin_reg[6]  ( .D(wbinnext[6]), .CK(wclk), .RN(n34), .Q(waddr[6]) );
  DFFRX1 \wbin_reg[7]  ( .D(wbinnext[7]), .CK(wclk), .RN(n34), .Q(waddr[7]) );
  DFFRX1 wfull_reg ( .D(n35), .CK(wclk), .RN(n1), .Q(wfull) );
  DFFRX1 \wbin_reg[1]  ( .D(wbinnext[1]), .CK(wclk), .RN(n1), .Q(waddr[1]) );
  DFFRX1 \wbin_reg[2]  ( .D(wbinnext[2]), .CK(wclk), .RN(n1), .Q(waddr[2]) );
  DFFRX1 \wbin_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(n1), .Q(waddr[3]) );
  DFFRX1 \wbin_reg[4]  ( .D(wbinnext[4]), .CK(wclk), .RN(n1), .Q(waddr[4]) );
  DFFRX1 \wbin_reg[0]  ( .D(wbinnext[0]), .CK(wclk), .RN(n1), .Q(waddr[0]) );
  DFFRX1 fifo_almost_full_w_reg ( .D(alwfull_val), .CK(wclk), .RN(n34), .Q(
        fifo_almost_full_w) );
  DFFRX1 \wptr_reg[0]  ( .D(wgraynext[0]), .CK(wclk), .RN(n1), .Q(wptr[0]) );
  DFFRX1 \wptr_reg[1]  ( .D(wgraynext[1]), .CK(wclk), .RN(n1), .Q(wptr[1]) );
  DFFRX1 \wptr_reg[2]  ( .D(wgraynext[2]), .CK(wclk), .RN(n1), .Q(wptr[2]) );
  DFFRX1 \wptr_reg[3]  ( .D(wgraynext[3]), .CK(wclk), .RN(n1), .Q(wptr[3]) );
  DFFRX1 \wptr_reg[4]  ( .D(wgraynext[4]), .CK(wclk), .RN(n1), .Q(wptr[4]) );
  DFFRX1 \wptr_reg[5]  ( .D(wgraynext[5]), .CK(wclk), .RN(n34), .Q(wptr[5]) );
  DFFRX1 \wptr_reg[6]  ( .D(wgraynext[6]), .CK(wclk), .RN(n34), .Q(wptr[6]) );
  DFFRX1 \wptr_reg[8]  ( .D(wbinnext[8]), .CK(wclk), .RN(n34), .Q(wptr[8]) );
  DFFRX1 \wptr_reg[7]  ( .D(wgraynext[7]), .CK(wclk), .RN(n34), .Q(wptr[7]) );
  NOR4X1 U3 ( .A(n8), .B(n9), .C(n10), .D(n11), .Y(n7) );
  XOR2X1 U4 ( .A(alwbinnext[1]), .B(n14), .Y(n9) );
  XOR2X1 U5 ( .A(alwbinnext[2]), .B(n15), .Y(n8) );
  XOR2X1 U6 ( .A(alwbinnext[3]), .B(n13), .Y(n10) );
  XOR2X1 U7 ( .A(wbinnext[6]), .B(wbinnext[7]), .Y(wgraynext[6]) );
  XOR2X1 U8 ( .A(wbinnext[4]), .B(wbinnext[5]), .Y(wgraynext[4]) );
  XOR2X1 U9 ( .A(wbinnext[5]), .B(wbinnext[6]), .Y(wgraynext[5]) );
  XOR2X1 U10 ( .A(wbinnext[7]), .B(wbinnext[8]), .Y(wgraynext[7]) );
  NAND2X1 U11 ( .A(n2), .B(n3), .Y(alwfull_val) );
  NAND4X1 U12 ( .A(n4), .B(n5), .C(n6), .D(n7), .Y(n3) );
  XOR2X1 U13 ( .A(n22), .B(alwbinnext[0]), .Y(n4) );
  XNOR2X1 U14 ( .A(alwbinnext[5]), .B(n21), .Y(n5) );
  CLKINVX1 U15 ( .A(n2), .Y(n35) );
  XOR2X1 U16 ( .A(wbinnext[3]), .B(wbinnext[4]), .Y(wgraynext[3]) );
  XOR2X1 U17 ( .A(wbinnext[2]), .B(wbinnext[3]), .Y(wgraynext[2]) );
  XOR2X1 U18 ( .A(wbinnext[1]), .B(wbinnext[2]), .Y(wgraynext[1]) );
  XOR2X1 U19 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  NOR3X1 U20 ( .A(n31), .B(n32), .C(n33), .Y(n25) );
  XNOR2X1 U21 ( .A(wbinnext[8]), .B(wq2_rptr[8]), .Y(n32) );
  XOR2X1 U22 ( .A(wq2_rptr[6]), .B(wgraynext[6]), .Y(n31) );
  XNOR2X1 U23 ( .A(wq2_rptr[7]), .B(wgraynext[7]), .Y(n33) );
  NAND4X1 U24 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n2) );
  XNOR2X1 U25 ( .A(wq2_rptr[0]), .B(wgraynext[0]), .Y(n23) );
  XNOR2X1 U26 ( .A(wq2_rptr[5]), .B(wgraynext[5]), .Y(n24) );
  NOR4X1 U27 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  NOR3X1 U28 ( .A(n16), .B(n17), .C(n18), .Y(n6) );
  XNOR2X1 U29 ( .A(alwbinnext[8]), .B(wq2_rptr[8]), .Y(n17) );
  XOR2X1 U30 ( .A(alwbinnext[6]), .B(n20), .Y(n16) );
  XNOR2X1 U31 ( .A(alwbinnext[7]), .B(n19), .Y(n18) );
  XOR2X1 U32 ( .A(alwbinnext[4]), .B(n12), .Y(n11) );
  XOR2X1 U33 ( .A(wq2_rptr[4]), .B(alwbinnext[5]), .Y(n12) );
  NOR2BX1 U34 ( .AN(winc), .B(wfull), .Y(N2) );
  XOR2X1 U35 ( .A(wq2_rptr[4]), .B(wgraynext[4]), .Y(n30) );
  XOR2X1 U36 ( .A(wq2_rptr[3]), .B(alwbinnext[4]), .Y(n13) );
  XOR2X1 U37 ( .A(wq2_rptr[2]), .B(alwbinnext[3]), .Y(n15) );
  XOR2X1 U38 ( .A(wq2_rptr[6]), .B(alwbinnext[7]), .Y(n20) );
  XOR2X1 U39 ( .A(wq2_rptr[5]), .B(alwbinnext[6]), .Y(n21) );
  XOR2X1 U40 ( .A(wq2_rptr[7]), .B(alwbinnext[8]), .Y(n19) );
  XNOR2X1 U41 ( .A(alwbinnext[1]), .B(wq2_rptr[0]), .Y(n22) );
  XOR2X1 U42 ( .A(wq2_rptr[3]), .B(wgraynext[3]), .Y(n29) );
  XOR2X1 U43 ( .A(wq2_rptr[2]), .B(wgraynext[2]), .Y(n27) );
  XOR2X1 U44 ( .A(wq2_rptr[1]), .B(wgraynext[1]), .Y(n28) );
  XOR2X1 U45 ( .A(wq2_rptr[1]), .B(alwbinnext[2]), .Y(n14) );
  CLKBUFX3 U46 ( .A(wrst_n), .Y(n1) );
  CLKBUFX3 U47 ( .A(wrst_n), .Y(n34) );
  AND2X2 U48 ( .A(winc), .B(temp), .Y(N7) );
  XOR2X1 U49 ( .A(wbinnext[8]), .B(\add_162/carry[8] ), .Y(alwbinnext[8]) );
  AND2X1 U50 ( .A(wbinnext[7]), .B(\add_162/carry[7] ), .Y(\add_162/carry[8] )
         );
  XOR2X1 U51 ( .A(wbinnext[7]), .B(\add_162/carry[7] ), .Y(alwbinnext[7]) );
  AND2X1 U52 ( .A(wbinnext[6]), .B(\add_162/carry[6] ), .Y(\add_162/carry[7] )
         );
  XOR2X1 U53 ( .A(wbinnext[6]), .B(\add_162/carry[6] ), .Y(alwbinnext[6]) );
  AND2X1 U54 ( .A(wbinnext[5]), .B(\add_162/carry[5] ), .Y(\add_162/carry[6] )
         );
  XOR2X1 U55 ( .A(wbinnext[5]), .B(\add_162/carry[5] ), .Y(alwbinnext[5]) );
  AND2X1 U56 ( .A(wbinnext[4]), .B(\add_162/carry[4] ), .Y(\add_162/carry[5] )
         );
  XOR2X1 U57 ( .A(wbinnext[4]), .B(\add_162/carry[4] ), .Y(alwbinnext[4]) );
  AND2X1 U58 ( .A(wbinnext[3]), .B(\add_162/carry[3] ), .Y(\add_162/carry[4] )
         );
  XOR2X1 U59 ( .A(wbinnext[3]), .B(\add_162/carry[3] ), .Y(alwbinnext[3]) );
  AND2X1 U60 ( .A(wbinnext[2]), .B(\add_162/carry[2] ), .Y(\add_162/carry[3] )
         );
  XOR2X1 U61 ( .A(wbinnext[2]), .B(\add_162/carry[2] ), .Y(alwbinnext[2]) );
  AND2X1 U62 ( .A(wbinnext[1]), .B(\add_162/carry[1] ), .Y(\add_162/carry[2] )
         );
  XOR2X1 U63 ( .A(wbinnext[1]), .B(\add_162/carry[1] ), .Y(alwbinnext[1]) );
  AND2X1 U64 ( .A(N2), .B(wbinnext[0]), .Y(\add_162/carry[1] ) );
  XOR2X1 U65 ( .A(N2), .B(wbinnext[0]), .Y(alwbinnext[0]) );
  XOR2X1 U66 ( .A(\wbin[8] ), .B(\add_159/carry[8] ), .Y(wbinnext[8]) );
  AND2X1 U67 ( .A(waddr[7]), .B(\add_159/carry[7] ), .Y(\add_159/carry[8] ) );
  XOR2X1 U68 ( .A(waddr[7]), .B(\add_159/carry[7] ), .Y(wbinnext[7]) );
  AND2X1 U69 ( .A(waddr[6]), .B(\add_159/carry[6] ), .Y(\add_159/carry[7] ) );
  XOR2X1 U70 ( .A(waddr[6]), .B(\add_159/carry[6] ), .Y(wbinnext[6]) );
  AND2X1 U71 ( .A(waddr[5]), .B(\add_159/carry[5] ), .Y(\add_159/carry[6] ) );
  XOR2X1 U72 ( .A(waddr[5]), .B(\add_159/carry[5] ), .Y(wbinnext[5]) );
  AND2X1 U73 ( .A(waddr[4]), .B(\add_159/carry[4] ), .Y(\add_159/carry[5] ) );
  XOR2X1 U74 ( .A(waddr[4]), .B(\add_159/carry[4] ), .Y(wbinnext[4]) );
  AND2X1 U75 ( .A(waddr[3]), .B(\add_159/carry[3] ), .Y(\add_159/carry[4] ) );
  XOR2X1 U76 ( .A(waddr[3]), .B(\add_159/carry[3] ), .Y(wbinnext[3]) );
  AND2X1 U77 ( .A(waddr[2]), .B(\add_159/carry[2] ), .Y(\add_159/carry[3] ) );
  XOR2X1 U78 ( .A(waddr[2]), .B(\add_159/carry[2] ), .Y(wbinnext[2]) );
  AND2X1 U79 ( .A(waddr[1]), .B(\add_159/carry[1] ), .Y(\add_159/carry[2] ) );
  XOR2X1 U80 ( .A(waddr[1]), .B(\add_159/carry[1] ), .Y(wbinnext[1]) );
  AND2X1 U81 ( .A(N2), .B(waddr[0]), .Y(\add_159/carry[1] ) );
  XOR2X1 U82 ( .A(N2), .B(waddr[0]), .Y(wbinnext[0]) );
endmodule


module fifo_1 ( dataout_r, fifo_full_w, fifo_empty_r, fifo_almost_full_w, 
        fifo_almost_empty_r, fifo_error_w, fifo_error_r, datain_w, push_w, 
        clk_w, rst_n_w, pop_r, clk_r, rst_n_r );
  output [15:0] dataout_r;
  input [15:0] datain_w;
  input push_w, clk_w, rst_n_w, pop_r, clk_r, rst_n_r;
  output fifo_full_w, fifo_empty_r, fifo_almost_full_w, fifo_almost_empty_r,
         fifo_error_w, fifo_error_r;
  wire   N0;
  wire   [8:0] wq2_rptr;
  wire   [8:0] rptr;
  wire   [8:0] rq2_wptr;
  wire   [8:0] wptr;
  wire   [7:0] raddr;
  wire   [15:0] rdata_in;
  wire   [7:0] waddr;

  dpsram256x16 sram ( .QA(dataout_r), .AA(raddr), .DA({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .AB(waddr), .DB(datain_w), .CLKA(clk_r), .CENA(1'b0), .OENA(1'b0), .WENA(
        1'b1), .CLKB(clk_w), .CENB(N0), .OENB(1'b1), .WENB(1'b0) );
  sync_r2w sync_r2w ( .wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(clk_w), .wrst_n(
        rst_n_w) );
  sync_w2r sync_w2r ( .rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(clk_r), .rrst_n(
        rst_n_r) );
  rptr_empty_ADDRSIZE8 rptr_empty ( .rempty(fifo_empty_r), 
        .fifo_almost_empty_r(fifo_almost_empty_r), .fifo_error_r(fifo_error_r), 
        .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(pop_r), .rclk(
        clk_r), .rrst_n(rst_n_r) );
  wptr_full_ADDRSIZE8 wptr_full ( .wfull(fifo_full_w), .fifo_almost_full_w(
        fifo_almost_full_w), .fifo_error_w(fifo_error_w), .waddr(waddr), 
        .wptr(wptr), .wq2_rptr(wq2_rptr), .winc(push_w), .wclk(clk_w), 
        .wrst_n(rst_n_w) );
  NAND2BX1 U4 ( .AN(fifo_full_w), .B(push_w), .Y(N0) );
endmodule

