// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Wed Jul  6 09:32:13 2022
// Host        : localhost.localdomain running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/jtrieloff/pwm_led/pwm_led.sim/sim_1/impl/timing/xsim/top_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module comparator
   (led0_b,
    DI,
    S,
    led0_r,
    led0_r_0);
  output led0_b;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]led0_r;
  input [3:0]led0_r_0;

  wire [3:0]DI;
  wire [3:0]S;
  wire above_thresh0_carry_n_0;
  wire led0_b;
  wire [3:0]led0_r;
  wire [3:0]led0_r_0;
  wire [2:0]NLW_above_thresh0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_above_thresh0_carry_O_UNCONNECTED;
  wire [2:0]NLW_above_thresh0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_above_thresh0_carry__0_O_UNCONNECTED;

  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 above_thresh0_carry
       (.CI(1'b0),
        .CO({above_thresh0_carry_n_0,NLW_above_thresh0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_above_thresh0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 above_thresh0_carry__0
       (.CI(above_thresh0_carry_n_0),
        .CO({led0_b,NLW_above_thresh0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(led0_r),
        .O(NLW_above_thresh0_carry__0_O_UNCONNECTED[3:0]),
        .S(led0_r_0));
endmodule

module counter
   (int_counter_reg,
    DI,
    \int_counter_reg[15]_0 ,
    CLK,
    sw_IBUF,
    Q);
  output [15:0]int_counter_reg;
  output [3:0]DI;
  output [3:0]\int_counter_reg[15]_0 ;
  input CLK;
  input [0:0]sw_IBUF;
  input [15:0]Q;

  wire CLK;
  wire [3:0]DI;
  wire [15:0]Q;
  wire clear;
  wire \int_counter[0]_i_3_n_0 ;
  wire [15:0]int_counter_reg;
  wire \int_counter_reg[0]_i_2_n_0 ;
  wire \int_counter_reg[0]_i_2_n_4 ;
  wire \int_counter_reg[0]_i_2_n_5 ;
  wire \int_counter_reg[0]_i_2_n_6 ;
  wire \int_counter_reg[0]_i_2_n_7 ;
  wire \int_counter_reg[12]_i_1__0_n_4 ;
  wire \int_counter_reg[12]_i_1__0_n_5 ;
  wire \int_counter_reg[12]_i_1__0_n_6 ;
  wire \int_counter_reg[12]_i_1__0_n_7 ;
  wire [3:0]\int_counter_reg[15]_0 ;
  wire \int_counter_reg[4]_i_1__0_n_0 ;
  wire \int_counter_reg[4]_i_1__0_n_4 ;
  wire \int_counter_reg[4]_i_1__0_n_5 ;
  wire \int_counter_reg[4]_i_1__0_n_6 ;
  wire \int_counter_reg[4]_i_1__0_n_7 ;
  wire \int_counter_reg[8]_i_1__0_n_0 ;
  wire \int_counter_reg[8]_i_1__0_n_4 ;
  wire \int_counter_reg[8]_i_1__0_n_5 ;
  wire \int_counter_reg[8]_i_1__0_n_6 ;
  wire \int_counter_reg[8]_i_1__0_n_7 ;
  wire [0:0]sw_IBUF;
  wire [2:0]\NLW_int_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_int_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry__0_i_1
       (.I0(int_counter_reg[15]),
        .I1(Q[15]),
        .I2(int_counter_reg[14]),
        .I3(Q[14]),
        .O(\int_counter_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry__0_i_2
       (.I0(int_counter_reg[13]),
        .I1(Q[13]),
        .I2(int_counter_reg[12]),
        .I3(Q[12]),
        .O(\int_counter_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry__0_i_3
       (.I0(int_counter_reg[11]),
        .I1(Q[11]),
        .I2(int_counter_reg[10]),
        .I3(Q[10]),
        .O(\int_counter_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry__0_i_4
       (.I0(int_counter_reg[9]),
        .I1(Q[9]),
        .I2(int_counter_reg[8]),
        .I3(Q[8]),
        .O(\int_counter_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry_i_1
       (.I0(int_counter_reg[7]),
        .I1(Q[7]),
        .I2(int_counter_reg[6]),
        .I3(Q[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry_i_2
       (.I0(int_counter_reg[5]),
        .I1(Q[5]),
        .I2(int_counter_reg[4]),
        .I3(Q[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry_i_3
       (.I0(int_counter_reg[3]),
        .I1(Q[3]),
        .I2(int_counter_reg[2]),
        .I3(Q[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    above_thresh0_carry_i_4
       (.I0(int_counter_reg[1]),
        .I1(Q[1]),
        .I2(int_counter_reg[0]),
        .I3(Q[0]),
        .O(DI[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_1 
       (.I0(sw_IBUF),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_3 
       (.I0(int_counter_reg[0]),
        .O(\int_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_7 ),
        .Q(int_counter_reg[0]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\int_counter_reg[0]_i_2_n_0 ,\NLW_int_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\int_counter_reg[0]_i_2_n_4 ,\int_counter_reg[0]_i_2_n_5 ,\int_counter_reg[0]_i_2_n_6 ,\int_counter_reg[0]_i_2_n_7 }),
        .S({int_counter_reg[3:1],\int_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_5 ),
        .Q(int_counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_4 ),
        .Q(int_counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_7 ),
        .Q(int_counter_reg[12]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[12]_i_1__0 
       (.CI(\int_counter_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_int_counter_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[12]_i_1__0_n_4 ,\int_counter_reg[12]_i_1__0_n_5 ,\int_counter_reg[12]_i_1__0_n_6 ,\int_counter_reg[12]_i_1__0_n_7 }),
        .S(int_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_6 ),
        .Q(int_counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_5 ),
        .Q(int_counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1__0_n_4 ),
        .Q(int_counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_6 ),
        .Q(int_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_5 ),
        .Q(int_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_2_n_4 ),
        .Q(int_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_7 ),
        .Q(int_counter_reg[4]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[4]_i_1__0 
       (.CI(\int_counter_reg[0]_i_2_n_0 ),
        .CO({\int_counter_reg[4]_i_1__0_n_0 ,\NLW_int_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[4]_i_1__0_n_4 ,\int_counter_reg[4]_i_1__0_n_5 ,\int_counter_reg[4]_i_1__0_n_6 ,\int_counter_reg[4]_i_1__0_n_7 }),
        .S(int_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_6 ),
        .Q(int_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_5 ),
        .Q(int_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1__0_n_4 ),
        .Q(int_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_7 ),
        .Q(int_counter_reg[8]),
        .R(clear));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[8]_i_1__0 
       (.CI(\int_counter_reg[4]_i_1__0_n_0 ),
        .CO({\int_counter_reg[8]_i_1__0_n_0 ,\NLW_int_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\int_counter_reg[8]_i_1__0_n_4 ,\int_counter_reg[8]_i_1__0_n_5 ,\int_counter_reg[8]_i_1__0_n_6 ,\int_counter_reg[8]_i_1__0_n_7 }),
        .S(int_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1__0_n_6 ),
        .Q(int_counter_reg[9]),
        .R(clear));
endmodule

module pwm_gen
   (int_counter_reg,
    led0_b,
    CLK,
    S,
    led0_r,
    sw_IBUF,
    Q);
  output [15:0]int_counter_reg;
  output led0_b;
  input CLK;
  input [3:0]S;
  input [3:0]led0_r;
  input [0:0]sw_IBUF;
  input [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire [3:0]S;
  wire count_n_16;
  wire count_n_17;
  wire count_n_18;
  wire count_n_19;
  wire count_n_20;
  wire count_n_21;
  wire count_n_22;
  wire count_n_23;
  wire [15:0]int_counter_reg;
  wire led0_b;
  wire [3:0]led0_r;
  wire [0:0]sw_IBUF;

  comparator comp
       (.DI({count_n_16,count_n_17,count_n_18,count_n_19}),
        .S(S),
        .led0_b(led0_b),
        .led0_r({count_n_20,count_n_21,count_n_22,count_n_23}),
        .led0_r_0(led0_r));
  counter count
       (.CLK(CLK),
        .DI({count_n_16,count_n_17,count_n_18,count_n_19}),
        .Q(Q),
        .int_counter_reg(int_counter_reg),
        .\int_counter_reg[15]_0 ({count_n_20,count_n_21,count_n_22,count_n_23}),
        .sw_IBUF(sw_IBUF));
endmodule

module threshset
   (S,
    Q,
    \int_intermediary_reg[15]_0 ,
    CLK,
    int_counter_reg);
  output [3:0]S;
  output [15:0]Q;
  output [3:0]\int_intermediary_reg[15]_0 ;
  input CLK;
  input [15:0]int_counter_reg;

  wire CLK;
  wire [15:0]Q;
  wire [3:0]S;
  wire [15:0]SHIFT_RIGHT;
  wire direction;
  wire direction__0;
  wire direction_reg_i_1_n_0;
  wire direction_reg_i_3_n_0;
  wire direction_reg_i_4_n_0;
  wire direction_reg_i_5_n_0;
  wire direction_reg_i_6_n_0;
  wire direction_reg_i_7_n_0;
  wire direction_reg_i_8_n_0;
  wire \int_counter[0]_i_2_n_0 ;
  wire \int_counter[0]_i_3__0_n_0 ;
  wire \int_counter[0]_i_4_n_0 ;
  wire \int_counter[0]_i_5_n_0 ;
  wire \int_counter[0]_i_6_n_0 ;
  wire \int_counter[0]_i_7_n_0 ;
  wire \int_counter[0]_i_8_n_0 ;
  wire \int_counter[12]_i_2_n_0 ;
  wire \int_counter[12]_i_3_n_0 ;
  wire \int_counter[12]_i_4_n_0 ;
  wire \int_counter[12]_i_5_n_0 ;
  wire \int_counter[12]_i_6_n_0 ;
  wire \int_counter[12]_i_7_n_0 ;
  wire \int_counter[12]_i_8_n_0 ;
  wire \int_counter[12]_i_9_n_0 ;
  wire \int_counter[16]_i_2_n_0 ;
  wire \int_counter[16]_i_3_n_0 ;
  wire \int_counter[16]_i_4_n_0 ;
  wire \int_counter[16]_i_5_n_0 ;
  wire \int_counter[16]_i_6_n_0 ;
  wire \int_counter[16]_i_7_n_0 ;
  wire \int_counter[16]_i_8_n_0 ;
  wire \int_counter[16]_i_9_n_0 ;
  wire \int_counter[20]_i_2_n_0 ;
  wire \int_counter[20]_i_3_n_0 ;
  wire \int_counter[20]_i_4_n_0 ;
  wire \int_counter[20]_i_5_n_0 ;
  wire \int_counter[20]_i_6_n_0 ;
  wire \int_counter[20]_i_7_n_0 ;
  wire \int_counter[20]_i_8_n_0 ;
  wire \int_counter[20]_i_9_n_0 ;
  wire \int_counter[24]_i_2_n_0 ;
  wire \int_counter[24]_i_3_n_0 ;
  wire \int_counter[24]_i_4_n_0 ;
  wire \int_counter[24]_i_5_n_0 ;
  wire \int_counter[24]_i_6_n_0 ;
  wire \int_counter[24]_i_7_n_0 ;
  wire \int_counter[24]_i_8_n_0 ;
  wire \int_counter[24]_i_9_n_0 ;
  wire \int_counter[28]_i_2_n_0 ;
  wire \int_counter[28]_i_3_n_0 ;
  wire \int_counter[28]_i_4_n_0 ;
  wire \int_counter[28]_i_5_n_0 ;
  wire \int_counter[28]_i_6_n_0 ;
  wire \int_counter[28]_i_7_n_0 ;
  wire \int_counter[28]_i_8_n_0 ;
  wire \int_counter[28]_i_9_n_0 ;
  wire \int_counter[32]_i_2_n_0 ;
  wire \int_counter[4]_i_2_n_0 ;
  wire \int_counter[4]_i_3_n_0 ;
  wire \int_counter[4]_i_4_n_0 ;
  wire \int_counter[4]_i_5_n_0 ;
  wire \int_counter[4]_i_6_n_0 ;
  wire \int_counter[4]_i_7_n_0 ;
  wire \int_counter[4]_i_8_n_0 ;
  wire \int_counter[4]_i_9_n_0 ;
  wire \int_counter[8]_i_2_n_0 ;
  wire \int_counter[8]_i_3_n_0 ;
  wire \int_counter[8]_i_4_n_0 ;
  wire \int_counter[8]_i_5_n_0 ;
  wire \int_counter[8]_i_6_n_0 ;
  wire \int_counter[8]_i_7_n_0 ;
  wire \int_counter[8]_i_8_n_0 ;
  wire \int_counter[8]_i_9_n_0 ;
  wire [15:0]int_counter_reg;
  wire \int_counter_reg[0]_i_1_n_0 ;
  wire \int_counter_reg[0]_i_1_n_4 ;
  wire \int_counter_reg[0]_i_1_n_5 ;
  wire \int_counter_reg[0]_i_1_n_6 ;
  wire \int_counter_reg[0]_i_1_n_7 ;
  wire \int_counter_reg[12]_i_1_n_0 ;
  wire \int_counter_reg[12]_i_1_n_4 ;
  wire \int_counter_reg[12]_i_1_n_5 ;
  wire \int_counter_reg[12]_i_1_n_6 ;
  wire \int_counter_reg[12]_i_1_n_7 ;
  wire \int_counter_reg[16]_i_1_n_0 ;
  wire \int_counter_reg[16]_i_1_n_4 ;
  wire \int_counter_reg[16]_i_1_n_5 ;
  wire \int_counter_reg[16]_i_1_n_6 ;
  wire \int_counter_reg[16]_i_1_n_7 ;
  wire \int_counter_reg[20]_i_1_n_0 ;
  wire \int_counter_reg[20]_i_1_n_4 ;
  wire \int_counter_reg[20]_i_1_n_5 ;
  wire \int_counter_reg[20]_i_1_n_6 ;
  wire \int_counter_reg[20]_i_1_n_7 ;
  wire \int_counter_reg[24]_i_1_n_0 ;
  wire \int_counter_reg[24]_i_1_n_4 ;
  wire \int_counter_reg[24]_i_1_n_5 ;
  wire \int_counter_reg[24]_i_1_n_6 ;
  wire \int_counter_reg[24]_i_1_n_7 ;
  wire \int_counter_reg[28]_i_1_n_0 ;
  wire \int_counter_reg[28]_i_1_n_4 ;
  wire \int_counter_reg[28]_i_1_n_5 ;
  wire \int_counter_reg[28]_i_1_n_6 ;
  wire \int_counter_reg[28]_i_1_n_7 ;
  wire \int_counter_reg[32]_i_1_n_7 ;
  wire \int_counter_reg[4]_i_1_n_0 ;
  wire \int_counter_reg[4]_i_1_n_4 ;
  wire \int_counter_reg[4]_i_1_n_5 ;
  wire \int_counter_reg[4]_i_1_n_6 ;
  wire \int_counter_reg[4]_i_1_n_7 ;
  wire \int_counter_reg[8]_i_1_n_0 ;
  wire \int_counter_reg[8]_i_1_n_4 ;
  wire \int_counter_reg[8]_i_1_n_5 ;
  wire \int_counter_reg[8]_i_1_n_6 ;
  wire \int_counter_reg[8]_i_1_n_7 ;
  wire \int_counter_reg_n_0_[0] ;
  wire \int_counter_reg_n_0_[10] ;
  wire \int_counter_reg_n_0_[11] ;
  wire \int_counter_reg_n_0_[12] ;
  wire \int_counter_reg_n_0_[13] ;
  wire \int_counter_reg_n_0_[14] ;
  wire \int_counter_reg_n_0_[15] ;
  wire \int_counter_reg_n_0_[1] ;
  wire \int_counter_reg_n_0_[2] ;
  wire \int_counter_reg_n_0_[32] ;
  wire \int_counter_reg_n_0_[3] ;
  wire \int_counter_reg_n_0_[4] ;
  wire \int_counter_reg_n_0_[5] ;
  wire \int_counter_reg_n_0_[6] ;
  wire \int_counter_reg_n_0_[7] ;
  wire \int_counter_reg_n_0_[8] ;
  wire \int_counter_reg_n_0_[9] ;
  wire [3:0]\int_intermediary_reg[15]_0 ;
  wire [2:0]\NLW_int_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_int_counter_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_int_counter_reg[32]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_int_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry__0_i_5
       (.I0(Q[15]),
        .I1(int_counter_reg[15]),
        .I2(Q[14]),
        .I3(int_counter_reg[14]),
        .O(\int_intermediary_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry__0_i_6
       (.I0(Q[13]),
        .I1(int_counter_reg[13]),
        .I2(Q[12]),
        .I3(int_counter_reg[12]),
        .O(\int_intermediary_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry__0_i_7
       (.I0(Q[11]),
        .I1(int_counter_reg[11]),
        .I2(Q[10]),
        .I3(int_counter_reg[10]),
        .O(\int_intermediary_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry__0_i_8
       (.I0(Q[9]),
        .I1(int_counter_reg[9]),
        .I2(Q[8]),
        .I3(int_counter_reg[8]),
        .O(\int_intermediary_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry_i_5
       (.I0(Q[7]),
        .I1(int_counter_reg[7]),
        .I2(Q[6]),
        .I3(int_counter_reg[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry_i_6
       (.I0(Q[5]),
        .I1(int_counter_reg[5]),
        .I2(Q[4]),
        .I3(int_counter_reg[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry_i_7
       (.I0(Q[3]),
        .I1(int_counter_reg[3]),
        .I2(Q[2]),
        .I3(int_counter_reg[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    above_thresh0_carry_i_8
       (.I0(Q[1]),
        .I1(int_counter_reg[1]),
        .I2(Q[0]),
        .I3(int_counter_reg[0]),
        .O(S[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    direction_reg
       (.CLR(1'b0),
        .D(direction_reg_i_1_n_0),
        .G(direction__0),
        .GE(1'b1),
        .Q(direction));
  LUT1 #(
    .INIT(2'h1)) 
    direction_reg_i_1
       (.I0(direction),
        .O(direction_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    direction_reg_i_2
       (.I0(direction_reg_i_3_n_0),
        .I1(direction_reg_i_4_n_0),
        .I2(direction_reg_i_5_n_0),
        .I3(direction_reg_i_6_n_0),
        .I4(direction_reg_i_7_n_0),
        .I5(direction_reg_i_8_n_0),
        .O(direction__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    direction_reg_i_3
       (.I0(SHIFT_RIGHT[7]),
        .I1(SHIFT_RIGHT[8]),
        .I2(SHIFT_RIGHT[5]),
        .I3(SHIFT_RIGHT[6]),
        .I4(SHIFT_RIGHT[10]),
        .I5(SHIFT_RIGHT[9]),
        .O(direction_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    direction_reg_i_4
       (.I0(SHIFT_RIGHT[13]),
        .I1(SHIFT_RIGHT[14]),
        .I2(SHIFT_RIGHT[11]),
        .I3(SHIFT_RIGHT[12]),
        .I4(\int_counter_reg_n_0_[32] ),
        .I5(SHIFT_RIGHT[15]),
        .O(direction_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    direction_reg_i_5
       (.I0(\int_counter_reg_n_0_[2] ),
        .I1(\int_counter_reg_n_0_[1] ),
        .I2(\int_counter_reg_n_0_[0] ),
        .O(direction_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    direction_reg_i_6
       (.I0(\int_counter_reg_n_0_[5] ),
        .I1(\int_counter_reg_n_0_[6] ),
        .I2(\int_counter_reg_n_0_[3] ),
        .I3(\int_counter_reg_n_0_[4] ),
        .I4(\int_counter_reg_n_0_[8] ),
        .I5(\int_counter_reg_n_0_[7] ),
        .O(direction_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    direction_reg_i_7
       (.I0(SHIFT_RIGHT[1]),
        .I1(SHIFT_RIGHT[2]),
        .I2(\int_counter_reg_n_0_[15] ),
        .I3(SHIFT_RIGHT[0]),
        .I4(SHIFT_RIGHT[4]),
        .I5(SHIFT_RIGHT[3]),
        .O(direction_reg_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    direction_reg_i_8
       (.I0(\int_counter_reg_n_0_[11] ),
        .I1(\int_counter_reg_n_0_[12] ),
        .I2(\int_counter_reg_n_0_[9] ),
        .I3(\int_counter_reg_n_0_[10] ),
        .I4(\int_counter_reg_n_0_[14] ),
        .I5(\int_counter_reg_n_0_[13] ),
        .O(direction_reg_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_2 
       (.I0(direction),
        .O(\int_counter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_3__0 
       (.I0(direction),
        .O(\int_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[0]_i_4 
       (.I0(direction),
        .O(\int_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[0]_i_5 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[3] ),
        .O(\int_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[0]_i_6 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[2] ),
        .O(\int_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[0]_i_7 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[1] ),
        .O(\int_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_counter[0]_i_8 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[0] ),
        .O(\int_counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[12]_i_2 
       (.I0(direction),
        .O(\int_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[12]_i_3 
       (.I0(direction),
        .O(\int_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[12]_i_4 
       (.I0(direction),
        .O(\int_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[12]_i_5 
       (.I0(direction),
        .O(\int_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[12]_i_6 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[15] ),
        .O(\int_counter[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[12]_i_7 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[14] ),
        .O(\int_counter[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[12]_i_8 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[13] ),
        .O(\int_counter[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[12]_i_9 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[12] ),
        .O(\int_counter[12]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[16]_i_2 
       (.I0(direction),
        .O(\int_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[16]_i_3 
       (.I0(direction),
        .O(\int_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[16]_i_4 
       (.I0(direction),
        .O(\int_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[16]_i_5 
       (.I0(direction),
        .O(\int_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[16]_i_6 
       (.I0(direction),
        .I1(SHIFT_RIGHT[3]),
        .O(\int_counter[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[16]_i_7 
       (.I0(direction),
        .I1(SHIFT_RIGHT[2]),
        .O(\int_counter[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[16]_i_8 
       (.I0(direction),
        .I1(SHIFT_RIGHT[1]),
        .O(\int_counter[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[16]_i_9 
       (.I0(direction),
        .I1(SHIFT_RIGHT[0]),
        .O(\int_counter[16]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[20]_i_2 
       (.I0(direction),
        .O(\int_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[20]_i_3 
       (.I0(direction),
        .O(\int_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[20]_i_4 
       (.I0(direction),
        .O(\int_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[20]_i_5 
       (.I0(direction),
        .O(\int_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[20]_i_6 
       (.I0(direction),
        .I1(SHIFT_RIGHT[7]),
        .O(\int_counter[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[20]_i_7 
       (.I0(direction),
        .I1(SHIFT_RIGHT[6]),
        .O(\int_counter[20]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[20]_i_8 
       (.I0(direction),
        .I1(SHIFT_RIGHT[5]),
        .O(\int_counter[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[20]_i_9 
       (.I0(direction),
        .I1(SHIFT_RIGHT[4]),
        .O(\int_counter[20]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[24]_i_2 
       (.I0(direction),
        .O(\int_counter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[24]_i_3 
       (.I0(direction),
        .O(\int_counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[24]_i_4 
       (.I0(direction),
        .O(\int_counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[24]_i_5 
       (.I0(direction),
        .O(\int_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[24]_i_6 
       (.I0(direction),
        .I1(SHIFT_RIGHT[11]),
        .O(\int_counter[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[24]_i_7 
       (.I0(direction),
        .I1(SHIFT_RIGHT[10]),
        .O(\int_counter[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[24]_i_8 
       (.I0(direction),
        .I1(SHIFT_RIGHT[9]),
        .O(\int_counter[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[24]_i_9 
       (.I0(direction),
        .I1(SHIFT_RIGHT[8]),
        .O(\int_counter[24]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[28]_i_2 
       (.I0(direction),
        .O(\int_counter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[28]_i_3 
       (.I0(direction),
        .O(\int_counter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[28]_i_4 
       (.I0(direction),
        .O(\int_counter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[28]_i_5 
       (.I0(direction),
        .O(\int_counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[28]_i_6 
       (.I0(direction),
        .I1(SHIFT_RIGHT[15]),
        .O(\int_counter[28]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[28]_i_7 
       (.I0(direction),
        .I1(SHIFT_RIGHT[14]),
        .O(\int_counter[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[28]_i_8 
       (.I0(direction),
        .I1(SHIFT_RIGHT[13]),
        .O(\int_counter[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[28]_i_9 
       (.I0(direction),
        .I1(SHIFT_RIGHT[12]),
        .O(\int_counter[28]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[32]_i_2 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[32] ),
        .O(\int_counter[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[4]_i_2 
       (.I0(direction),
        .O(\int_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[4]_i_3 
       (.I0(direction),
        .O(\int_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[4]_i_4 
       (.I0(direction),
        .O(\int_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[4]_i_5 
       (.I0(direction),
        .O(\int_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[4]_i_6 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[7] ),
        .O(\int_counter[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[4]_i_7 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[6] ),
        .O(\int_counter[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[4]_i_8 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[5] ),
        .O(\int_counter[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[4]_i_9 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[4] ),
        .O(\int_counter[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[8]_i_2 
       (.I0(direction),
        .O(\int_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[8]_i_3 
       (.I0(direction),
        .O(\int_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[8]_i_4 
       (.I0(direction),
        .O(\int_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \int_counter[8]_i_5 
       (.I0(direction),
        .O(\int_counter[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[8]_i_6 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[11] ),
        .O(\int_counter[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[8]_i_7 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[10] ),
        .O(\int_counter[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[8]_i_8 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[9] ),
        .O(\int_counter[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \int_counter[8]_i_9 
       (.I0(direction),
        .I1(\int_counter_reg_n_0_[8] ),
        .O(\int_counter[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_1_n_7 ),
        .Q(\int_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\int_counter_reg[0]_i_1_n_0 ,\NLW_int_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(direction_reg_i_1_n_0),
        .DI({\int_counter[0]_i_2_n_0 ,\int_counter[0]_i_3__0_n_0 ,\int_counter[0]_i_4_n_0 ,direction}),
        .O({\int_counter_reg[0]_i_1_n_4 ,\int_counter_reg[0]_i_1_n_5 ,\int_counter_reg[0]_i_1_n_6 ,\int_counter_reg[0]_i_1_n_7 }),
        .S({\int_counter[0]_i_5_n_0 ,\int_counter[0]_i_6_n_0 ,\int_counter[0]_i_7_n_0 ,\int_counter[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_5 ),
        .Q(\int_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_4 ),
        .Q(\int_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_7 ),
        .Q(\int_counter_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[12]_i_1 
       (.CI(\int_counter_reg[8]_i_1_n_0 ),
        .CO({\int_counter_reg[12]_i_1_n_0 ,\NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[12]_i_2_n_0 ,\int_counter[12]_i_3_n_0 ,\int_counter[12]_i_4_n_0 ,\int_counter[12]_i_5_n_0 }),
        .O({\int_counter_reg[12]_i_1_n_4 ,\int_counter_reg[12]_i_1_n_5 ,\int_counter_reg[12]_i_1_n_6 ,\int_counter_reg[12]_i_1_n_7 }),
        .S({\int_counter[12]_i_6_n_0 ,\int_counter[12]_i_7_n_0 ,\int_counter[12]_i_8_n_0 ,\int_counter[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_6 ),
        .Q(\int_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_5 ),
        .Q(\int_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[12]_i_1_n_4 ),
        .Q(\int_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[16]_i_1_n_7 ),
        .Q(SHIFT_RIGHT[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[16]_i_1 
       (.CI(\int_counter_reg[12]_i_1_n_0 ),
        .CO({\int_counter_reg[16]_i_1_n_0 ,\NLW_int_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[16]_i_2_n_0 ,\int_counter[16]_i_3_n_0 ,\int_counter[16]_i_4_n_0 ,\int_counter[16]_i_5_n_0 }),
        .O({\int_counter_reg[16]_i_1_n_4 ,\int_counter_reg[16]_i_1_n_5 ,\int_counter_reg[16]_i_1_n_6 ,\int_counter_reg[16]_i_1_n_7 }),
        .S({\int_counter[16]_i_6_n_0 ,\int_counter[16]_i_7_n_0 ,\int_counter[16]_i_8_n_0 ,\int_counter[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[16]_i_1_n_6 ),
        .Q(SHIFT_RIGHT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[16]_i_1_n_5 ),
        .Q(SHIFT_RIGHT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[16]_i_1_n_4 ),
        .Q(SHIFT_RIGHT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_1_n_6 ),
        .Q(\int_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[20]_i_1_n_7 ),
        .Q(SHIFT_RIGHT[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[20]_i_1 
       (.CI(\int_counter_reg[16]_i_1_n_0 ),
        .CO({\int_counter_reg[20]_i_1_n_0 ,\NLW_int_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[20]_i_2_n_0 ,\int_counter[20]_i_3_n_0 ,\int_counter[20]_i_4_n_0 ,\int_counter[20]_i_5_n_0 }),
        .O({\int_counter_reg[20]_i_1_n_4 ,\int_counter_reg[20]_i_1_n_5 ,\int_counter_reg[20]_i_1_n_6 ,\int_counter_reg[20]_i_1_n_7 }),
        .S({\int_counter[20]_i_6_n_0 ,\int_counter[20]_i_7_n_0 ,\int_counter[20]_i_8_n_0 ,\int_counter[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[20]_i_1_n_6 ),
        .Q(SHIFT_RIGHT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[20]_i_1_n_5 ),
        .Q(SHIFT_RIGHT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[20]_i_1_n_4 ),
        .Q(SHIFT_RIGHT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[24]_i_1_n_7 ),
        .Q(SHIFT_RIGHT[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[24]_i_1 
       (.CI(\int_counter_reg[20]_i_1_n_0 ),
        .CO({\int_counter_reg[24]_i_1_n_0 ,\NLW_int_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[24]_i_2_n_0 ,\int_counter[24]_i_3_n_0 ,\int_counter[24]_i_4_n_0 ,\int_counter[24]_i_5_n_0 }),
        .O({\int_counter_reg[24]_i_1_n_4 ,\int_counter_reg[24]_i_1_n_5 ,\int_counter_reg[24]_i_1_n_6 ,\int_counter_reg[24]_i_1_n_7 }),
        .S({\int_counter[24]_i_6_n_0 ,\int_counter[24]_i_7_n_0 ,\int_counter[24]_i_8_n_0 ,\int_counter[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[24]_i_1_n_6 ),
        .Q(SHIFT_RIGHT[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[24]_i_1_n_5 ),
        .Q(SHIFT_RIGHT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[24]_i_1_n_4 ),
        .Q(SHIFT_RIGHT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[28]_i_1_n_7 ),
        .Q(SHIFT_RIGHT[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[28]_i_1 
       (.CI(\int_counter_reg[24]_i_1_n_0 ),
        .CO({\int_counter_reg[28]_i_1_n_0 ,\NLW_int_counter_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[28]_i_2_n_0 ,\int_counter[28]_i_3_n_0 ,\int_counter[28]_i_4_n_0 ,\int_counter[28]_i_5_n_0 }),
        .O({\int_counter_reg[28]_i_1_n_4 ,\int_counter_reg[28]_i_1_n_5 ,\int_counter_reg[28]_i_1_n_6 ,\int_counter_reg[28]_i_1_n_7 }),
        .S({\int_counter[28]_i_6_n_0 ,\int_counter[28]_i_7_n_0 ,\int_counter[28]_i_8_n_0 ,\int_counter[28]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[28]_i_1_n_6 ),
        .Q(SHIFT_RIGHT[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_1_n_5 ),
        .Q(\int_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[28]_i_1_n_5 ),
        .Q(SHIFT_RIGHT[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[28]_i_1_n_4 ),
        .Q(SHIFT_RIGHT[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[32]_i_1_n_7 ),
        .Q(\int_counter_reg_n_0_[32] ),
        .R(1'b0));
  CARRY4 \int_counter_reg[32]_i_1 
       (.CI(\int_counter_reg[28]_i_1_n_0 ),
        .CO(\NLW_int_counter_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_int_counter_reg[32]_i_1_O_UNCONNECTED [3:1],\int_counter_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\int_counter[32]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[0]_i_1_n_4 ),
        .Q(\int_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_7 ),
        .Q(\int_counter_reg_n_0_[4] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[4]_i_1 
       (.CI(\int_counter_reg[0]_i_1_n_0 ),
        .CO({\int_counter_reg[4]_i_1_n_0 ,\NLW_int_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[4]_i_2_n_0 ,\int_counter[4]_i_3_n_0 ,\int_counter[4]_i_4_n_0 ,\int_counter[4]_i_5_n_0 }),
        .O({\int_counter_reg[4]_i_1_n_4 ,\int_counter_reg[4]_i_1_n_5 ,\int_counter_reg[4]_i_1_n_6 ,\int_counter_reg[4]_i_1_n_7 }),
        .S({\int_counter[4]_i_6_n_0 ,\int_counter[4]_i_7_n_0 ,\int_counter[4]_i_8_n_0 ,\int_counter[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_6 ),
        .Q(\int_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_5 ),
        .Q(\int_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[4]_i_1_n_4 ),
        .Q(\int_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_7 ),
        .Q(\int_counter_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \int_counter_reg[8]_i_1 
       (.CI(\int_counter_reg[4]_i_1_n_0 ),
        .CO({\int_counter_reg[8]_i_1_n_0 ,\NLW_int_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\int_counter[8]_i_2_n_0 ,\int_counter[8]_i_3_n_0 ,\int_counter[8]_i_4_n_0 ,\int_counter[8]_i_5_n_0 }),
        .O({\int_counter_reg[8]_i_1_n_4 ,\int_counter_reg[8]_i_1_n_5 ,\int_counter_reg[8]_i_1_n_6 ,\int_counter_reg[8]_i_1_n_7 }),
        .S({\int_counter[8]_i_6_n_0 ,\int_counter[8]_i_7_n_0 ,\int_counter[8]_i_8_n_0 ,\int_counter[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \int_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\int_counter_reg[8]_i_1_n_6 ),
        .Q(\int_counter_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[0] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[10] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[11] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[12] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[13] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[14] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[15] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[1] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[2] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[3] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[4] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[5] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[6] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[7] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[8] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_intermediary_reg[9] 
       (.C(CLK),
        .CE(direction),
        .D(SHIFT_RIGHT[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "8f0c14d5" *) 
(* NotValidForBitStream *)
module top
   (sw,
    led0_b,
    led0_g,
    led0_r,
    CLK100MHZ);
  input [0:0]sw;
  output led0_b;
  output led0_g;
  output led0_r;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [15:0]\count/int_counter_reg ;
  wire [15:0]int_intermediary;
  wire led0_b;
  wire led0_g;
  wire led0_r;
  wire led0_r_OBUF;
  wire sett0_n_0;
  wire sett0_n_1;
  wire sett0_n_2;
  wire sett0_n_20;
  wire sett0_n_21;
  wire sett0_n_22;
  wire sett0_n_23;
  wire sett0_n_3;
  wire [0:0]sw;
  wire [0:0]sw_IBUF;

initial begin
 $sdf_annotate("top_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  OBUF led0_b_OBUF_inst
       (.I(led0_r_OBUF),
        .O(led0_b));
  OBUF led0_g_OBUF_inst
       (.I(led0_r_OBUF),
        .O(led0_g));
  OBUF led0_r_OBUF_inst
       (.I(led0_r_OBUF),
        .O(led0_r));
  pwm_gen pwm0
       (.CLK(CLK100MHZ_IBUF_BUFG),
        .Q(int_intermediary),
        .S({sett0_n_0,sett0_n_1,sett0_n_2,sett0_n_3}),
        .int_counter_reg(\count/int_counter_reg ),
        .led0_b(led0_r_OBUF),
        .led0_r({sett0_n_20,sett0_n_21,sett0_n_22,sett0_n_23}),
        .sw_IBUF(sw_IBUF));
  threshset sett0
       (.CLK(CLK100MHZ_IBUF_BUFG),
        .Q(int_intermediary),
        .S({sett0_n_0,sett0_n_1,sett0_n_2,sett0_n_3}),
        .int_counter_reg(\count/int_counter_reg ),
        .\int_intermediary_reg[15]_0 ({sett0_n_20,sett0_n_21,sett0_n_22,sett0_n_23}));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw),
        .O(sw_IBUF));
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
