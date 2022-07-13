// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Jul 12 15:46:48 2022
// Host        : localhost.localdomain running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/jtrieloff/cern/Xilinx/Vivado/2019.2/VHDL-modules/projects/neopixel/neopixel.sim/sim_1/impl/timing/xsim/Top_time_impl.v
// Design      : Head
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "eff258e6" *) 
(* NotValidForBitStream *)
module Head
   (led,
    CLK100MHZ);
  output [0:0]led;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [0:0]led;
  wire [0:0]led_OBUF;
  wire n_0_18_BUFG;
  wire n_0_18_BUFG_inst_n_1;
  wire packets_sent0;
  wire write_24b_n_3;

initial begin
 $sdf_annotate("Top_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF),
        .O(led));
  BUFG n_0_18_BUFG_inst
       (.I(n_0_18_BUFG_inst_n_1),
        .O(n_0_18_BUFG));
  BUFG \packets_sent_reg[31]_i_2 
       (.I(write_24b_n_3),
        .O(packets_sent0));
  write_24b write_24b
       (.CLK100MHZ(CLK100MHZ_IBUF_BUFG),
        .E(n_0_18_BUFG),
        .enable_reg_0(write_24b_n_3),
        .led_OBUF(led_OBUF),
        .n_0_18_BUFG_inst_n_1(n_0_18_BUFG_inst_n_1),
        .packets_sent1_carry__2_0(packets_sent0));
endmodule

