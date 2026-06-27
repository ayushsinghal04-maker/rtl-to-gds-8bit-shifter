/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Mon Jun  2 00:41:08 2025
/////////////////////////////////////////////////////////////


module shifter_8bit ( data_in, shift_amt, dir, Clock, data_out );
  input [7:0] data_in;
  input [2:0] shift_amt;
  output [7:0] data_out;
  input dir, Clock;
  wire   reg_dir, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113;
  wire   [7:0] reg_data;
  wire   [2:0] reg_shift;
  wire   [7:0] shifted_val;

  DFFX1_RVT \reg_data_reg[7]  ( .D(data_in[7]), .CLK(Clock), .Q(reg_data[7])
         );
  DFFX1_RVT \reg_data_reg[6]  ( .D(data_in[6]), .CLK(Clock), .Q(reg_data[6]), 
        .QN(n51) );
  DFFX1_RVT \reg_data_reg[5]  ( .D(data_in[5]), .CLK(Clock), .Q(reg_data[5]), 
        .QN(n52) );
  DFFX1_RVT \reg_data_reg[4]  ( .D(data_in[4]), .CLK(Clock), .Q(reg_data[4]), 
        .QN(n58) );
  DFFX1_RVT \reg_data_reg[3]  ( .D(data_in[3]), .CLK(Clock), .Q(reg_data[3]), 
        .QN(n56) );
  DFFX1_RVT \reg_data_reg[2]  ( .D(data_in[2]), .CLK(Clock), .Q(reg_data[2]), 
        .QN(n55) );
  DFFX1_RVT \reg_data_reg[1]  ( .D(data_in[1]), .CLK(Clock), .Q(reg_data[1]), 
        .QN(n54) );
  DFFX1_RVT \reg_data_reg[0]  ( .D(data_in[0]), .CLK(Clock), .Q(reg_data[0])
         );
  DFFX1_RVT \reg_shift_reg[2]  ( .D(shift_amt[2]), .CLK(Clock), .Q(
        reg_shift[2]), .QN(n111) );
  DFFX1_RVT reg_dir_reg ( .D(dir), .CLK(Clock), .Q(reg_dir), .QN(n113) );
  DFFX1_RVT \data_out_reg[7]  ( .D(shifted_val[7]), .CLK(Clock), .Q(
        data_out[7]) );
  DFFX1_RVT \data_out_reg[6]  ( .D(shifted_val[6]), .CLK(Clock), .Q(
        data_out[6]) );
  DFFX1_RVT \data_out_reg[5]  ( .D(shifted_val[5]), .CLK(Clock), .Q(
        data_out[5]) );
  DFFX1_RVT \data_out_reg[4]  ( .D(shifted_val[4]), .CLK(Clock), .Q(
        data_out[4]) );
  DFFX1_RVT \data_out_reg[3]  ( .D(shifted_val[3]), .CLK(Clock), .Q(
        data_out[3]) );
  DFFX1_RVT \data_out_reg[2]  ( .D(shifted_val[2]), .CLK(Clock), .Q(
        data_out[2]) );
  DFFX1_RVT \data_out_reg[1]  ( .D(shifted_val[1]), .CLK(Clock), .Q(
        data_out[1]) );
  DFFX1_RVT \data_out_reg[0]  ( .D(shifted_val[0]), .CLK(Clock), .Q(
        data_out[0]) );
  DFFX1_RVT \reg_shift_reg[0]  ( .D(shift_amt[0]), .CLK(Clock), .Q(n109), .QN(
        n112) );
  DFFX2_RVT \reg_shift_reg[1]  ( .D(shift_amt[1]), .CLK(Clock), .Q(
        reg_shift[1]), .QN(n110) );
  NAND3X1_RVT U61 ( .A1(reg_shift[1]), .A2(reg_data[7]), .A3(n112), .Y(n82) );
  INVX0_RVT U62 ( .A(n89), .Y(n92) );
  INVX0_RVT U63 ( .A(n81), .Y(n83) );
  INVX0_RVT U64 ( .A(n112), .Y(n62) );
  OAI21X1_RVT U65 ( .A1(n110), .A2(n63), .A3(n98), .Y(n53) );
  OAI21X1_RVT U66 ( .A1(n110), .A2(n69), .A3(n107), .Y(n57) );
  MUX21X1_RVT U67 ( .A1(n56), .A2(n58), .S0(n109), .Y(n79) );
  MUX21X1_RVT U68 ( .A1(n54), .A2(n55), .S0(n109), .Y(n80) );
  MUX21X1_RVT U69 ( .A1(n80), .A2(n79), .S0(reg_shift[1]), .Y(n81) );
  MUX21X1_RVT U70 ( .A1(n88), .A2(n87), .S0(reg_shift[1]), .Y(n89) );
  AO22X1_RVT U71 ( .A1(n109), .A2(reg_data[7]), .A3(n112), .A4(reg_data[6]), 
        .Y(n73) );
  AND2X1_RVT U72 ( .A1(n110), .A2(n73), .Y(n68) );
  AND2X1_RVT U73 ( .A1(reg_dir), .A2(reg_shift[2]), .Y(n85) );
  AND2X1_RVT U74 ( .A1(n113), .A2(n111), .Y(n107) );
  AND2X1_RVT U75 ( .A1(n109), .A2(n110), .Y(n93) );
  NAND2X0_RVT U76 ( .A1(n93), .A2(reg_data[1]), .Y(n61) );
  NAND3X0_RVT U77 ( .A1(reg_shift[1]), .A2(reg_data[0]), .A3(n112), .Y(n60) );
  AND2X1_RVT U78 ( .A1(n112), .A2(n110), .Y(n84) );
  NAND2X0_RVT U79 ( .A1(n84), .A2(reg_data[2]), .Y(n59) );
  NAND3X0_RVT U80 ( .A1(n61), .A2(n60), .A3(n59), .Y(n67) );
  AO22X1_RVT U81 ( .A1(n68), .A2(n85), .A3(n107), .A4(n67), .Y(n66) );
  MUX21X1_RVT U82 ( .A1(n55), .A2(n56), .S0(n62), .Y(n64) );
  MUX21X1_RVT U83 ( .A1(reg_data[4]), .A2(reg_data[5]), .S0(n62), .Y(n63) );
  AND2X1_RVT U84 ( .A1(reg_dir), .A2(n111), .Y(n98) );
  AOI21X1_RVT U85 ( .A1(n64), .A2(n110), .A3(n53), .Y(n65) );
  OR2X1_RVT U86 ( .A1(n66), .A2(n65), .Y(shifted_val[2]) );
  AND2X1_RVT U87 ( .A1(reg_shift[2]), .A2(n113), .Y(n104) );
  AO22X1_RVT U88 ( .A1(n68), .A2(n98), .A3(n104), .A4(n67), .Y(n72) );
  MUX21X1_RVT U89 ( .A1(n51), .A2(n52), .S0(n62), .Y(n70) );
  MUX21X1_RVT U90 ( .A1(reg_data[4]), .A2(reg_data[3]), .S0(n109), .Y(n69) );
  AOI21X1_RVT U91 ( .A1(n70), .A2(n110), .A3(n57), .Y(n71) );
  OR2X1_RVT U92 ( .A1(n72), .A2(n71), .Y(shifted_val[6]) );
  NAND2X0_RVT U93 ( .A1(n93), .A2(reg_data[5]), .Y(n76) );
  NAND2X0_RVT U94 ( .A1(n73), .A2(reg_shift[1]), .Y(n75) );
  NAND2X0_RVT U95 ( .A1(n84), .A2(reg_data[4]), .Y(n74) );
  NAND3X0_RVT U96 ( .A1(n76), .A2(n75), .A3(n74), .Y(n91) );
  AND2X1_RVT U97 ( .A1(n84), .A2(reg_data[0]), .Y(n90) );
  AO22X1_RVT U98 ( .A1(n109), .A2(reg_data[3]), .A3(n112), .A4(reg_data[2]), 
        .Y(n77) );
  AO22X1_RVT U99 ( .A1(reg_shift[1]), .A2(n77), .A3(n93), .A4(reg_data[1]), 
        .Y(n78) );
  AO222X1_RVT U100 ( .A1(n91), .A2(n85), .A3(n111), .A4(n90), .A5(n78), .A6(
        n98), .Y(shifted_val[0]) );
  AO22X1_RVT U101 ( .A1(n93), .A2(reg_data[0]), .A3(n84), .A4(reg_data[1]), 
        .Y(n100) );
  NAND2X0_RVT U102 ( .A1(n93), .A2(reg_data[6]), .Y(n103) );
  NAND2X0_RVT U103 ( .A1(reg_data[5]), .A2(n84), .Y(n97) );
  NAND3X0_RVT U104 ( .A1(n103), .A2(n82), .A3(n97), .Y(n99) );
  AO222X1_RVT U105 ( .A1(n83), .A2(n98), .A3(n100), .A4(n107), .A5(n99), .A6(
        n85), .Y(shifted_val[1]) );
  MUX41X1_RVT U106 ( .A1(reg_data[4]), .A3(reg_data[3]), .A2(reg_data[6]), 
        .A4(reg_data[5]), .S0(n112), .S1(reg_shift[1]), .Y(n86) );
  MUX41X1_RVT U107 ( .A1(reg_data[2]), .A3(reg_data[3]), .A2(reg_data[0]), 
        .A4(reg_data[1]), .S0(n112), .S1(reg_shift[1]), .Y(n105) );
  AND2X1_RVT U108 ( .A1(n84), .A2(reg_data[7]), .Y(n106) );
  AO222X1_RVT U109 ( .A1(n86), .A2(n98), .A3(n105), .A4(n107), .A5(n106), .A6(
        n85), .Y(shifted_val[3]) );
  MUX21X1_RVT U110 ( .A1(n58), .A2(n56), .S0(n62), .Y(n88) );
  MUX21X1_RVT U111 ( .A1(n55), .A2(n54), .S0(n109), .Y(n87) );
  AO222X1_RVT U112 ( .A1(n92), .A2(n107), .A3(n91), .A4(n98), .A5(n104), .A6(
        n90), .Y(shifted_val[4]) );
  NAND3X1_RVT U113 ( .A1(reg_shift[1]), .A2(reg_data[3]), .A3(n112), .Y(n96)
         );
  NAND2X0_RVT U114 ( .A1(n93), .A2(reg_data[4]), .Y(n95) );
  NAND3X0_RVT U115 ( .A1(n109), .A2(reg_shift[1]), .A3(reg_data[2]), .Y(n94)
         );
  NAND4X0_RVT U116 ( .A1(n97), .A2(n96), .A3(n95), .A4(n94), .Y(n101) );
  AO222X1_RVT U117 ( .A1(n101), .A2(n107), .A3(n100), .A4(n104), .A5(n99), 
        .A6(n98), .Y(shifted_val[5]) );
  OAI221X1_RVT U118 ( .A1(n112), .A2(reg_data[4]), .A3(n109), .A4(reg_data[5]), 
        .A5(reg_shift[1]), .Y(n102) );
  NAND2X0_RVT U119 ( .A1(n103), .A2(n102), .Y(n108) );
  AO222X1_RVT U120 ( .A1(n108), .A2(n107), .A3(n111), .A4(n106), .A5(n105), 
        .A6(n104), .Y(shifted_val[7]) );
endmodule

