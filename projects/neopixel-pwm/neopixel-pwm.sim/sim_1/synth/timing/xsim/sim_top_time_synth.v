// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Aug 28 16:38:25 2022
// Host        : localhost.localdomain running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/jtrieloff/cern/Xilinx/Vivado/2019.2/VHDL-modules/projects/neopixel-pwm/neopixel-pwm.sim/sim_1/synth/timing/xsim/sim_top_time_synth.v
// Design      : sig_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_0
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(15.625000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(78.125000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(2),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module comparator
   (O,
    DI,
    S,
    above_thresh1_carry__1_0,
    above_thresh1_carry__1_1);
  output [0:0]O;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]above_thresh1_carry__1_0;
  input [3:0]above_thresh1_carry__1_1;

  wire [3:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire above_thresh1;
  wire above_thresh1_carry__0_n_1;
  wire above_thresh1_carry__0_n_2;
  wire above_thresh1_carry__0_n_3;
  wire [3:0]above_thresh1_carry__1_0;
  wire [3:0]above_thresh1_carry__1_1;
  wire above_thresh1_carry_n_0;
  wire above_thresh1_carry_n_1;
  wire above_thresh1_carry_n_2;
  wire above_thresh1_carry_n_3;
  wire [3:0]NLW_above_thresh1_carry_O_UNCONNECTED;
  wire [3:0]NLW_above_thresh1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_above_thresh1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_above_thresh1_carry__1_O_UNCONNECTED;

  CARRY4 above_thresh1_carry
       (.CI(1'b0),
        .CO({above_thresh1_carry_n_0,above_thresh1_carry_n_1,above_thresh1_carry_n_2,above_thresh1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_above_thresh1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 above_thresh1_carry__0
       (.CI(above_thresh1_carry_n_0),
        .CO({above_thresh1,above_thresh1_carry__0_n_1,above_thresh1_carry__0_n_2,above_thresh1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(above_thresh1_carry__1_0),
        .O(NLW_above_thresh1_carry__0_O_UNCONNECTED[3:0]),
        .S(above_thresh1_carry__1_1));
  CARRY4 above_thresh1_carry__1
       (.CI(above_thresh1),
        .CO(NLW_above_thresh1_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_above_thresh1_carry__1_O_UNCONNECTED[3:1],O}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

module counter
   (DI,
    S,
    \int_counter_reg[14]_0 ,
    \int_counter_reg[14]_1 ,
    clk_out1,
    SR,
    MSB,
    end_bunch);
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\int_counter_reg[14]_0 ;
  output [3:0]\int_counter_reg[14]_1 ;
  input clk_out1;
  input [0:0]SR;
  input MSB;
  input end_bunch;

  wire [3:0]DI;
  wire MSB;
  wire [3:0]S;
  wire [0:0]SR;
  wire clk_out1;
  wire end_bunch;
  wire int_counter0_carry__0_i_1_n_0;
  wire int_counter0_carry__0_i_2_n_0;
  wire int_counter0_carry__0_n_2;
  wire int_counter0_carry__0_n_3;
  wire int_counter0_carry_i_1_n_0;
  wire int_counter0_carry_i_2_n_0;
  wire int_counter0_carry_i_3_n_0;
  wire int_counter0_carry_i_4_n_0;
  wire int_counter0_carry_n_0;
  wire int_counter0_carry_n_1;
  wire int_counter0_carry_n_2;
  wire int_counter0_carry_n_3;
  wire \int_counter[0]_i_1_n_0 ;
  wire \int_counter[0]_i_3_n_0 ;
  wire [15:0]int_counter_reg;
  wire \int_counter_reg[0]_i_2_n_0 ;
  wire \int_counter_reg[0]_i_2_n_1 ;
  wire \int_counter_reg[0]_i_2_n_2 ;
  wire \int_counter_reg[0]_i_2_n_3 ;
  wire \int_counter_reg[0]_i_2_n_4 ;
  wire \int_counter_reg[0]_i_2_n_5 ;
  wire \int_counter_reg[0]_i_2_n_6 ;
  wire \int_counter_reg[0]_i_2_n_7 ;
  wire \int_counter_reg[12]_i_1_n_1 ;
  wire \int_counter_reg[12]_i_1_n_2 ;
  wire \int_counter_reg[12]_i_1_n_3 ;
  wire \int_counter_reg[12]_i_1_n_4 ;
  wire \int_counter_reg[12]_i_1_n_5 ;
  wire \int_counter_reg[12]_i_1_n_6 ;
  wire \int_counter_reg[12]_i_1_n_7 ;
  wire [3:0]\int_counter_reg[14]_0 ;
  wire [3:0]\int_counter_reg[14]_1 ;
  wire \int_counter_reg[4]_i_1_n_0 ;
  wire \int_counter_reg[4]_i_1_n_1 ;
  wire \int_counter_reg[4]_i_1_n_2 ;
  wire \int_counter_reg[4]_i_1_n_3 ;
  wire \int_counter_reg[4]_i_1_n_4 ;
  wire \int_counter_reg[4]_i_1_n_5 ;
  wire \int_counter_reg[4]_i_1_n_6 ;
  wire \int_counter_reg[4]_i_1_n_7 ;
  wire \int_counter_reg[8]_i_1_n_0 ;
  wire \int_counter_reg[8]_i_1_n_1 ;
  wire \int_counter_reg[8]_i_1_n_2 ;
  wire \int_counter_reg[8]_i_1_n_3 ;
  wire \int_counter_reg[8]_i_1_n_4 ;
  wire \int_counter_reg[8]_i_1_n_5 ;
  wire \int_counter_reg[8]_i_1_n_6 ;
  wire \int_counter_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_int_counter0_carry_O_UNCONNECTED;
  wire [3:2]NLW_int_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_int_counter0_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    above_thresh1_carry__0_i_1
       (.I0(int_counter_reg[14]),
        .I1(int_counter_reg[15]),
        .O(\int_counter_reg[14]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    above_thresh1_carry__0_i_2
       (.I0(int_counter_reg[12]),
        .I1(int_counter_reg[13]),
        .O(\int_counter_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    above_thresh1_carry__0_i_3
       (.I0(int_counter_reg[10]),
        .I1(int_counter_reg[11]),
        .O(\int_counter_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    above_thresh1_carry__0_i_4
       (.I0(int_counter_reg[8]),
        .I1(int_counter_reg[9]),
        .O(\int_counter_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    above_thresh1_carry__0_i_5
       (.I0(int_counter_reg[14]),
        .I1(int_counter_reg[15]),
        .O(\int_counter_reg[14]_1 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    above_thresh1_carry__0_i_6
       (.I0(int_counter_reg[12]),
        .I1(int_counter_reg[13]),
        .O(\int_counter_reg[14]_1 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    above_thresh1_carry__0_i_7
       (.I0(int_counter_reg[10]),
        .I1(int_counter_reg[11]),
        .O(\int_counter_reg[14]_1 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    above_thresh1_carry__0_i_8
       (.I0(int_counter_reg[8]),
        .I1(int_counter_reg[9]),
        .O(\int_counter_reg[14]_1 [0]));
  LUT4 #(
    .INIT(16'hFF8A)) 
    above_thresh1_carry_i_1
       (.I0(int_counter_reg[6]),
        .I1(end_bunch),
        .I2(MSB),
        .I3(int_counter_reg[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'hFEA8)) 
    above_thresh1_carry_i_2
       (.I0(int_counter_reg[4]),
        .I1(MSB),
        .I2(end_bunch),
        .I3(int_counter_reg[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hFF8A)) 
    above_thresh1_carry_i_3
       (.I0(int_counter_reg[2]),
        .I1(end_bunch),
        .I2(MSB),
        .I3(int_counter_reg[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'hFA80)) 
    above_thresh1_carry_i_4
       (.I0(int_counter_reg[0]),
        .I1(MSB),
        .I2(int_counter_reg[1]),
        .I3(end_bunch),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h0059)) 
    above_thresh1_carry_i_5
       (.I0(int_counter_reg[6]),
        .I1(MSB),
        .I2(end_bunch),
        .I3(int_counter_reg[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h0056)) 
    above_thresh1_carry_i_6
       (.I0(int_counter_reg[5]),
        .I1(MSB),
        .I2(end_bunch),
        .I3(int_counter_reg[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h0059)) 
    above_thresh1_carry_i_7
       (.I0(int_counter_reg[2]),
        .I1(MSB),
        .I2(end_bunch),
        .I3(int_counter_reg[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h0560)) 
    above_thresh1_carry_i_8
       (.I0(int_counter_reg[0]),
        .I1(MSB),
        .I2(int_counter_reg[1]),
        .I3(end_bunch),
        .O(S[0]));
  CARRY4 int_counter0_carry
       (.CI(1'b0),
        .CO({int_counter0_carry_n_0,int_counter0_carry_n_1,int_counter0_carry_n_2,int_counter0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_counter0_carry_O_UNCONNECTED[3:0]),
        .S({int_counter0_carry_i_1_n_0,int_counter0_carry_i_2_n_0,int_counter0_carry_i_3_n_0,int_counter0_carry_i_4_n_0}));
  CARRY4 int_counter0_carry__0
       (.CI(int_counter0_carry_n_0),
        .CO({NLW_int_counter0_carry__0_CO_UNCONNECTED[3:2],int_counter0_carry__0_n_2,int_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,int_counter0_carry__0_i_1_n_0,int_counter0_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    int_counter0_carry__0_i_1
       (.I0(int_counter_reg[15]),
        .O(int_counter0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    int_counter0_carry__0_i_2
       (.I0(int_counter_reg[12]),
        .I1(end_bunch),
        .I2(int_counter_reg[14]),
        .I3(int_counter_reg[13]),
        .O(int_counter0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    int_counter0_carry_i_1
       (.I0(int_counter_reg[9]),
        .I1(end_bunch),
        .I2(int_counter_reg[11]),
        .I3(int_counter_reg[10]),
        .O(int_counter0_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h41400002)) 
    int_counter0_carry_i_2
       (.I0(int_counter_reg[6]),
        .I1(end_bunch),
        .I2(int_counter_reg[8]),
        .I3(MSB),
        .I4(int_counter_reg[7]),
        .O(int_counter0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h01000098)) 
    int_counter0_carry_i_3
       (.I0(int_counter_reg[3]),
        .I1(end_bunch),
        .I2(MSB),
        .I3(int_counter_reg[5]),
        .I4(int_counter_reg[4]),
        .O(int_counter0_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h00060500)) 
    int_counter0_carry_i_4
       (.I0(int_counter_reg[0]),
        .I1(MSB),
        .I2(int_counter_reg[2]),
        .I3(end_bunch),
        .I4(int_counter_reg[1]),
        .O(int_counter0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \int_counter[0]_i_1 
       (.I0(SR),
        .I1(int_counter0_carry__0_n_2),
        .O(\int_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_3 
       (.I0(int_counter_reg[0]),
        .O(\int_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_7 ),
        .Q(int_counter_reg[0]),
        .R(\int_counter[0]_i_1_n_0 ));
  CARRY4 \int_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\int_counter_reg[0]_i_2_n_0 ,\int_counter_reg[0]_i_2_n_1 ,\int_counter_reg[0]_i_2_n_2 ,\int_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\int_counter_reg[0]_i_2_n_4 ,\int_counter_reg[0]_i_2_n_5 ,\int_counter_reg[0]_i_2_n_6 ,\int_counter_reg[0]_i_2_n_7 }),
        .S({int_counter_reg[3:1],\int_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_5 ),
        .Q(int_counter_reg[10]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_4 ),
        .Q(int_counter_reg[11]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_7 ),
        .Q(int_counter_reg[12]),
        .R(\int_counter[0]_i_1_n_0 ));
  CARRY4 \int_counter_reg[12]_i_1 
       (.CI(\int_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED [3],\int_counter_reg[12]_i_1_n_1 ,\int_counter_reg[12]_i_1_n_2 ,\int_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[12]_i_1_n_4 ,\int_counter_reg[12]_i_1_n_5 ,\int_counter_reg[12]_i_1_n_6 ,\int_counter_reg[12]_i_1_n_7 }),
        .S(int_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_6 ),
        .Q(int_counter_reg[13]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_5 ),
        .Q(int_counter_reg[14]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_4 ),
        .Q(int_counter_reg[15]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_6 ),
        .Q(int_counter_reg[1]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_5 ),
        .Q(int_counter_reg[2]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_4 ),
        .Q(int_counter_reg[3]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_7 ),
        .Q(int_counter_reg[4]),
        .R(\int_counter[0]_i_1_n_0 ));
  CARRY4 \int_counter_reg[4]_i_1 
       (.CI(\int_counter_reg[0]_i_2_n_0 ),
        .CO({\int_counter_reg[4]_i_1_n_0 ,\int_counter_reg[4]_i_1_n_1 ,\int_counter_reg[4]_i_1_n_2 ,\int_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[4]_i_1_n_4 ,\int_counter_reg[4]_i_1_n_5 ,\int_counter_reg[4]_i_1_n_6 ,\int_counter_reg[4]_i_1_n_7 }),
        .S(int_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_6 ),
        .Q(int_counter_reg[5]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_5 ),
        .Q(int_counter_reg[6]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_4 ),
        .Q(int_counter_reg[7]),
        .R(\int_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_7 ),
        .Q(int_counter_reg[8]),
        .R(\int_counter[0]_i_1_n_0 ));
  CARRY4 \int_counter_reg[8]_i_1 
       (.CI(\int_counter_reg[4]_i_1_n_0 ),
        .CO({\int_counter_reg[8]_i_1_n_0 ,\int_counter_reg[8]_i_1_n_1 ,\int_counter_reg[8]_i_1_n_2 ,\int_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[8]_i_1_n_4 ,\int_counter_reg[8]_i_1_n_5 ,\int_counter_reg[8]_i_1_n_6 ,\int_counter_reg[8]_i_1_n_7 }),
        .S(int_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_6 ),
        .Q(int_counter_reg[9]),
        .R(\int_counter[0]_i_1_n_0 ));
endmodule

module pwm_gen
   (O,
    clk_out1,
    SR,
    MSB,
    end_bunch);
  output [0:0]O;
  input clk_out1;
  input [0:0]SR;
  input MSB;
  input end_bunch;

  wire MSB;
  wire [0:0]O;
  wire [0:0]SR;
  wire clk_out1;
  wire count_n_0;
  wire count_n_1;
  wire count_n_10;
  wire count_n_11;
  wire count_n_12;
  wire count_n_13;
  wire count_n_14;
  wire count_n_15;
  wire count_n_2;
  wire count_n_3;
  wire count_n_4;
  wire count_n_5;
  wire count_n_6;
  wire count_n_7;
  wire count_n_8;
  wire count_n_9;
  wire end_bunch;

  comparator comp
       (.DI({count_n_0,count_n_1,count_n_2,count_n_3}),
        .O(O),
        .S({count_n_4,count_n_5,count_n_6,count_n_7}),
        .above_thresh1_carry__1_0({count_n_8,count_n_9,count_n_10,count_n_11}),
        .above_thresh1_carry__1_1({count_n_12,count_n_13,count_n_14,count_n_15}));
  counter count
       (.DI({count_n_0,count_n_1,count_n_2,count_n_3}),
        .MSB(MSB),
        .S({count_n_4,count_n_5,count_n_6,count_n_7}),
        .SR(SR),
        .clk_out1(clk_out1),
        .end_bunch(end_bunch),
        .\int_counter_reg[14]_0 ({count_n_8,count_n_9,count_n_10,count_n_11}),
        .\int_counter_reg[14]_1 ({count_n_12,count_n_13,count_n_14,count_n_15}));
endmodule

module shift_register
   (MSB,
    CLK,
    SR);
  output MSB;
  input CLK;
  input [0:0]SR;

  wire CLK;
  wire MSB;
  wire [0:0]SR;
  wire [22:0]intermediate;
  wire \intermediate[22]_i_1_n_0 ;
  wire p_0_in;
  wire \reg_contents_reg_n_0_[0] ;
  wire \reg_contents_reg_n_0_[10] ;
  wire \reg_contents_reg_n_0_[11] ;
  wire \reg_contents_reg_n_0_[12] ;
  wire \reg_contents_reg_n_0_[13] ;
  wire \reg_contents_reg_n_0_[14] ;
  wire \reg_contents_reg_n_0_[15] ;
  wire \reg_contents_reg_n_0_[16] ;
  wire \reg_contents_reg_n_0_[17] ;
  wire \reg_contents_reg_n_0_[18] ;
  wire \reg_contents_reg_n_0_[19] ;
  wire \reg_contents_reg_n_0_[1] ;
  wire \reg_contents_reg_n_0_[20] ;
  wire \reg_contents_reg_n_0_[21] ;
  wire \reg_contents_reg_n_0_[22] ;
  wire \reg_contents_reg_n_0_[2] ;
  wire \reg_contents_reg_n_0_[3] ;
  wire \reg_contents_reg_n_0_[4] ;
  wire \reg_contents_reg_n_0_[5] ;
  wire \reg_contents_reg_n_0_[6] ;
  wire \reg_contents_reg_n_0_[7] ;
  wire \reg_contents_reg_n_0_[8] ;
  wire \reg_contents_reg_n_0_[9] ;

  FDRE #(
    .INIT(1'b0)) 
    MSB_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(MSB),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \intermediate[22]_i_1 
       (.I0(SR),
        .O(\intermediate[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[0] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[0] ),
        .Q(intermediate[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[10] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[10] ),
        .Q(intermediate[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[11] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[11] ),
        .Q(intermediate[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[12] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[12] ),
        .Q(intermediate[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[13] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[13] ),
        .Q(intermediate[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[14] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[14] ),
        .Q(intermediate[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[15] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[15] ),
        .Q(intermediate[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[16] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[16] ),
        .Q(intermediate[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[17] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[17] ),
        .Q(intermediate[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[18] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[18] ),
        .Q(intermediate[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[19] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[19] ),
        .Q(intermediate[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[1] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[1] ),
        .Q(intermediate[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[20] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[20] ),
        .Q(intermediate[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[21] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[21] ),
        .Q(intermediate[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[22] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[22] ),
        .Q(intermediate[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[2] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[2] ),
        .Q(intermediate[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[3] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[3] ),
        .Q(intermediate[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[4] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[4] ),
        .Q(intermediate[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[5] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[5] ),
        .Q(intermediate[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[6] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[6] ),
        .Q(intermediate[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[7] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[7] ),
        .Q(intermediate[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[8] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[8] ),
        .Q(intermediate[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \intermediate_reg[9] 
       (.C(CLK),
        .CE(\intermediate[22]_i_1_n_0 ),
        .D(\reg_contents_reg_n_0_[9] ),
        .Q(intermediate[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(\reg_contents_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[9]),
        .Q(\reg_contents_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[10]),
        .Q(\reg_contents_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[11]),
        .Q(\reg_contents_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[12]),
        .Q(\reg_contents_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[13]),
        .Q(\reg_contents_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[14]),
        .Q(\reg_contents_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[15]),
        .Q(\reg_contents_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[16]),
        .Q(\reg_contents_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[17]),
        .Q(\reg_contents_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[18]),
        .Q(\reg_contents_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[0]),
        .Q(\reg_contents_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[19]),
        .Q(\reg_contents_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[20]),
        .Q(\reg_contents_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[21]),
        .Q(\reg_contents_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[22]),
        .Q(p_0_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[1]),
        .Q(\reg_contents_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[2]),
        .Q(\reg_contents_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[3]),
        .Q(\reg_contents_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[4]),
        .Q(\reg_contents_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[5]),
        .Q(\reg_contents_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[6]),
        .Q(\reg_contents_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[7]),
        .Q(\reg_contents_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_contents_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(intermediate[8]),
        .Q(\reg_contents_reg_n_0_[9] ),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module sig_gen
   (reset,
    sig,
    CLK100MHZ);
  input reset;
  output sig;
  input CLK100MHZ;

  (* IBUF_LOW_PWR *) wire CLK100MHZ;
  wire CLK10MHZ;
  wire MSB;
  wire [4:0]bits_sent_reg;
  wire clear;
  wire end_bunch;
  wire [4:0]plusOp;
  wire reset;
  wire reset_IBUF;
  wire sig;
  wire sig_OBUF;
  wire sig_OBUF_BUFG;

initial begin
 $sdf_annotate("sim_top_time_synth.sdf",,,,"tool_control");
end
  LUT1 #(
    .INIT(2'h1)) 
    \bits_sent[0]_i_1 
       (.I0(bits_sent_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bits_sent[1]_i_1 
       (.I0(bits_sent_reg[0]),
        .I1(bits_sent_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bits_sent[2]_i_1 
       (.I0(bits_sent_reg[0]),
        .I1(bits_sent_reg[1]),
        .I2(bits_sent_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bits_sent[3]_i_1 
       (.I0(bits_sent_reg[1]),
        .I1(bits_sent_reg[0]),
        .I2(bits_sent_reg[2]),
        .I3(bits_sent_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bits_sent[4]_i_1 
       (.I0(bits_sent_reg[2]),
        .I1(bits_sent_reg[0]),
        .I2(bits_sent_reg[1]),
        .I3(bits_sent_reg[3]),
        .I4(bits_sent_reg[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \bits_sent_reg[0] 
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(bits_sent_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bits_sent_reg[1] 
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(bits_sent_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bits_sent_reg[2] 
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(bits_sent_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bits_sent_reg[3] 
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(bits_sent_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \bits_sent_reg[4] 
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(bits_sent_reg[4]),
        .R(clear));
  (* IMPORTED_FROM = "/home/jtrieloff/cern/Xilinx/Vivado/2019.2/VHDL-modules/projects/neopixel-pwm/neopixel-pwm.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 clock
       (.clk_in1(CLK100MHZ),
        .clk_out1(CLK10MHZ),
        .reset(reset_IBUF));
  LUT5 #(
    .INIT(32'hAAA80000)) 
    end_bunch_i_1
       (.I0(bits_sent_reg[3]),
        .I1(bits_sent_reg[1]),
        .I2(bits_sent_reg[0]),
        .I3(bits_sent_reg[2]),
        .I4(bits_sent_reg[4]),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    end_bunch_reg
       (.C(sig_OBUF_BUFG),
        .CE(1'b1),
        .D(clear),
        .Q(end_bunch),
        .R(1'b0));
  pwm_gen pwm_gen
       (.MSB(MSB),
        .O(sig_OBUF),
        .SR(reset_IBUF),
        .clk_out1(CLK10MHZ),
        .end_bunch(end_bunch));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  shift_register shift_in
       (.CLK(sig_OBUF_BUFG),
        .MSB(MSB),
        .SR(reset_IBUF));
  BUFG sig_OBUF_BUFG_inst
       (.I(sig_OBUF),
        .O(sig_OBUF_BUFG));
  OBUF sig_OBUF_inst
       (.I(sig_OBUF_BUFG),
        .O(sig));
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