module colour_decoder
   (led_OBUF,
    enable_reg,
    time_done_reg_i_7_0,
    n_0_18_BUFG_inst_n_1,
    enable__0,
    enable_reg_0,
    enable_reg_i_13_0,
    CLK100MHZ,
    CO,
    enable,
    E);
  output [0:0]led_OBUF;
  output enable_reg;
  output time_done_reg_i_7_0;
  output n_0_18_BUFG_inst_n_1;
  output enable__0;
  output enable_reg_0;
  output enable_reg_i_13_0;
  input CLK100MHZ;
  input [0:0]CO;
  input enable;
  input [0:0]E;

  wire CLK100MHZ;
  wire [0:0]CO;
  wire [0:0]E;
  wire [31:1]data0;
  wire data_reg_i_10_n_1;
  wire data_reg_i_1_n_1;
  wire data_reg_i_2_n_1;
  wire data_reg_i_3_n_1;
  wire data_reg_i_4_n_1;
  wire data_reg_i_5_n_1;
  wire data_reg_i_6_n_1;
  wire data_reg_i_7_n_1;
  wire data_reg_i_8_n_1;
  wire data_reg_i_9_n_1;
  wire enable;
  wire enable__0;
  wire enable_reg;
  wire enable_reg_0;
  wire enable_reg_i_12_n_1;
  wire enable_reg_i_13_0;
  wire enable_reg_i_13_n_1;
  wire [0:0]led_OBUF;
  wire n_0_18_BUFG_inst_n_1;
  wire [31:0]offset;
  wire offset0_carry__0_i_1_n_1;
  wire offset0_carry__0_i_2_n_1;
  wire offset0_carry__0_i_3_n_1;
  wire offset0_carry__0_i_4_n_1;
  wire offset0_carry__0_n_1;
  wire offset0_carry__1_i_1_n_1;
  wire offset0_carry__1_i_2_n_1;
  wire offset0_carry__1_i_3_n_1;
  wire offset0_carry__1_i_4_n_1;
  wire offset0_carry__1_n_1;
  wire offset0_carry__2_i_1_n_1;
  wire offset0_carry__2_i_2_n_1;
  wire offset0_carry__2_i_3_n_1;
  wire offset0_carry__2_i_4_n_1;
  wire offset0_carry__2_n_1;
  wire offset0_carry__3_i_1_n_1;
  wire offset0_carry__3_i_2_n_1;
  wire offset0_carry__3_i_3_n_1;
  wire offset0_carry__3_i_4_n_1;
  wire offset0_carry__3_n_1;
  wire offset0_carry__4_i_1_n_1;
  wire offset0_carry__4_i_2_n_1;
  wire offset0_carry__4_i_3_n_1;
  wire offset0_carry__4_i_4_n_1;
  wire offset0_carry__4_n_1;
  wire offset0_carry__5_i_1_n_1;
  wire offset0_carry__5_i_2_n_1;
  wire offset0_carry__5_i_3_n_1;
  wire offset0_carry__5_i_4_n_1;
  wire offset0_carry__5_n_1;
  wire offset0_carry__6_i_1_n_1;
  wire offset0_carry__6_i_2_n_1;
  wire offset0_carry__6_i_3_n_1;
  wire offset0_carry_i_1_n_1;
  wire offset0_carry_i_2_n_1;
  wire offset0_carry_i_3_n_1;
  wire offset0_carry_i_4_n_1;
  wire offset0_carry_n_1;
  wire \offset_reg_n_1_[0] ;
  wire \offset_reg_n_1_[10] ;
  wire \offset_reg_n_1_[11] ;
  wire \offset_reg_n_1_[12] ;
  wire \offset_reg_n_1_[13] ;
  wire \offset_reg_n_1_[14] ;
  wire \offset_reg_n_1_[15] ;
  wire \offset_reg_n_1_[16] ;
  wire \offset_reg_n_1_[17] ;
  wire \offset_reg_n_1_[18] ;
  wire \offset_reg_n_1_[19] ;
  wire \offset_reg_n_1_[1] ;
  wire \offset_reg_n_1_[20] ;
  wire \offset_reg_n_1_[21] ;
  wire \offset_reg_n_1_[22] ;
  wire \offset_reg_n_1_[23] ;
  wire \offset_reg_n_1_[24] ;
  wire \offset_reg_n_1_[25] ;
  wire \offset_reg_n_1_[26] ;
  wire \offset_reg_n_1_[27] ;
  wire \offset_reg_n_1_[28] ;
  wire \offset_reg_n_1_[29] ;
  wire \offset_reg_n_1_[2] ;
  wire \offset_reg_n_1_[30] ;
  wire \offset_reg_n_1_[31] ;
  wire \offset_reg_n_1_[3] ;
  wire \offset_reg_n_1_[4] ;
  wire \offset_reg_n_1_[5] ;
  wire \offset_reg_n_1_[6] ;
  wire \offset_reg_n_1_[7] ;
  wire \offset_reg_n_1_[8] ;
  wire \offset_reg_n_1_[9] ;
  wire rst;
  wire rst0;
  wire time_done;
  wire time_done__0;
  wire time_done_reg_i_6_n_1;
  wire time_done_reg_i_7_0;
  wire time_done_reg_i_7_n_1;
  wire [2:0]NLW_offset0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_offset0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_offset0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_offset0_carry__6_O_UNCONNECTED;

  counter_0 counter
       (.CLK100MHZ(CLK100MHZ),
        .enable(enable),
        .n_0_18_BUFG_inst(data_reg_i_5_n_1),
        .n_0_18_BUFG_inst_0(data_reg_i_6_n_1),
        .n_0_18_BUFG_inst_n_1(n_0_18_BUFG_inst_n_1),
        .rst(rst),
        .rst0(rst0),
        .time_done(time_done),
        .time_done__0(time_done__0),
        .time_done_reg(time_done_reg_i_7_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    data_reg
       (.CLR(1'b0),
        .D(data_reg_i_1_n_1),
        .G(data_reg_i_2_n_1),
        .GE(1'b1),
        .Q(led_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    data_reg_i_1
       (.I0(time_done),
        .O(data_reg_i_1_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    data_reg_i_10
       (.I0(\offset_reg_n_1_[11] ),
        .I1(\offset_reg_n_1_[9] ),
        .I2(\offset_reg_n_1_[8] ),
        .I3(\offset_reg_n_1_[10] ),
        .O(data_reg_i_10_n_1));
  LUT4 #(
    .INIT(16'hFFEF)) 
    data_reg_i_2
       (.I0(data_reg_i_3_n_1),
        .I1(data_reg_i_4_n_1),
        .I2(data_reg_i_5_n_1),
        .I3(data_reg_i_6_n_1),
        .O(data_reg_i_2_n_1));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    data_reg_i_3
       (.I0(\offset_reg_n_1_[25] ),
        .I1(\offset_reg_n_1_[30] ),
        .I2(\offset_reg_n_1_[24] ),
        .I3(\offset_reg_n_1_[26] ),
        .I4(data_reg_i_7_n_1),
        .O(data_reg_i_3_n_1));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    data_reg_i_4
       (.I0(\offset_reg_n_1_[1] ),
        .I1(\offset_reg_n_1_[6] ),
        .I2(\offset_reg_n_1_[0] ),
        .I3(\offset_reg_n_1_[17] ),
        .I4(data_reg_i_8_n_1),
        .O(data_reg_i_4_n_1));
  LUT5 #(
    .INIT(32'h00008000)) 
    data_reg_i_5
       (.I0(\offset_reg_n_1_[14] ),
        .I1(\offset_reg_n_1_[12] ),
        .I2(\offset_reg_n_1_[13] ),
        .I3(\offset_reg_n_1_[15] ),
        .I4(data_reg_i_9_n_1),
        .O(data_reg_i_5_n_1));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    data_reg_i_6
       (.I0(\offset_reg_n_1_[3] ),
        .I1(\offset_reg_n_1_[4] ),
        .I2(\offset_reg_n_1_[2] ),
        .I3(\offset_reg_n_1_[5] ),
        .I4(data_reg_i_10_n_1),
        .O(data_reg_i_6_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    data_reg_i_7
       (.I0(\offset_reg_n_1_[20] ),
        .I1(\offset_reg_n_1_[7] ),
        .I2(\offset_reg_n_1_[18] ),
        .I3(\offset_reg_n_1_[16] ),
        .O(data_reg_i_7_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    data_reg_i_8
       (.I0(\offset_reg_n_1_[29] ),
        .I1(\offset_reg_n_1_[27] ),
        .I2(\offset_reg_n_1_[31] ),
        .I3(\offset_reg_n_1_[28] ),
        .O(data_reg_i_8_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    data_reg_i_9
       (.I0(\offset_reg_n_1_[23] ),
        .I1(\offset_reg_n_1_[19] ),
        .I2(\offset_reg_n_1_[22] ),
        .I3(\offset_reg_n_1_[21] ),
        .O(data_reg_i_9_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    enable_reg_i_12
       (.I0(\offset_reg_n_1_[15] ),
        .I1(\offset_reg_n_1_[13] ),
        .I2(\offset_reg_n_1_[12] ),
        .I3(\offset_reg_n_1_[14] ),
        .O(enable_reg_i_12_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    enable_reg_i_13
       (.I0(\offset_reg_n_1_[5] ),
        .I1(\offset_reg_n_1_[2] ),
        .I2(\offset_reg_n_1_[4] ),
        .I3(\offset_reg_n_1_[3] ),
        .O(enable_reg_i_13_n_1));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    enable_reg_i_3
       (.I0(CO),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .I5(enable),
        .O(enable__0));
  LUT4 #(
    .INIT(16'h0004)) 
    enable_reg_i_7
       (.I0(data_reg_i_9_n_1),
        .I1(enable_reg_i_12_n_1),
        .I2(data_reg_i_10_n_1),
        .I3(enable_reg_i_13_n_1),
        .O(enable_reg_i_13_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry
       (.CI(1'b0),
        .CO({offset0_carry_n_1,NLW_offset0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\offset_reg_n_1_[0] ),
        .DI({\offset_reg_n_1_[4] ,\offset_reg_n_1_[3] ,\offset_reg_n_1_[2] ,\offset_reg_n_1_[1] }),
        .O(data0[4:1]),
        .S({offset0_carry_i_1_n_1,offset0_carry_i_2_n_1,offset0_carry_i_3_n_1,offset0_carry_i_4_n_1}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__0
       (.CI(offset0_carry_n_1),
        .CO({offset0_carry__0_n_1,NLW_offset0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[8] ,\offset_reg_n_1_[7] ,\offset_reg_n_1_[6] ,\offset_reg_n_1_[5] }),
        .O(data0[8:5]),
        .S({offset0_carry__0_i_1_n_1,offset0_carry__0_i_2_n_1,offset0_carry__0_i_3_n_1,offset0_carry__0_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__0_i_1
       (.I0(\offset_reg_n_1_[8] ),
        .O(offset0_carry__0_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__0_i_2
       (.I0(\offset_reg_n_1_[7] ),
        .O(offset0_carry__0_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__0_i_3
       (.I0(\offset_reg_n_1_[6] ),
        .O(offset0_carry__0_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__0_i_4
       (.I0(\offset_reg_n_1_[5] ),
        .O(offset0_carry__0_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__1
       (.CI(offset0_carry__0_n_1),
        .CO({offset0_carry__1_n_1,NLW_offset0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[12] ,\offset_reg_n_1_[11] ,\offset_reg_n_1_[10] ,\offset_reg_n_1_[9] }),
        .O(data0[12:9]),
        .S({offset0_carry__1_i_1_n_1,offset0_carry__1_i_2_n_1,offset0_carry__1_i_3_n_1,offset0_carry__1_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__1_i_1
       (.I0(\offset_reg_n_1_[12] ),
        .O(offset0_carry__1_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__1_i_2
       (.I0(\offset_reg_n_1_[11] ),
        .O(offset0_carry__1_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__1_i_3
       (.I0(\offset_reg_n_1_[10] ),
        .O(offset0_carry__1_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__1_i_4
       (.I0(\offset_reg_n_1_[9] ),
        .O(offset0_carry__1_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__2
       (.CI(offset0_carry__1_n_1),
        .CO({offset0_carry__2_n_1,NLW_offset0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[16] ,\offset_reg_n_1_[15] ,\offset_reg_n_1_[14] ,\offset_reg_n_1_[13] }),
        .O(data0[16:13]),
        .S({offset0_carry__2_i_1_n_1,offset0_carry__2_i_2_n_1,offset0_carry__2_i_3_n_1,offset0_carry__2_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__2_i_1
       (.I0(\offset_reg_n_1_[16] ),
        .O(offset0_carry__2_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__2_i_2
       (.I0(\offset_reg_n_1_[15] ),
        .O(offset0_carry__2_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__2_i_3
       (.I0(\offset_reg_n_1_[14] ),
        .O(offset0_carry__2_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__2_i_4
       (.I0(\offset_reg_n_1_[13] ),
        .O(offset0_carry__2_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__3
       (.CI(offset0_carry__2_n_1),
        .CO({offset0_carry__3_n_1,NLW_offset0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[20] ,\offset_reg_n_1_[19] ,\offset_reg_n_1_[18] ,\offset_reg_n_1_[17] }),
        .O(data0[20:17]),
        .S({offset0_carry__3_i_1_n_1,offset0_carry__3_i_2_n_1,offset0_carry__3_i_3_n_1,offset0_carry__3_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__3_i_1
       (.I0(\offset_reg_n_1_[20] ),
        .O(offset0_carry__3_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__3_i_2
       (.I0(\offset_reg_n_1_[19] ),
        .O(offset0_carry__3_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__3_i_3
       (.I0(\offset_reg_n_1_[18] ),
        .O(offset0_carry__3_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__3_i_4
       (.I0(\offset_reg_n_1_[17] ),
        .O(offset0_carry__3_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__4
       (.CI(offset0_carry__3_n_1),
        .CO({offset0_carry__4_n_1,NLW_offset0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[24] ,\offset_reg_n_1_[23] ,\offset_reg_n_1_[22] ,\offset_reg_n_1_[21] }),
        .O(data0[24:21]),
        .S({offset0_carry__4_i_1_n_1,offset0_carry__4_i_2_n_1,offset0_carry__4_i_3_n_1,offset0_carry__4_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__4_i_1
       (.I0(\offset_reg_n_1_[24] ),
        .O(offset0_carry__4_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__4_i_2
       (.I0(\offset_reg_n_1_[23] ),
        .O(offset0_carry__4_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__4_i_3
       (.I0(\offset_reg_n_1_[22] ),
        .O(offset0_carry__4_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__4_i_4
       (.I0(\offset_reg_n_1_[21] ),
        .O(offset0_carry__4_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__5
       (.CI(offset0_carry__4_n_1),
        .CO({offset0_carry__5_n_1,NLW_offset0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\offset_reg_n_1_[28] ,\offset_reg_n_1_[27] ,\offset_reg_n_1_[26] ,\offset_reg_n_1_[25] }),
        .O(data0[28:25]),
        .S({offset0_carry__5_i_1_n_1,offset0_carry__5_i_2_n_1,offset0_carry__5_i_3_n_1,offset0_carry__5_i_4_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__5_i_1
       (.I0(\offset_reg_n_1_[28] ),
        .O(offset0_carry__5_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__5_i_2
       (.I0(\offset_reg_n_1_[27] ),
        .O(offset0_carry__5_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__5_i_3
       (.I0(\offset_reg_n_1_[26] ),
        .O(offset0_carry__5_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__5_i_4
       (.I0(\offset_reg_n_1_[25] ),
        .O(offset0_carry__5_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 offset0_carry__6
       (.CI(offset0_carry__5_n_1),
        .CO(NLW_offset0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\offset_reg_n_1_[30] ,\offset_reg_n_1_[29] }),
        .O({NLW_offset0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,offset0_carry__6_i_1_n_1,offset0_carry__6_i_2_n_1,offset0_carry__6_i_3_n_1}));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__6_i_1
       (.I0(\offset_reg_n_1_[31] ),
        .O(offset0_carry__6_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__6_i_2
       (.I0(\offset_reg_n_1_[30] ),
        .O(offset0_carry__6_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry__6_i_3
       (.I0(\offset_reg_n_1_[29] ),
        .O(offset0_carry__6_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry_i_1
       (.I0(\offset_reg_n_1_[4] ),
        .O(offset0_carry_i_1_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry_i_2
       (.I0(\offset_reg_n_1_[3] ),
        .O(offset0_carry_i_2_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry_i_3
       (.I0(\offset_reg_n_1_[2] ),
        .O(offset0_carry_i_3_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    offset0_carry_i_4
       (.I0(\offset_reg_n_1_[1] ),
        .O(offset0_carry_i_4_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[0] 
       (.CLR(1'b0),
        .D(offset[0]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[0] ));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \offset_reg[0]_i_1 
       (.I0(data_reg_i_3_n_1),
        .I1(data_reg_i_4_n_1),
        .I2(data_reg_i_5_n_1),
        .I3(data_reg_i_6_n_1),
        .I4(\offset_reg_n_1_[0] ),
        .O(offset[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[10] 
       (.CLR(1'b0),
        .D(offset[10]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[10] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[10]_i_1 
       (.I0(data0[10]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[11] 
       (.CLR(1'b0),
        .D(offset[11]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[11] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[11]_i_1 
       (.I0(data0[11]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[12] 
       (.CLR(1'b0),
        .D(offset[12]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[12] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[12]_i_1 
       (.I0(data0[12]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[13] 
       (.CLR(1'b0),
        .D(offset[13]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[13] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[13]_i_1 
       (.I0(data0[13]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[14] 
       (.CLR(1'b0),
        .D(offset[14]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[14] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[14]_i_1 
       (.I0(data0[14]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[15] 
       (.CLR(1'b0),
        .D(offset[15]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[15] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[15]_i_1 
       (.I0(data0[15]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[16] 
       (.CLR(1'b0),
        .D(offset[16]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[16] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[16]_i_1 
       (.I0(data0[16]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[17] 
       (.CLR(1'b0),
        .D(offset[17]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[17] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[17]_i_1 
       (.I0(data0[17]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[18] 
       (.CLR(1'b0),
        .D(offset[18]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[18] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[18]_i_1 
       (.I0(data0[18]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[19] 
       (.CLR(1'b0),
        .D(offset[19]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[19] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[19]_i_1 
       (.I0(data0[19]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[1] 
       (.CLR(1'b0),
        .D(offset[1]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[1] ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \offset_reg[1]_i_1 
       (.I0(data0[1]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[20] 
       (.CLR(1'b0),
        .D(offset[20]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[20] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[20]_i_1 
       (.I0(data0[20]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[21] 
       (.CLR(1'b0),
        .D(offset[21]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[21] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[21]_i_1 
       (.I0(data0[21]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[22] 
       (.CLR(1'b0),
        .D(offset[22]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[22] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[22]_i_1 
       (.I0(data0[22]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[23] 
       (.CLR(1'b0),
        .D(offset[23]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[23] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[23]_i_1 
       (.I0(data0[23]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[24] 
       (.CLR(1'b0),
        .D(offset[24]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[24] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[24]_i_1 
       (.I0(data0[24]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[25] 
       (.CLR(1'b0),
        .D(offset[25]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[25] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[25]_i_1 
       (.I0(data0[25]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[26] 
       (.CLR(1'b0),
        .D(offset[26]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[26] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[26]_i_1 
       (.I0(data0[26]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[27] 
       (.CLR(1'b0),
        .D(offset[27]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[27] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[27]_i_1 
       (.I0(data0[27]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[28] 
       (.CLR(1'b0),
        .D(offset[28]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[28] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[28]_i_1 
       (.I0(data0[28]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[29] 
       (.CLR(1'b0),
        .D(offset[29]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[29] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[29]_i_1 
       (.I0(data0[29]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[2] 
       (.CLR(1'b0),
        .D(offset[2]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[2] ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \offset_reg[2]_i_1 
       (.I0(data0[2]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[30] 
       (.CLR(1'b0),
        .D(offset[30]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[30] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[30]_i_1 
       (.I0(data0[30]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[31] 
       (.CLR(1'b0),
        .D(offset[31]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[31] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[31]_i_1 
       (.I0(data0[31]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[3] 
       (.CLR(1'b0),
        .D(offset[3]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[3] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[3]_i_1 
       (.I0(data0[3]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[4] 
       (.CLR(1'b0),
        .D(offset[4]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[4] ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \offset_reg[4]_i_1 
       (.I0(data0[4]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[5] 
       (.CLR(1'b0),
        .D(offset[5]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[5] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[5]_i_1 
       (.I0(data0[5]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[6] 
       (.CLR(1'b0),
        .D(offset[6]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[6] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[6]_i_1 
       (.I0(data0[6]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[7] 
       (.CLR(1'b0),
        .D(offset[7]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[7] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[7]_i_1 
       (.I0(data0[7]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[8] 
       (.CLR(1'b0),
        .D(offset[8]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[8] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[8]_i_1 
       (.I0(data0[8]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \offset_reg[9] 
       (.CLR(1'b0),
        .D(offset[9]),
        .G(E),
        .GE(1'b1),
        .Q(\offset_reg_n_1_[9] ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \offset_reg[9]_i_1 
       (.I0(data0[9]),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .O(offset[9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \packets_sent_reg[31]_i_4 
       (.I0(data_reg_i_3_n_1),
        .I1(data_reg_i_4_n_1),
        .I2(data_reg_i_5_n_1),
        .I3(data_reg_i_6_n_1),
        .I4(enable),
        .O(enable_reg_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rst_reg
       (.CLR(1'b0),
        .D(rst0),
        .G(data_reg_i_2_n_1),
        .GE(1'b1),
        .Q(rst));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    rst_reg_i_2__0
       (.I0(CO),
        .I1(data_reg_i_3_n_1),
        .I2(data_reg_i_4_n_1),
        .I3(data_reg_i_5_n_1),
        .I4(data_reg_i_6_n_1),
        .I5(enable),
        .O(enable_reg));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    time_done_reg
       (.CLR(1'b0),
        .D(data_reg_i_1_n_1),
        .G(time_done__0),
        .GE(1'b1),
        .Q(time_done));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_done_reg_i_2
       (.I0(data_reg_i_7_n_1),
        .I1(time_done_reg_i_6_n_1),
        .I2(data_reg_i_8_n_1),
        .I3(time_done_reg_i_7_n_1),
        .O(time_done_reg_i_7_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_done_reg_i_6
       (.I0(\offset_reg_n_1_[26] ),
        .I1(\offset_reg_n_1_[24] ),
        .I2(\offset_reg_n_1_[30] ),
        .I3(\offset_reg_n_1_[25] ),
        .O(time_done_reg_i_6_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_done_reg_i_7
       (.I0(\offset_reg_n_1_[17] ),
        .I1(\offset_reg_n_1_[0] ),
        .I2(\offset_reg_n_1_[6] ),
        .I3(\offset_reg_n_1_[1] ),
        .O(time_done_reg_i_7_n_1));
endmodule

module counter
   (\int_counter_reg[3]_0 ,
    \int_counter_reg[3]_1 ,
    D,
    \int_counter_reg[8]_0 ,
    CLK100MHZ,
    enable_reg,
    enable_reg_0,
    enable,
    packets_sent0,
    CO,
    Q,
    rst);
  output \int_counter_reg[3]_0 ;
  output \int_counter_reg[3]_1 ;
  output [31:0]D;
  output \int_counter_reg[8]_0 ;
  input CLK100MHZ;
  input enable_reg;
  input enable_reg_0;
  input enable;
  input [30:0]packets_sent0;
  input [0:0]CO;
  input [0:0]Q;
  input rst;

  wire CLK100MHZ;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]Q;
  wire enable;
  wire enable_reg;
  wire enable_reg_0;
  wire enable_reg_i_10_n_1;
  wire enable_reg_i_11_n_1;
  wire enable_reg_i_4_n_1;
  wire enable_reg_i_5_n_1;
  wire enable_reg_i_6_n_1;
  wire enable_reg_i_8_n_1;
  wire enable_reg_i_9_n_1;
  wire \int_counter[0]_i_1__0_n_1 ;
  wire \int_counter[0]_i_3__0_n_1 ;
  wire [15:0]int_counter_reg;
  wire \int_counter_reg[0]_i_2__0_n_1 ;
  wire \int_counter_reg[0]_i_2__0_n_5 ;
  wire \int_counter_reg[0]_i_2__0_n_6 ;
  wire \int_counter_reg[0]_i_2__0_n_7 ;
  wire \int_counter_reg[0]_i_2__0_n_8 ;
  wire \int_counter_reg[12]_i_1__0_n_5 ;
  wire \int_counter_reg[12]_i_1__0_n_6 ;
  wire \int_counter_reg[12]_i_1__0_n_7 ;
  wire \int_counter_reg[12]_i_1__0_n_8 ;
  wire \int_counter_reg[3]_0 ;
  wire \int_counter_reg[3]_1 ;
  wire \int_counter_reg[4]_i_1__0_n_1 ;
  wire \int_counter_reg[4]_i_1__0_n_5 ;
  wire \int_counter_reg[4]_i_1__0_n_6 ;
  wire \int_counter_reg[4]_i_1__0_n_7 ;
  wire \int_counter_reg[4]_i_1__0_n_8 ;
  wire \int_counter_reg[8]_0 ;
  wire \int_counter_reg[8]_i_1__0_n_1 ;
  wire \int_counter_reg[8]_i_1__0_n_5 ;
  wire \int_counter_reg[8]_i_1__0_n_6 ;
  wire \int_counter_reg[8]_i_1__0_n_7 ;
  wire \int_counter_reg[8]_i_1__0_n_8 ;
  wire [30:0]packets_sent0;
  wire rst;
  wire [2:0]\NLW_int_counter_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_int_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FF0000000B0000)) 
    enable_reg_i_1
       (.I0(enable_reg_i_4_n_1),
        .I1(enable_reg_i_5_n_1),
        .I2(enable_reg_i_6_n_1),
        .I3(enable_reg),
        .I4(enable_reg_0),
        .I5(enable),
        .O(\int_counter_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    enable_reg_i_10
       (.I0(int_counter_reg[4]),
        .I1(int_counter_reg[5]),
        .I2(int_counter_reg[11]),
        .I3(int_counter_reg[1]),
        .O(enable_reg_i_10_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    enable_reg_i_11
       (.I0(int_counter_reg[6]),
        .I1(int_counter_reg[2]),
        .I2(int_counter_reg[0]),
        .I3(int_counter_reg[13]),
        .O(enable_reg_i_11_n_1));
  LUT6 #(
    .INIT(64'hFFFF000BFFFFFFFF)) 
    enable_reg_i_2
       (.I0(enable_reg_i_4_n_1),
        .I1(enable_reg_i_5_n_1),
        .I2(enable_reg_i_6_n_1),
        .I3(enable),
        .I4(enable_reg),
        .I5(enable_reg_0),
        .O(\int_counter_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    enable_reg_i_4
       (.I0(int_counter_reg[3]),
        .I1(int_counter_reg[5]),
        .I2(int_counter_reg[11]),
        .I3(int_counter_reg[15]),
        .I4(enable_reg_i_8_n_1),
        .I5(enable_reg_i_9_n_1),
        .O(enable_reg_i_4_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    enable_reg_i_5
       (.I0(int_counter_reg[15]),
        .I1(int_counter_reg[10]),
        .I2(int_counter_reg[14]),
        .I3(int_counter_reg[3]),
        .I4(enable_reg_i_10_n_1),
        .I5(enable_reg_i_11_n_1),
        .O(enable_reg_i_5_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    enable_reg_i_6
       (.I0(int_counter_reg[7]),
        .I1(int_counter_reg[9]),
        .I2(int_counter_reg[12]),
        .I3(int_counter_reg[8]),
        .O(enable_reg_i_6_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    enable_reg_i_8
       (.I0(int_counter_reg[13]),
        .I1(int_counter_reg[1]),
        .I2(int_counter_reg[14]),
        .I3(int_counter_reg[2]),
        .O(enable_reg_i_8_n_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    enable_reg_i_9
       (.I0(int_counter_reg[0]),
        .I1(int_counter_reg[10]),
        .I2(int_counter_reg[4]),
        .I3(int_counter_reg[6]),
        .O(enable_reg_i_9_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_1__0 
       (.I0(rst),
        .O(\int_counter[0]_i_1__0_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_3__0 
       (.I0(int_counter_reg[0]),
        .O(\int_counter[0]_i_3__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2__0_n_8 ),
        .Q(int_counter_reg[0]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\int_counter_reg[0]_i_2__0_n_1 ,\NLW_int_counter_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\int_counter_reg[0]_i_2__0_n_5 ,\int_counter_reg[0]_i_2__0_n_6 ,\int_counter_reg[0]_i_2__0_n_7 ,\int_counter_reg[0]_i_2__0_n_8 }),
        .S({int_counter_reg[3:1],\int_counter[0]_i_3__0_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[10] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_6 ),
        .Q(int_counter_reg[10]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_5 ),
        .Q(int_counter_reg[11]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[12] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_8 ),
        .Q(int_counter_reg[12]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[12]_i_1__0 
       (.CI(\int_counter_reg[8]_i_1__0_n_1 ),
        .CO(\NLW_int_counter_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[12]_i_1__0_n_5 ,\int_counter_reg[12]_i_1__0_n_6 ,\int_counter_reg[12]_i_1__0_n_7 ,\int_counter_reg[12]_i_1__0_n_8 }),
        .S(int_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[13] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_7 ),
        .Q(int_counter_reg[13]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_6 ),
        .Q(int_counter_reg[14]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_5 ),
        .Q(int_counter_reg[15]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2__0_n_7 ),
        .Q(int_counter_reg[1]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2__0_n_6 ),
        .Q(int_counter_reg[2]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2__0_n_5 ),
        .Q(int_counter_reg[3]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_8 ),
        .Q(int_counter_reg[4]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[4]_i_1__0 
       (.CI(\int_counter_reg[0]_i_2__0_n_1 ),
        .CO({\int_counter_reg[4]_i_1__0_n_1 ,\NLW_int_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[4]_i_1__0_n_5 ,\int_counter_reg[4]_i_1__0_n_6 ,\int_counter_reg[4]_i_1__0_n_7 ,\int_counter_reg[4]_i_1__0_n_8 }),
        .S(int_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_7 ),
        .Q(int_counter_reg[5]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_6 ),
        .Q(int_counter_reg[6]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_5 ),
        .Q(int_counter_reg[7]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_8 ),
        .Q(int_counter_reg[8]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[8]_i_1__0 
       (.CI(\int_counter_reg[4]_i_1__0_n_1 ),
        .CO({\int_counter_reg[8]_i_1__0_n_1 ,\NLW_int_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[8]_i_1__0_n_5 ,\int_counter_reg[8]_i_1__0_n_6 ,\int_counter_reg[8]_i_1__0_n_7 ,\int_counter_reg[8]_i_1__0_n_8 }),
        .S(int_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[9] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_7 ),
        .Q(int_counter_reg[9]),
        .R(\int_counter[0]_i_1__0_n_1 ));
  LUT5 #(
    .INIT(32'h000BFFFF)) 
    \packets_sent_reg[0]_i_1 
       (.I0(enable_reg_i_4_n_1),
        .I1(enable_reg_i_5_n_1),
        .I2(enable_reg_i_6_n_1),
        .I3(CO),
        .I4(Q),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[10]_i_1 
       (.I0(packets_sent0[9]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[11]_i_1 
       (.I0(packets_sent0[10]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[12]_i_1 
       (.I0(packets_sent0[11]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[13]_i_1 
       (.I0(packets_sent0[12]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[14]_i_1 
       (.I0(packets_sent0[13]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[15]_i_1 
       (.I0(packets_sent0[14]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[16]_i_1 
       (.I0(packets_sent0[15]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[17]_i_1 
       (.I0(packets_sent0[16]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[18]_i_1 
       (.I0(packets_sent0[17]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[19]_i_1 
       (.I0(packets_sent0[18]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[1]_i_1 
       (.I0(packets_sent0[0]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[20]_i_1 
       (.I0(packets_sent0[19]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[21]_i_1 
       (.I0(packets_sent0[20]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[22]_i_1 
       (.I0(packets_sent0[21]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[23]_i_1 
       (.I0(packets_sent0[22]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[24]_i_1 
       (.I0(packets_sent0[23]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[25]_i_1 
       (.I0(packets_sent0[24]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[26]_i_1 
       (.I0(packets_sent0[25]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[27]_i_1 
       (.I0(packets_sent0[26]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[28]_i_1 
       (.I0(packets_sent0[27]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[29]_i_1 
       (.I0(packets_sent0[28]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[2]_i_1 
       (.I0(packets_sent0[1]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[30]_i_1 
       (.I0(packets_sent0[29]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[31]_i_1 
       (.I0(packets_sent0[30]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[3]_i_1 
       (.I0(packets_sent0[2]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[4]_i_1 
       (.I0(packets_sent0[3]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[5]_i_1 
       (.I0(packets_sent0[4]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[6]_i_1 
       (.I0(packets_sent0[5]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[7]_i_1 
       (.I0(packets_sent0[6]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[8]_i_1 
       (.I0(packets_sent0[7]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAAAAAA20)) 
    \packets_sent_reg[9]_i_1 
       (.I0(packets_sent0[8]),
        .I1(enable_reg_i_4_n_1),
        .I2(enable_reg_i_5_n_1),
        .I3(enable_reg_i_6_n_1),
        .I4(CO),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h4FFFFFFFFFFFFFFF)) 
    rst_reg_i_1
       (.I0(enable_reg_i_4_n_1),
        .I1(enable_reg_i_5_n_1),
        .I2(int_counter_reg[8]),
        .I3(int_counter_reg[12]),
        .I4(int_counter_reg[9]),
        .I5(int_counter_reg[7]),
        .O(\int_counter_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter_0
   (time_done__0,
    n_0_18_BUFG_inst_n_1,
    rst0,
    CLK100MHZ,
    time_done_reg,
    n_0_18_BUFG_inst,
    n_0_18_BUFG_inst_0,
    enable,
    rst,
    time_done);
  output time_done__0;
  output n_0_18_BUFG_inst_n_1;
  output rst0;
  input CLK100MHZ;
  input time_done_reg;
  input n_0_18_BUFG_inst;
  input n_0_18_BUFG_inst_0;
  input enable;
  input rst;
  input time_done;

  wire CLK100MHZ;
  wire clear;
  wire enable;
  wire \int_counter[0]_i_3_n_1 ;
  wire [15:0]int_counter_reg;
  wire \int_counter_reg[0]_i_2_n_1 ;
  wire \int_counter_reg[0]_i_2_n_5 ;
  wire \int_counter_reg[0]_i_2_n_6 ;
  wire \int_counter_reg[0]_i_2_n_7 ;
  wire \int_counter_reg[0]_i_2_n_8 ;
  wire \int_counter_reg[12]_i_1_n_5 ;
  wire \int_counter_reg[12]_i_1_n_6 ;
  wire \int_counter_reg[12]_i_1_n_7 ;
  wire \int_counter_reg[12]_i_1_n_8 ;
  wire \int_counter_reg[4]_i_1_n_1 ;
  wire \int_counter_reg[4]_i_1_n_5 ;
  wire \int_counter_reg[4]_i_1_n_6 ;
  wire \int_counter_reg[4]_i_1_n_7 ;
  wire \int_counter_reg[4]_i_1_n_8 ;
  wire \int_counter_reg[8]_i_1_n_1 ;
  wire \int_counter_reg[8]_i_1_n_5 ;
  wire \int_counter_reg[8]_i_1_n_6 ;
  wire \int_counter_reg[8]_i_1_n_7 ;
  wire \int_counter_reg[8]_i_1_n_8 ;
  wire n_0_18_BUFG_inst;
  wire n_0_18_BUFG_inst_0;
  wire n_0_18_BUFG_inst_i_2_n_1;
  wire n_0_18_BUFG_inst_n_1;
  wire rst;
  wire rst0;
  wire rst_reg_i_2_n_1;
  wire rst_reg_i_3_n_1;
  wire rst_reg_i_4_n_1;
  wire rst_reg_i_5_n_1;
  wire time_done;
  wire time_done__0;
  wire time_done_reg;
  wire time_done_reg_i_10_n_1;
  wire time_done_reg_i_11_n_1;
  wire time_done_reg_i_3_n_1;
  wire time_done_reg_i_4_n_1;
  wire time_done_reg_i_5_n_1;
  wire time_done_reg_i_8_n_1;
  wire time_done_reg_i_9_n_1;
  wire [2:0]\NLW_int_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_1 
       (.I0(rst),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_3 
       (.I0(int_counter_reg[0]),
        .O(\int_counter[0]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_8 ),
        .Q(int_counter_reg[0]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\int_counter_reg[0]_i_2_n_1 ,\NLW_int_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\int_counter_reg[0]_i_2_n_5 ,\int_counter_reg[0]_i_2_n_6 ,\int_counter_reg[0]_i_2_n_7 ,\int_counter_reg[0]_i_2_n_8 }),
        .S({int_counter_reg[3:1],\int_counter[0]_i_3_n_1 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[10] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_6 ),
        .Q(int_counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_5 ),
        .Q(int_counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[12] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_8 ),
        .Q(int_counter_reg[12]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[12]_i_1 
       (.CI(\int_counter_reg[8]_i_1_n_1 ),
        .CO(\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[12]_i_1_n_5 ,\int_counter_reg[12]_i_1_n_6 ,\int_counter_reg[12]_i_1_n_7 ,\int_counter_reg[12]_i_1_n_8 }),
        .S(int_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[13] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_7 ),
        .Q(int_counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_6 ),
        .Q(int_counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_5 ),
        .Q(int_counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_7 ),
        .Q(int_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_6 ),
        .Q(int_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_5 ),
        .Q(int_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_8 ),
        .Q(int_counter_reg[4]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[4]_i_1 
       (.CI(\int_counter_reg[0]_i_2_n_1 ),
        .CO({\int_counter_reg[4]_i_1_n_1 ,\NLW_int_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[4]_i_1_n_5 ,\int_counter_reg[4]_i_1_n_6 ,\int_counter_reg[4]_i_1_n_7 ,\int_counter_reg[4]_i_1_n_8 }),
        .S(int_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_7 ),
        .Q(int_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_6 ),
        .Q(int_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_5 ),
        .Q(int_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_8 ),
        .Q(int_counter_reg[8]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[8]_i_1 
       (.CI(\int_counter_reg[4]_i_1_n_1 ),
        .CO({\int_counter_reg[8]_i_1_n_1 ,\NLW_int_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[8]_i_1_n_5 ,\int_counter_reg[8]_i_1_n_6 ,\int_counter_reg[8]_i_1_n_7 ,\int_counter_reg[8]_i_1_n_8 }),
        .S(int_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[9] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_7 ),
        .Q(int_counter_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h00200020FFEF0020)) 
    n_0_18_BUFG_inst_i_1
       (.I0(enable),
        .I1(n_0_18_BUFG_inst_0),
        .I2(n_0_18_BUFG_inst),
        .I3(time_done_reg),
        .I4(time_done_reg_i_3_n_1),
        .I5(n_0_18_BUFG_inst_i_2_n_1),
        .O(n_0_18_BUFG_inst_n_1));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    n_0_18_BUFG_inst_i_2
       (.I0(time_done_reg_i_11_n_1),
        .I1(int_counter_reg[5]),
        .I2(time_done),
        .I3(int_counter_reg[0]),
        .I4(time_done_reg_i_9_n_1),
        .I5(int_counter_reg[4]),
        .O(n_0_18_BUFG_inst_i_2_n_1));
  LUT5 #(
    .INIT(32'hFE00FEFE)) 
    rst_reg_i_1__0
       (.I0(rst_reg_i_2_n_1),
        .I1(rst_reg_i_3_n_1),
        .I2(rst_reg_i_4_n_1),
        .I3(time_done_reg_i_4_n_1),
        .I4(time_done_reg_i_3_n_1),
        .O(rst0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_reg_i_2
       (.I0(int_counter_reg[14]),
        .I1(int_counter_reg[13]),
        .I2(int_counter_reg[11]),
        .I3(int_counter_reg[10]),
        .O(rst_reg_i_2_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    rst_reg_i_3
       (.I0(int_counter_reg[7]),
        .I1(int_counter_reg[6]),
        .I2(int_counter_reg[9]),
        .I3(int_counter_reg[4]),
        .I4(int_counter_reg[12]),
        .I5(int_counter_reg[8]),
        .O(rst_reg_i_3_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    rst_reg_i_4
       (.I0(int_counter_reg[0]),
        .I1(time_done),
        .I2(int_counter_reg[5]),
        .I3(int_counter_reg[1]),
        .I4(int_counter_reg[2]),
        .I5(rst_reg_i_5_n_1),
        .O(rst_reg_i_4_n_1));
  LUT2 #(
    .INIT(4'hE)) 
    rst_reg_i_5
       (.I0(int_counter_reg[15]),
        .I1(int_counter_reg[3]),
        .O(rst_reg_i_5_n_1));
  LUT6 #(
    .INIT(64'h0000FB00FBFBFBFB)) 
    time_done_reg_i_1
       (.I0(time_done_reg),
        .I1(n_0_18_BUFG_inst),
        .I2(n_0_18_BUFG_inst_0),
        .I3(time_done_reg_i_3_n_1),
        .I4(time_done_reg_i_4_n_1),
        .I5(time_done_reg_i_5_n_1),
        .O(time_done__0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_done_reg_i_10
       (.I0(int_counter_reg[3]),
        .I1(int_counter_reg[15]),
        .I2(int_counter_reg[0]),
        .I3(int_counter_reg[4]),
        .O(time_done_reg_i_10_n_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_done_reg_i_11
       (.I0(int_counter_reg[3]),
        .I1(int_counter_reg[15]),
        .I2(int_counter_reg[2]),
        .I3(int_counter_reg[1]),
        .O(time_done_reg_i_11_n_1));
  LUT5 #(
    .INIT(32'h00000002)) 
    time_done_reg_i_3
       (.I0(time_done_reg_i_8_n_1),
        .I1(int_counter_reg[10]),
        .I2(int_counter_reg[11]),
        .I3(int_counter_reg[13]),
        .I4(int_counter_reg[14]),
        .O(time_done_reg_i_3_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    time_done_reg_i_4
       (.I0(time_done_reg_i_9_n_1),
        .I1(time_done_reg_i_10_n_1),
        .I2(int_counter_reg[5]),
        .I3(int_counter_reg[2]),
        .I4(int_counter_reg[1]),
        .I5(time_done),
        .O(time_done_reg_i_4_n_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    time_done_reg_i_5
       (.I0(time_done_reg_i_11_n_1),
        .I1(int_counter_reg[5]),
        .I2(time_done),
        .I3(int_counter_reg[0]),
        .I4(rst_reg_i_3_n_1),
        .I5(rst_reg_i_2_n_1),
        .O(time_done_reg_i_5_n_1));
  LUT6 #(
    .INIT(64'h000B000B0000000B)) 
    time_done_reg_i_8
       (.I0(int_counter_reg[10]),
        .I1(int_counter_reg[9]),
        .I2(int_counter_reg[8]),
        .I3(int_counter_reg[7]),
        .I4(int_counter_reg[12]),
        .I5(int_counter_reg[13]),
        .O(time_done_reg_i_8_n_1));
  LUT3 #(
    .INIT(8'hBA)) 
    time_done_reg_i_9
       (.I0(int_counter_reg[8]),
        .I1(int_counter_reg[7]),
        .I2(int_counter_reg[6]),
        .O(time_done_reg_i_9_n_1));
endmodule

module write_24b
   (led_OBUF,
    n_0_18_BUFG_inst_n_1,
    enable_reg_0,
    E,
    packets_sent1_carry__2_0,
    CLK100MHZ);
  output [0:0]led_OBUF;
  output n_0_18_BUFG_inst_n_1;
  output enable_reg_0;
  input [0:0]E;
  input [0:0]packets_sent1_carry__2_0;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire [0:0]E;
  wire colour_decoder_n_2;
  wire colour_decoder_n_3;
  wire colour_decoder_n_7;
  wire counter_n_1;
  wire counter_n_10;
  wire counter_n_11;
  wire counter_n_12;
  wire counter_n_13;
  wire counter_n_14;
  wire counter_n_15;
  wire counter_n_16;
  wire counter_n_17;
  wire counter_n_18;
  wire counter_n_19;
  wire counter_n_2;
  wire counter_n_20;
  wire counter_n_21;
  wire counter_n_22;
  wire counter_n_23;
  wire counter_n_24;
  wire counter_n_25;
  wire counter_n_26;
  wire counter_n_27;
  wire counter_n_28;
  wire counter_n_29;
  wire counter_n_3;
  wire counter_n_30;
  wire counter_n_31;
  wire counter_n_32;
  wire counter_n_33;
  wire counter_n_34;
  wire counter_n_35;
  wire counter_n_4;
  wire counter_n_5;
  wire counter_n_6;
  wire counter_n_7;
  wire counter_n_8;
  wire counter_n_9;
  wire enable;
  wire enable__0;
  wire enable_reg_0;
  wire [0:0]led_OBUF;
  wire n_0_18_BUFG_inst_n_1;
  wire [31:0]packets_sent;
  wire [31:1]packets_sent0;
  wire packets_sent1;
  wire packets_sent1_carry__0_i_1_n_1;
  wire packets_sent1_carry__0_i_2_n_1;
  wire packets_sent1_carry__0_i_3_n_1;
  wire packets_sent1_carry__0_i_4_n_1;
  wire packets_sent1_carry__0_n_1;
  wire packets_sent1_carry__1_i_1_n_1;
  wire packets_sent1_carry__1_i_2_n_1;
  wire packets_sent1_carry__1_i_3_n_1;
  wire packets_sent1_carry__1_i_4_n_1;
  wire packets_sent1_carry__1_n_1;
  wire [0:0]packets_sent1_carry__2_0;
  wire packets_sent1_carry__2_i_1_n_1;
  wire packets_sent1_carry__2_i_2_n_1;
  wire packets_sent1_carry__2_i_3_n_1;
  wire packets_sent1_carry__2_i_4_n_1;
  wire packets_sent1_carry_i_1_n_1;
  wire packets_sent1_carry_i_2_n_1;
  wire packets_sent1_carry_i_3_n_1;
  wire packets_sent1_carry_i_4_n_1;
  wire packets_sent1_carry_i_5_n_1;
  wire packets_sent1_carry_i_6_n_1;
  wire packets_sent1_carry_n_1;
  wire \packets_sent_reg[12]_i_2_n_1 ;
  wire \packets_sent_reg[16]_i_2_n_1 ;
  wire \packets_sent_reg[20]_i_2_n_1 ;
  wire \packets_sent_reg[24]_i_2_n_1 ;
  wire \packets_sent_reg[28]_i_2_n_1 ;
  wire \packets_sent_reg[4]_i_2_n_1 ;
  wire \packets_sent_reg[8]_i_2_n_1 ;
  wire rst;
  wire [2:0]NLW_packets_sent1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_packets_sent1_carry_O_UNCONNECTED;
  wire [2:0]NLW_packets_sent1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_packets_sent1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_packets_sent1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_packets_sent1_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_packets_sent1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_packets_sent1_carry__2_O_UNCONNECTED;
  wire [2:0]\NLW_packets_sent_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_packets_sent_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_packets_sent_reg[31]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_packets_sent_reg[8]_i_2_CO_UNCONNECTED ;

  colour_decoder colour_decoder
       (.CLK100MHZ(CLK100MHZ),
        .CO(packets_sent1),
        .E(E),
        .enable(enable),
        .enable__0(enable__0),
        .enable_reg(colour_decoder_n_2),
        .enable_reg_0(enable_reg_0),
        .enable_reg_i_13_0(colour_decoder_n_7),
        .led_OBUF(led_OBUF),
        .n_0_18_BUFG_inst_n_1(n_0_18_BUFG_inst_n_1),
        .time_done_reg_i_7_0(colour_decoder_n_3));
  counter counter
       (.CLK100MHZ(CLK100MHZ),
        .CO(packets_sent1),
        .D({counter_n_3,counter_n_4,counter_n_5,counter_n_6,counter_n_7,counter_n_8,counter_n_9,counter_n_10,counter_n_11,counter_n_12,counter_n_13,counter_n_14,counter_n_15,counter_n_16,counter_n_17,counter_n_18,counter_n_19,counter_n_20,counter_n_21,counter_n_22,counter_n_23,counter_n_24,counter_n_25,counter_n_26,counter_n_27,counter_n_28,counter_n_29,counter_n_30,counter_n_31,counter_n_32,counter_n_33,counter_n_34}),
        .Q(packets_sent[0]),
        .enable(enable),
        .enable_reg(colour_decoder_n_3),
        .enable_reg_0(colour_decoder_n_7),
        .\int_counter_reg[3]_0 (counter_n_1),
        .\int_counter_reg[3]_1 (counter_n_2),
        .\int_counter_reg[8]_0 (counter_n_35),
        .packets_sent0(packets_sent0),
        .rst(rst));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b0)) 
    enable_reg
       (.D(counter_n_1),
        .G(counter_n_2),
        .GE(1'b1),
        .PRE(enable__0),
        .Q(enable));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 packets_sent1_carry
       (.CI(1'b0),
        .CO({packets_sent1_carry_n_1,NLW_packets_sent1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,packets_sent1_carry_i_1_n_1,packets_sent1_carry_i_2_n_1}),
        .O(NLW_packets_sent1_carry_O_UNCONNECTED[3:0]),
        .S({packets_sent1_carry_i_3_n_1,packets_sent1_carry_i_4_n_1,packets_sent1_carry_i_5_n_1,packets_sent1_carry_i_6_n_1}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 packets_sent1_carry__0
       (.CI(packets_sent1_carry_n_1),
        .CO({packets_sent1_carry__0_n_1,NLW_packets_sent1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_packets_sent1_carry__0_O_UNCONNECTED[3:0]),
        .S({packets_sent1_carry__0_i_1_n_1,packets_sent1_carry__0_i_2_n_1,packets_sent1_carry__0_i_3_n_1,packets_sent1_carry__0_i_4_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__0_i_1
       (.I0(packets_sent[14]),
        .I1(packets_sent[15]),
        .O(packets_sent1_carry__0_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__0_i_2
       (.I0(packets_sent[12]),
        .I1(packets_sent[13]),
        .O(packets_sent1_carry__0_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__0_i_3
       (.I0(packets_sent[10]),
        .I1(packets_sent[11]),
        .O(packets_sent1_carry__0_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__0_i_4
       (.I0(packets_sent[8]),
        .I1(packets_sent[9]),
        .O(packets_sent1_carry__0_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 packets_sent1_carry__1
       (.CI(packets_sent1_carry__0_n_1),
        .CO({packets_sent1_carry__1_n_1,NLW_packets_sent1_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_packets_sent1_carry__1_O_UNCONNECTED[3:0]),
        .S({packets_sent1_carry__1_i_1_n_1,packets_sent1_carry__1_i_2_n_1,packets_sent1_carry__1_i_3_n_1,packets_sent1_carry__1_i_4_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__1_i_1
       (.I0(packets_sent[22]),
        .I1(packets_sent[23]),
        .O(packets_sent1_carry__1_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__1_i_2
       (.I0(packets_sent[20]),
        .I1(packets_sent[21]),
        .O(packets_sent1_carry__1_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__1_i_3
       (.I0(packets_sent[18]),
        .I1(packets_sent[19]),
        .O(packets_sent1_carry__1_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__1_i_4
       (.I0(packets_sent[16]),
        .I1(packets_sent[17]),
        .O(packets_sent1_carry__1_i_4_n_1));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 packets_sent1_carry__2
       (.CI(packets_sent1_carry__1_n_1),
        .CO({packets_sent1,NLW_packets_sent1_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({packets_sent[31],1'b0,1'b0,1'b0}),
        .O(NLW_packets_sent1_carry__2_O_UNCONNECTED[3:0]),
        .S({packets_sent1_carry__2_i_1_n_1,packets_sent1_carry__2_i_2_n_1,packets_sent1_carry__2_i_3_n_1,packets_sent1_carry__2_i_4_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__2_i_1
       (.I0(packets_sent[30]),
        .I1(packets_sent[31]),
        .O(packets_sent1_carry__2_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__2_i_2
       (.I0(packets_sent[28]),
        .I1(packets_sent[29]),
        .O(packets_sent1_carry__2_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__2_i_3
       (.I0(packets_sent[26]),
        .I1(packets_sent[27]),
        .O(packets_sent1_carry__2_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry__2_i_4
       (.I0(packets_sent[24]),
        .I1(packets_sent[25]),
        .O(packets_sent1_carry__2_i_4_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry_i_1
       (.I0(packets_sent[3]),
        .I1(packets_sent[2]),
        .O(packets_sent1_carry_i_1_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry_i_2
       (.I0(packets_sent[1]),
        .I1(packets_sent[0]),
        .O(packets_sent1_carry_i_2_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry_i_3
       (.I0(packets_sent[6]),
        .I1(packets_sent[7]),
        .O(packets_sent1_carry_i_3_n_1));
  LUT2 #(
    .INIT(4'h1)) 
    packets_sent1_carry_i_4
       (.I0(packets_sent[4]),
        .I1(packets_sent[5]),
        .O(packets_sent1_carry_i_4_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    packets_sent1_carry_i_5
       (.I0(packets_sent[2]),
        .I1(packets_sent[3]),
        .O(packets_sent1_carry_i_5_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    packets_sent1_carry_i_6
       (.I0(packets_sent[0]),
        .I1(packets_sent[1]),
        .O(packets_sent1_carry_i_6_n_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[0] 
       (.CLR(1'b0),
        .D(counter_n_34),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[10] 
       (.CLR(1'b0),
        .D(counter_n_24),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[11] 
       (.CLR(1'b0),
        .D(counter_n_23),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[12] 
       (.CLR(1'b0),
        .D(counter_n_22),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[12]_i_2 
       (.CI(\packets_sent_reg[8]_i_2_n_1 ),
        .CO({\packets_sent_reg[12]_i_2_n_1 ,\NLW_packets_sent_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[12:9]),
        .S(packets_sent[12:9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[13] 
       (.CLR(1'b0),
        .D(counter_n_21),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[14] 
       (.CLR(1'b0),
        .D(counter_n_20),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[15] 
       (.CLR(1'b0),
        .D(counter_n_19),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[16] 
       (.CLR(1'b0),
        .D(counter_n_18),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[16]_i_2 
       (.CI(\packets_sent_reg[12]_i_2_n_1 ),
        .CO({\packets_sent_reg[16]_i_2_n_1 ,\NLW_packets_sent_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[16:13]),
        .S(packets_sent[16:13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[17] 
       (.CLR(1'b0),
        .D(counter_n_17),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[18] 
       (.CLR(1'b0),
        .D(counter_n_16),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[19] 
       (.CLR(1'b0),
        .D(counter_n_15),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[1] 
       (.CLR(1'b0),
        .D(counter_n_33),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[20] 
       (.CLR(1'b0),
        .D(counter_n_14),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[20]_i_2 
       (.CI(\packets_sent_reg[16]_i_2_n_1 ),
        .CO({\packets_sent_reg[20]_i_2_n_1 ,\NLW_packets_sent_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[20:17]),
        .S(packets_sent[20:17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[21] 
       (.CLR(1'b0),
        .D(counter_n_13),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[22] 
       (.CLR(1'b0),
        .D(counter_n_12),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[23] 
       (.CLR(1'b0),
        .D(counter_n_11),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[24] 
       (.CLR(1'b0),
        .D(counter_n_10),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[24]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[24]_i_2 
       (.CI(\packets_sent_reg[20]_i_2_n_1 ),
        .CO({\packets_sent_reg[24]_i_2_n_1 ,\NLW_packets_sent_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[24:21]),
        .S(packets_sent[24:21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[25] 
       (.CLR(1'b0),
        .D(counter_n_9),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[26] 
       (.CLR(1'b0),
        .D(counter_n_8),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[27] 
       (.CLR(1'b0),
        .D(counter_n_7),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[28] 
       (.CLR(1'b0),
        .D(counter_n_6),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[28]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[28]_i_2 
       (.CI(\packets_sent_reg[24]_i_2_n_1 ),
        .CO({\packets_sent_reg[28]_i_2_n_1 ,\NLW_packets_sent_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[28:25]),
        .S(packets_sent[28:25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[29] 
       (.CLR(1'b0),
        .D(counter_n_5),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[2] 
       (.CLR(1'b0),
        .D(counter_n_32),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[30] 
       (.CLR(1'b0),
        .D(counter_n_4),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[31] 
       (.CLR(1'b0),
        .D(counter_n_3),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[31]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[31]_i_3 
       (.CI(\packets_sent_reg[28]_i_2_n_1 ),
        .CO(\NLW_packets_sent_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_packets_sent_reg[31]_i_3_O_UNCONNECTED [3],packets_sent0[31:29]}),
        .S({1'b0,packets_sent[31:29]}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[3] 
       (.CLR(1'b0),
        .D(counter_n_31),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[4] 
       (.CLR(1'b0),
        .D(counter_n_30),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\packets_sent_reg[4]_i_2_n_1 ,\NLW_packets_sent_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(packets_sent[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[4:1]),
        .S(packets_sent[4:1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[5] 
       (.CLR(1'b0),
        .D(counter_n_29),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[6] 
       (.CLR(1'b0),
        .D(counter_n_28),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[7] 
       (.CLR(1'b0),
        .D(counter_n_27),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[8] 
       (.CLR(1'b0),
        .D(counter_n_26),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \packets_sent_reg[8]_i_2 
       (.CI(\packets_sent_reg[4]_i_2_n_1 ),
        .CO({\packets_sent_reg[8]_i_2_n_1 ,\NLW_packets_sent_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(packets_sent0[8:5]),
        .S(packets_sent[8:5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \packets_sent_reg[9] 
       (.CLR(1'b0),
        .D(counter_n_25),
        .G(packets_sent1_carry__2_0),
        .GE(1'b1),
        .Q(packets_sent[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    rst_reg
       (.CLR(1'b0),
        .D(counter_n_35),
        .G(colour_decoder_n_2),
        .GE(1'b1),
        .Q(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
