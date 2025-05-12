// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Apr 25 23:50:52 2025
// Host        : rohinishraj running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/rohin/OneDrive/Documents/Desktop/lipsi/Lipsi_with_seven_seg/project_1/project_1.sim/sim_1/impl/func/xsim/toptb_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module accumulator
   (Q,
    DIADI,
    seg_OBUF,
    carry_out,
    \acc_out_reg[1]_0 ,
    \acc_out_reg[2]_0 ,
    \acc_out_reg[3]_0 ,
    \acc_out_reg[4]_0 ,
    \acc_out_reg[5]_0 ,
    \acc_out_reg[6]_0 ,
    \acc_out_reg[7]_0 ,
    \acc_out_reg[7]_1 ,
    \opp_reg[1] ,
    \opp_reg[1]_0 ,
    \opp_reg[1]_1 ,
    \opp_reg[1]_2 ,
    \opp_reg[1]_3 ,
    \opp_reg[1]_4 ,
    \opp_reg[1]_5 ,
    \opp_reg[1]_6 ,
    \FSM_sequential_current_state_reg[2] ,
    S,
    \acc_out[4]_i_2_0 ,
    p_0_out,
    \acc_out[0]_i_2_0 ,
    \acc_out[4]_i_2_1 ,
    DOBDO,
    mem_reg,
    mem_reg_0,
    \seg_OBUF[0]_inst_i_1_0 ,
    c_reg,
    mem_reg_i_26,
    c,
    reset1_IBUF,
    E,
    D,
    CLK);
  output [7:0]Q;
  output [7:0]DIADI;
  output [6:0]seg_OBUF;
  output carry_out;
  output \acc_out_reg[1]_0 ;
  output \acc_out_reg[2]_0 ;
  output \acc_out_reg[3]_0 ;
  output \acc_out_reg[4]_0 ;
  output \acc_out_reg[5]_0 ;
  output \acc_out_reg[6]_0 ;
  output \acc_out_reg[7]_0 ;
  output \acc_out_reg[7]_1 ;
  output \opp_reg[1] ;
  output \opp_reg[1]_0 ;
  output \opp_reg[1]_1 ;
  output \opp_reg[1]_2 ;
  output \opp_reg[1]_3 ;
  output \opp_reg[1]_4 ;
  output \opp_reg[1]_5 ;
  output \opp_reg[1]_6 ;
  output \FSM_sequential_current_state_reg[2] ;
  input [3:0]S;
  input [3:0]\acc_out[4]_i_2_0 ;
  input [0:0]p_0_out;
  input [2:0]\acc_out[0]_i_2_0 ;
  input [3:0]\acc_out[4]_i_2_1 ;
  input [7:0]DOBDO;
  input mem_reg;
  input [7:0]mem_reg_0;
  input [1:0]\seg_OBUF[0]_inst_i_1_0 ;
  input [2:0]c_reg;
  input [0:0]mem_reg_i_26;
  input c;
  input reset1_IBUF;
  input [0:0]E;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [7:0]DIADI;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [7:0]Q;
  wire [3:0]S;
  wire [2:0]\acc_out[0]_i_2_0 ;
  wire \acc_out[3]_i_13_n_0 ;
  wire \acc_out[3]_i_14_n_0 ;
  wire \acc_out[3]_i_15_n_0 ;
  wire \acc_out[3]_i_16_n_0 ;
  wire \acc_out[3]_i_17_n_0 ;
  wire \acc_out[3]_i_22_n_0 ;
  wire \acc_out[3]_i_23_n_0 ;
  wire \acc_out[3]_i_24_n_0 ;
  wire \acc_out[3]_i_25_n_0 ;
  wire [3:0]\acc_out[4]_i_2_0 ;
  wire [3:0]\acc_out[4]_i_2_1 ;
  wire \acc_out[7]_i_17_n_0 ;
  wire \acc_out[7]_i_18_n_0 ;
  wire \acc_out[7]_i_19_n_0 ;
  wire \acc_out[7]_i_20_n_0 ;
  wire \acc_out[7]_i_25_n_0 ;
  wire \acc_out[7]_i_26_n_0 ;
  wire \acc_out[7]_i_27_n_0 ;
  wire \acc_out[7]_i_28_n_0 ;
  wire \acc_out_reg[1]_0 ;
  wire \acc_out_reg[2]_0 ;
  wire \acc_out_reg[3]_0 ;
  wire \acc_out_reg[3]_i_5_n_0 ;
  wire \acc_out_reg[3]_i_5_n_4 ;
  wire \acc_out_reg[3]_i_5_n_5 ;
  wire \acc_out_reg[3]_i_5_n_6 ;
  wire \acc_out_reg[3]_i_5_n_7 ;
  wire \acc_out_reg[3]_i_6_n_0 ;
  wire \acc_out_reg[3]_i_6_n_4 ;
  wire \acc_out_reg[3]_i_6_n_5 ;
  wire \acc_out_reg[3]_i_6_n_6 ;
  wire \acc_out_reg[3]_i_6_n_7 ;
  wire \acc_out_reg[3]_i_7_n_0 ;
  wire \acc_out_reg[3]_i_7_n_4 ;
  wire \acc_out_reg[3]_i_7_n_5 ;
  wire \acc_out_reg[3]_i_7_n_6 ;
  wire \acc_out_reg[3]_i_7_n_7 ;
  wire \acc_out_reg[3]_i_8_n_0 ;
  wire \acc_out_reg[3]_i_8_n_4 ;
  wire \acc_out_reg[3]_i_8_n_5 ;
  wire \acc_out_reg[3]_i_8_n_6 ;
  wire \acc_out_reg[3]_i_8_n_7 ;
  wire \acc_out_reg[4]_0 ;
  wire \acc_out_reg[5]_0 ;
  wire \acc_out_reg[6]_0 ;
  wire \acc_out_reg[7]_0 ;
  wire \acc_out_reg[7]_1 ;
  wire \acc_out_reg[7]_i_10_n_0 ;
  wire \acc_out_reg[7]_i_10_n_4 ;
  wire \acc_out_reg[7]_i_10_n_5 ;
  wire \acc_out_reg[7]_i_10_n_6 ;
  wire \acc_out_reg[7]_i_10_n_7 ;
  wire \acc_out_reg[7]_i_11_n_0 ;
  wire \acc_out_reg[7]_i_11_n_4 ;
  wire \acc_out_reg[7]_i_11_n_5 ;
  wire \acc_out_reg[7]_i_11_n_6 ;
  wire \acc_out_reg[7]_i_11_n_7 ;
  wire \acc_out_reg[7]_i_8_n_0 ;
  wire \acc_out_reg[7]_i_8_n_4 ;
  wire \acc_out_reg[7]_i_8_n_5 ;
  wire \acc_out_reg[7]_i_8_n_6 ;
  wire \acc_out_reg[7]_i_8_n_7 ;
  wire \acc_out_reg[7]_i_9_n_0 ;
  wire \acc_out_reg[7]_i_9_n_4 ;
  wire \acc_out_reg[7]_i_9_n_5 ;
  wire \acc_out_reg[7]_i_9_n_6 ;
  wire \acc_out_reg[7]_i_9_n_7 ;
  wire c;
  wire c_i_2_n_0;
  wire [2:0]c_reg;
  wire c_reg_i_3_n_3;
  wire c_reg_i_5_n_3;
  wire carry_out;
  wire data0;
  wire data2;
  wire mem_reg;
  wire [7:0]mem_reg_0;
  wire [0:0]mem_reg_i_26;
  wire mem_reg_i_43_n_0;
  wire \opp_reg[1] ;
  wire \opp_reg[1]_0 ;
  wire \opp_reg[1]_1 ;
  wire \opp_reg[1]_2 ;
  wire \opp_reg[1]_3 ;
  wire \opp_reg[1]_4 ;
  wire \opp_reg[1]_5 ;
  wire \opp_reg[1]_6 ;
  wire [0:0]p_0_out;
  wire reset1_IBUF;
  wire [6:0]seg_OBUF;
  wire [1:0]\seg_OBUF[0]_inst_i_1_0 ;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_10_n_4 ;
  wire \seg_OBUF[6]_inst_i_10_n_5 ;
  wire \seg_OBUF[6]_inst_i_10_n_6 ;
  wire \seg_OBUF[6]_inst_i_10_n_7 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_3 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire \seg_OBUF[6]_inst_i_14_n_4 ;
  wire \seg_OBUF[6]_inst_i_14_n_5 ;
  wire \seg_OBUF[6]_inst_i_14_n_6 ;
  wire \seg_OBUF[6]_inst_i_14_n_7 ;
  wire \seg_OBUF[6]_inst_i_15_n_0 ;
  wire \seg_OBUF[6]_inst_i_16_n_0 ;
  wire \seg_OBUF[6]_inst_i_17_n_0 ;
  wire \seg_OBUF[6]_inst_i_18_n_0 ;
  wire \seg_OBUF[6]_inst_i_19_n_0 ;
  wire \seg_OBUF[6]_inst_i_20_n_0 ;
  wire \seg_OBUF[6]_inst_i_21_n_0 ;
  wire \seg_OBUF[6]_inst_i_22_n_0 ;
  wire \seg_OBUF[6]_inst_i_23_n_0 ;
  wire \seg_OBUF[6]_inst_i_24_n_0 ;
  wire \seg_OBUF[6]_inst_i_25_n_0 ;
  wire \seg_OBUF[6]_inst_i_26_n_0 ;
  wire \seg_OBUF[6]_inst_i_27_n_0 ;
  wire \seg_OBUF[6]_inst_i_28_n_0 ;
  wire \seg_OBUF[6]_inst_i_29_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_30_n_0 ;
  wire \seg_OBUF[6]_inst_i_31_n_0 ;
  wire \seg_OBUF[6]_inst_i_32_n_0 ;
  wire \seg_OBUF[6]_inst_i_33_n_0 ;
  wire \seg_OBUF[6]_inst_i_34_n_0 ;
  wire \seg_OBUF[6]_inst_i_35_n_0 ;
  wire \seg_OBUF[6]_inst_i_3_n_0 ;
  wire \seg_OBUF[6]_inst_i_4_n_0 ;
  wire \seg_OBUF[6]_inst_i_5_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire [2:0]\NLW_acc_out_reg[3]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[3]_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[3]_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[3]_i_8_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[7]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[7]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[7]_i_8_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_out_reg[7]_i_9_CO_UNCONNECTED ;
  wire [3:1]NLW_c_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_3_O_UNCONNECTED;
  wire [3:1]NLW_c_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_4_O_UNCONNECTED;
  wire [3:1]NLW_c_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_5_O_UNCONNECTED;
  wire [3:1]NLW_c_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_c_reg_i_6_O_UNCONNECTED;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_seg_OBUF[6]_inst_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_seg_OBUF[6]_inst_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_seg_OBUF[6]_inst_i_23_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[0]_i_2 
       (.I0(\acc_out_reg[3]_i_5_n_7 ),
        .I1(\acc_out_reg[3]_i_6_n_7 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[3]_i_7_n_7 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[3]_i_8_n_7 ),
        .O(\opp_reg[1]_6 ));
  LUT4 #(
    .INIT(16'hCAA0)) 
    \acc_out[0]_i_4 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(DOBDO[1]),
        .I3(DOBDO[0]),
        .O(\acc_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[1]_i_2 
       (.I0(\acc_out_reg[3]_i_5_n_6 ),
        .I1(\acc_out_reg[3]_i_6_n_6 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[3]_i_7_n_6 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[3]_i_8_n_6 ),
        .O(\opp_reg[1]_5 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[1]_i_4 
       (.I0(Q[2]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[0]),
        .O(\acc_out_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[2]_i_2 
       (.I0(\acc_out_reg[3]_i_5_n_5 ),
        .I1(\acc_out_reg[3]_i_6_n_5 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[3]_i_7_n_5 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[3]_i_8_n_5 ),
        .O(\opp_reg[1]_4 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[2]_i_4 
       (.I0(Q[3]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[1]),
        .O(\acc_out_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_13 
       (.I0(c),
        .I1(Q[0]),
        .O(\acc_out[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_14 
       (.I0(Q[3]),
        .I1(DOBDO[3]),
        .O(\acc_out[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_15 
       (.I0(Q[2]),
        .I1(DOBDO[2]),
        .O(\acc_out[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_16 
       (.I0(Q[1]),
        .I1(DOBDO[1]),
        .O(\acc_out[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_17 
       (.I0(Q[0]),
        .I1(c),
        .O(\acc_out[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[3]_i_2 
       (.I0(\acc_out_reg[3]_i_5_n_4 ),
        .I1(\acc_out_reg[3]_i_6_n_4 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[3]_i_7_n_4 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[3]_i_8_n_4 ),
        .O(\opp_reg[1]_3 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_22 
       (.I0(Q[3]),
        .I1(DOBDO[3]),
        .O(\acc_out[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_23 
       (.I0(Q[2]),
        .I1(DOBDO[2]),
        .O(\acc_out[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_24 
       (.I0(Q[1]),
        .I1(DOBDO[1]),
        .O(\acc_out[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[3]_i_25 
       (.I0(Q[0]),
        .I1(DOBDO[0]),
        .O(\acc_out[3]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[3]_i_4 
       (.I0(Q[4]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[2]),
        .O(\acc_out_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[4]_i_2 
       (.I0(\acc_out_reg[7]_i_8_n_7 ),
        .I1(\acc_out_reg[7]_i_9_n_7 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[7]_i_10_n_7 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[7]_i_11_n_7 ),
        .O(\opp_reg[1]_2 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[4]_i_4 
       (.I0(Q[5]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[3]),
        .O(\acc_out_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[5]_i_2 
       (.I0(\acc_out_reg[7]_i_8_n_6 ),
        .I1(\acc_out_reg[7]_i_9_n_6 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[7]_i_10_n_6 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[7]_i_11_n_6 ),
        .O(\opp_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[5]_i_4 
       (.I0(Q[6]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[4]),
        .O(\acc_out_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[6]_i_2 
       (.I0(\acc_out_reg[7]_i_8_n_5 ),
        .I1(\acc_out_reg[7]_i_9_n_5 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[7]_i_10_n_5 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[7]_i_11_n_5 ),
        .O(\opp_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \acc_out[6]_i_4 
       (.I0(Q[7]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[5]),
        .O(\acc_out_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_17 
       (.I0(Q[7]),
        .I1(DOBDO[7]),
        .O(\acc_out[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_18 
       (.I0(Q[6]),
        .I1(DOBDO[6]),
        .O(\acc_out[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_19 
       (.I0(Q[5]),
        .I1(DOBDO[5]),
        .O(\acc_out[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_20 
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .O(\acc_out[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_25 
       (.I0(Q[7]),
        .I1(DOBDO[7]),
        .O(\acc_out[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_26 
       (.I0(Q[6]),
        .I1(DOBDO[6]),
        .O(\acc_out[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_27 
       (.I0(Q[5]),
        .I1(DOBDO[5]),
        .O(\acc_out[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc_out[7]_i_28 
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .O(\acc_out[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \acc_out[7]_i_3 
       (.I0(\acc_out_reg[7]_i_8_n_4 ),
        .I1(\acc_out_reg[7]_i_9_n_4 ),
        .I2(c_reg[1]),
        .I3(\acc_out_reg[7]_i_10_n_4 ),
        .I4(c_reg[0]),
        .I5(\acc_out_reg[7]_i_11_n_4 ),
        .O(\opp_reg[1] ));
  LUT4 #(
    .INIT(16'hE320)) 
    \acc_out[7]_i_6 
       (.I0(Q[7]),
        .I1(DOBDO[0]),
        .I2(DOBDO[1]),
        .I3(Q[6]),
        .O(\acc_out_reg[7]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(reset1_IBUF));
  CARRY4 \acc_out_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\acc_out_reg[3]_i_5_n_0 ,\NLW_acc_out_reg[3]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(p_0_out),
        .DI(Q[3:0]),
        .O({\acc_out_reg[3]_i_5_n_4 ,\acc_out_reg[3]_i_5_n_5 ,\acc_out_reg[3]_i_5_n_6 ,\acc_out_reg[3]_i_5_n_7 }),
        .S({\acc_out[0]_i_2_0 ,\acc_out[3]_i_13_n_0 }));
  CARRY4 \acc_out_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\acc_out_reg[3]_i_6_n_0 ,\NLW_acc_out_reg[3]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(DOBDO[0]),
        .DI(Q[3:0]),
        .O({\acc_out_reg[3]_i_6_n_4 ,\acc_out_reg[3]_i_6_n_5 ,\acc_out_reg[3]_i_6_n_6 ,\acc_out_reg[3]_i_6_n_7 }),
        .S({\acc_out[3]_i_14_n_0 ,\acc_out[3]_i_15_n_0 ,\acc_out[3]_i_16_n_0 ,\acc_out[3]_i_17_n_0 }));
  CARRY4 \acc_out_reg[3]_i_7 
       (.CI(1'b0),
        .CO({\acc_out_reg[3]_i_7_n_0 ,\NLW_acc_out_reg[3]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\acc_out_reg[3]_i_7_n_4 ,\acc_out_reg[3]_i_7_n_5 ,\acc_out_reg[3]_i_7_n_6 ,\acc_out_reg[3]_i_7_n_7 }),
        .S(S));
  CARRY4 \acc_out_reg[3]_i_8 
       (.CI(1'b0),
        .CO({\acc_out_reg[3]_i_8_n_0 ,\NLW_acc_out_reg[3]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({\acc_out_reg[3]_i_8_n_4 ,\acc_out_reg[3]_i_8_n_5 ,\acc_out_reg[3]_i_8_n_6 ,\acc_out_reg[3]_i_8_n_7 }),
        .S({\acc_out[3]_i_22_n_0 ,\acc_out[3]_i_23_n_0 ,\acc_out[3]_i_24_n_0 ,\acc_out[3]_i_25_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \acc_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(reset1_IBUF));
  CARRY4 \acc_out_reg[7]_i_10 
       (.CI(\acc_out_reg[3]_i_7_n_0 ),
        .CO({\acc_out_reg[7]_i_10_n_0 ,\NLW_acc_out_reg[7]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\acc_out_reg[7]_i_10_n_4 ,\acc_out_reg[7]_i_10_n_5 ,\acc_out_reg[7]_i_10_n_6 ,\acc_out_reg[7]_i_10_n_7 }),
        .S(\acc_out[4]_i_2_0 ));
  CARRY4 \acc_out_reg[7]_i_11 
       (.CI(\acc_out_reg[3]_i_8_n_0 ),
        .CO({\acc_out_reg[7]_i_11_n_0 ,\NLW_acc_out_reg[7]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\acc_out_reg[7]_i_11_n_4 ,\acc_out_reg[7]_i_11_n_5 ,\acc_out_reg[7]_i_11_n_6 ,\acc_out_reg[7]_i_11_n_7 }),
        .S({\acc_out[7]_i_25_n_0 ,\acc_out[7]_i_26_n_0 ,\acc_out[7]_i_27_n_0 ,\acc_out[7]_i_28_n_0 }));
  CARRY4 \acc_out_reg[7]_i_8 
       (.CI(\acc_out_reg[3]_i_5_n_0 ),
        .CO({\acc_out_reg[7]_i_8_n_0 ,\NLW_acc_out_reg[7]_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\acc_out_reg[7]_i_8_n_4 ,\acc_out_reg[7]_i_8_n_5 ,\acc_out_reg[7]_i_8_n_6 ,\acc_out_reg[7]_i_8_n_7 }),
        .S(\acc_out[4]_i_2_1 ));
  CARRY4 \acc_out_reg[7]_i_9 
       (.CI(\acc_out_reg[3]_i_6_n_0 ),
        .CO({\acc_out_reg[7]_i_9_n_0 ,\NLW_acc_out_reg[7]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\acc_out_reg[7]_i_9_n_4 ,\acc_out_reg[7]_i_9_n_5 ,\acc_out_reg[7]_i_9_n_6 ,\acc_out_reg[7]_i_9_n_7 }),
        .S({\acc_out[7]_i_17_n_0 ,\acc_out[7]_i_18_n_0 ,\acc_out[7]_i_19_n_0 ,\acc_out[7]_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    c_i_1
       (.I0(c_i_2_n_0),
        .I1(c_reg[2]),
        .O(carry_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    c_i_2
       (.I0(c_reg_i_3_n_3),
        .I1(data2),
        .I2(c_reg[1]),
        .I3(c_reg_i_5_n_3),
        .I4(c_reg[0]),
        .I5(data0),
        .O(c_i_2_n_0));
  CARRY4 c_reg_i_3
       (.CI(\acc_out_reg[7]_i_8_n_0 ),
        .CO({NLW_c_reg_i_3_CO_UNCONNECTED[3:1],c_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 c_reg_i_4
       (.CI(\acc_out_reg[7]_i_9_n_0 ),
        .CO({NLW_c_reg_i_4_CO_UNCONNECTED[3:1],data2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 c_reg_i_5
       (.CI(\acc_out_reg[7]_i_10_n_0 ),
        .CO({NLW_c_reg_i_5_CO_UNCONNECTED[3:1],c_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 c_reg_i_6
       (.CI(\acc_out_reg[7]_i_11_n_0 ),
        .CO({NLW_c_reg_i_6_CO_UNCONNECTED[3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_c_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_15
       (.I0(Q[7]),
        .I1(mem_reg),
        .I2(mem_reg_0[7]),
        .O(DIADI[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_16
       (.I0(Q[6]),
        .I1(mem_reg),
        .I2(mem_reg_0[6]),
        .O(DIADI[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_17
       (.I0(Q[5]),
        .I1(mem_reg),
        .I2(mem_reg_0[5]),
        .O(DIADI[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_18
       (.I0(Q[4]),
        .I1(mem_reg),
        .I2(mem_reg_0[4]),
        .O(DIADI[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_19
       (.I0(Q[3]),
        .I1(mem_reg),
        .I2(mem_reg_0[3]),
        .O(DIADI[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_20
       (.I0(Q[2]),
        .I1(mem_reg),
        .I2(mem_reg_0[2]),
        .O(DIADI[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_21
       (.I0(Q[1]),
        .I1(mem_reg),
        .I2(mem_reg_0[1]),
        .O(DIADI[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_22
       (.I0(Q[0]),
        .I1(mem_reg),
        .I2(mem_reg_0[0]),
        .O(DIADI[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    mem_reg_i_42
       (.I0(mem_reg_i_26),
        .I1(mem_reg_i_43_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_i_43
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(mem_reg_i_43_n_0));
  LUT4 #(
    .INIT(16'h6810)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_4_n_0 ),
        .O(seg_OBUF[0]));
  LUT4 #(
    .INIT(16'h4F09)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[1]));
  LUT4 #(
    .INIT(16'h0188)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[2]));
  LUT4 #(
    .INIT(16'h4138)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[3]));
  LUT4 #(
    .INIT(16'h80AE)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_2_n_0 ),
        .O(seg_OBUF[4]));
  LUT4 #(
    .INIT(16'h4504)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_3_n_0 ),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4610)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_5_n_0 ),
        .O(seg_OBUF[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \seg_OBUF[6]_inst_i_10 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_10_n_0 ,\NLW_seg_OBUF[6]_inst_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\seg_OBUF[6]_inst_i_10_n_4 ,\seg_OBUF[6]_inst_i_10_n_5 ,\seg_OBUF[6]_inst_i_10_n_6 ,\seg_OBUF[6]_inst_i_10_n_7 }),
        .S({\seg_OBUF[6]_inst_i_19_n_0 ,\seg_OBUF[6]_inst_i_20_n_0 ,\seg_OBUF[6]_inst_i_21_n_0 ,\seg_OBUF[6]_inst_i_22_n_0 }));
  LUT6 #(
    .INIT(64'h7CB697C33E97C3E9)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I4(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_4 ),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \seg_OBUF[6]_inst_i_12 
       (.CI(\seg_OBUF[6]_inst_i_23_n_0 ),
        .CO({\NLW_seg_OBUF[6]_inst_i_12_CO_UNCONNECTED [3:1],\seg_OBUF[6]_inst_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_24_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_12_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\seg_OBUF[6]_inst_i_25_n_0 }));
  LUT5 #(
    .INIT(32'h00553000)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(\seg_OBUF[6]_inst_i_17_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_12_n_3 ),
        .I2(Q[7]),
        .I3(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [0]),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \seg_OBUF[6]_inst_i_14 
       (.CI(\seg_OBUF[6]_inst_i_10_n_0 ),
        .CO(\NLW_seg_OBUF[6]_inst_i_14_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({\seg_OBUF[6]_inst_i_14_n_4 ,\seg_OBUF[6]_inst_i_14_n_5 ,\seg_OBUF[6]_inst_i_14_n_6 ,\seg_OBUF[6]_inst_i_14_n_7 }),
        .S({\seg_OBUF[6]_inst_i_26_n_0 ,\seg_OBUF[6]_inst_i_27_n_0 ,\seg_OBUF[6]_inst_i_28_n_0 ,\seg_OBUF[6]_inst_i_29_n_0 }));
  LUT6 #(
    .INIT(64'hB04F5E0558A794A7)) 
    \seg_OBUF[6]_inst_i_15 
       (.I0(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I4(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_6 ),
        .O(\seg_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666666665557555)) 
    \seg_OBUF[6]_inst_i_16 
       (.I0(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I4(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_4 ),
        .O(\seg_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h3F3F9CD4C646B99D)) 
    \seg_OBUF[6]_inst_i_17 
       (.I0(\seg_OBUF[6]_inst_i_14_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I4(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_6 ),
        .O(\seg_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF01AA55AA55AA55)) 
    \seg_OBUF[6]_inst_i_18 
       (.I0(\seg_OBUF[6]_inst_i_14_n_4 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I4(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_6 ),
        .O(\seg_OBUF[6]_inst_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_19 
       (.I0(Q[3]),
        .O(\seg_OBUF[6]_inst_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0A03)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .I2(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I3(\seg_OBUF[0]_inst_i_1_0 [0]),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_20 
       (.I0(Q[2]),
        .I1(Q[7]),
        .O(\seg_OBUF[6]_inst_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_21 
       (.I0(Q[1]),
        .O(\seg_OBUF[6]_inst_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_22 
       (.I0(Q[0]),
        .O(\seg_OBUF[6]_inst_i_22_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \seg_OBUF[6]_inst_i_23 
       (.CI(1'b0),
        .CO({\seg_OBUF[6]_inst_i_23_n_0 ,\NLW_seg_OBUF[6]_inst_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\seg_OBUF[6]_inst_i_30_n_0 ,1'b0,1'b0,\seg_OBUF[6]_inst_i_31_n_0 }),
        .O(\NLW_seg_OBUF[6]_inst_i_23_O_UNCONNECTED [3:0]),
        .S({\seg_OBUF[6]_inst_i_32_n_0 ,\seg_OBUF[6]_inst_i_33_n_0 ,\seg_OBUF[6]_inst_i_34_n_0 ,\seg_OBUF[6]_inst_i_35_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_24 
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(\seg_OBUF[6]_inst_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \seg_OBUF[6]_inst_i_25 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\seg_OBUF[6]_inst_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_26 
       (.I0(Q[7]),
        .O(\seg_OBUF[6]_inst_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_27 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\seg_OBUF[6]_inst_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \seg_OBUF[6]_inst_i_28 
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(\seg_OBUF[6]_inst_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_29 
       (.I0(Q[4]),
        .O(\seg_OBUF[6]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFFFFC03)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I4(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I5(\seg_OBUF[0]_inst_i_1_0 [0]),
        .O(\seg_OBUF[6]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \seg_OBUF[6]_inst_i_30 
       (.I0(Q[7]),
        .I1(Q[5]),
        .O(\seg_OBUF[6]_inst_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_31 
       (.I0(Q[3]),
        .O(\seg_OBUF[6]_inst_i_31_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \seg_OBUF[6]_inst_i_32 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(\seg_OBUF[6]_inst_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_OBUF[6]_inst_i_33 
       (.I0(Q[7]),
        .I1(Q[5]),
        .O(\seg_OBUF[6]_inst_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg_OBUF[6]_inst_i_34 
       (.I0(Q[4]),
        .O(\seg_OBUF[6]_inst_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \seg_OBUF[6]_inst_i_35 
       (.I0(Q[2]),
        .I1(Q[7]),
        .I2(Q[3]),
        .O(\seg_OBUF[6]_inst_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h009900F00099FFF0)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_12_n_3 ),
        .I1(Q[7]),
        .I2(\seg_OBUF[6]_inst_i_10_n_7 ),
        .I3(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I4(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I5(\seg_OBUF[6]_inst_i_9_n_0 ),
        .O(\seg_OBUF[6]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000EFFE)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[0]_inst_i_1_0 [1]),
        .I1(\seg_OBUF[0]_inst_i_1_0 [0]),
        .I2(\seg_OBUF[6]_inst_i_10_n_6 ),
        .I3(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_13_n_0 ),
        .O(\seg_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4040400AA8A8A8A8)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_4 ),
        .I2(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I4(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_6 ),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h59BE7DE73CBE7D3C)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(\seg_OBUF[6]_inst_i_15_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_17_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I5(\seg_OBUF[6]_inst_i_10_n_6 ),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5113322A22226644)) 
    \seg_OBUF[6]_inst_i_8 
       (.I0(\seg_OBUF[6]_inst_i_14_n_6 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_5 ),
        .I2(\seg_OBUF[6]_inst_i_10_n_5 ),
        .I3(\seg_OBUF[6]_inst_i_10_n_4 ),
        .I4(\seg_OBUF[6]_inst_i_14_n_7 ),
        .I5(\seg_OBUF[6]_inst_i_14_n_4 ),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDF92DF9B2604B604)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_16_n_0 ),
        .I2(\seg_OBUF[6]_inst_i_18_n_0 ),
        .I3(\seg_OBUF[6]_inst_i_17_n_0 ),
        .I4(\seg_OBUF[6]_inst_i_10_n_6 ),
        .I5(\seg_OBUF[6]_inst_i_15_n_0 ),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
endmodule

module lipsi_fsm
   (ADDRBWRADDR,
    \FSM_sequential_current_state_reg[0]_0 ,
    Q,
    wr_en,
    mem_reg,
    \FSM_sequential_current_state_reg[0]_1 ,
    ADDRARDADDR,
    \FSM_sequential_current_state_reg[2]_0 ,
    D,
    \opp_reg[2]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    E,
    \FSM_sequential_current_state_reg[2]_3 ,
    reset1_IBUF,
    mem_reg_0,
    \pc_out_reg[6] ,
    \pc_out_reg[6]_0 ,
    \pc_out_reg[6]_1 ,
    \acc_out_reg[7] ,
    DOBDO,
    \acc_out_reg[0] ,
    \acc_out_reg[0]_0 ,
    \acc_out_reg[0]_1 ,
    \acc_out_reg[1] ,
    \acc_out_reg[1]_0 ,
    \acc_out_reg[2] ,
    \acc_out_reg[2]_0 ,
    \acc_out_reg[3] ,
    \acc_out_reg[3]_0 ,
    \acc_out_reg[4] ,
    \acc_out_reg[4]_0 ,
    \acc_out_reg[5] ,
    \acc_out_reg[5]_0 ,
    \acc_out_reg[6] ,
    \acc_out_reg[6]_0 ,
    \acc_out_reg[7]_0 ,
    \acc_out_reg[7]_1 ,
    \acc_out_reg[7]_2 ,
    \opp_reg[2]_1 ,
    \opp_reg[0]_0 ,
    \opp_reg[1]_0 ,
    mem_reg_1,
    \FSM_sequential_current_state_reg[2]_4 ,
    CLK);
  output [1:0]ADDRBWRADDR;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output [2:0]Q;
  output wr_en;
  output mem_reg;
  output \FSM_sequential_current_state_reg[0]_1 ;
  output [0:0]ADDRARDADDR;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output [7:0]D;
  output [2:0]\opp_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[2]_1 ;
  output \FSM_sequential_current_state_reg[2]_2 ;
  output \FSM_sequential_current_state_reg[0]_2 ;
  output [0:0]E;
  output [0:0]\FSM_sequential_current_state_reg[2]_3 ;
  input reset1_IBUF;
  input mem_reg_0;
  input [0:0]\pc_out_reg[6] ;
  input \pc_out_reg[6]_0 ;
  input \pc_out_reg[6]_1 ;
  input [7:0]\acc_out_reg[7] ;
  input [7:0]DOBDO;
  input \acc_out_reg[0] ;
  input \acc_out_reg[0]_0 ;
  input \acc_out_reg[0]_1 ;
  input \acc_out_reg[1] ;
  input \acc_out_reg[1]_0 ;
  input \acc_out_reg[2] ;
  input \acc_out_reg[2]_0 ;
  input \acc_out_reg[3] ;
  input \acc_out_reg[3]_0 ;
  input \acc_out_reg[4] ;
  input \acc_out_reg[4]_0 ;
  input \acc_out_reg[5] ;
  input \acc_out_reg[5]_0 ;
  input \acc_out_reg[6] ;
  input \acc_out_reg[6]_0 ;
  input \acc_out_reg[7]_0 ;
  input \acc_out_reg[7]_1 ;
  input \acc_out_reg[7]_2 ;
  input \opp_reg[2]_1 ;
  input \opp_reg[0]_0 ;
  input \opp_reg[1]_0 ;
  input mem_reg_1;
  input [2:0]\FSM_sequential_current_state_reg[2]_4 ;
  input CLK;

  wire [0:0]ADDRARDADDR;
  wire [1:0]ADDRBWRADDR;
  wire CLK;
  wire [7:0]D;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire [0:0]\FSM_sequential_current_state_reg[2]_3 ;
  wire [2:0]\FSM_sequential_current_state_reg[2]_4 ;
  wire [2:0]Q;
  wire \acc_out[0]_i_3_n_0 ;
  wire \acc_out[1]_i_3_n_0 ;
  wire \acc_out[2]_i_3_n_0 ;
  wire \acc_out[3]_i_3_n_0 ;
  wire \acc_out[4]_i_3_n_0 ;
  wire \acc_out[5]_i_3_n_0 ;
  wire \acc_out[6]_i_3_n_0 ;
  wire \acc_out[7]_i_4_n_0 ;
  wire \acc_out[7]_i_7_n_0 ;
  wire \acc_out_reg[0] ;
  wire \acc_out_reg[0]_0 ;
  wire \acc_out_reg[0]_1 ;
  wire \acc_out_reg[1] ;
  wire \acc_out_reg[1]_0 ;
  wire \acc_out_reg[2] ;
  wire \acc_out_reg[2]_0 ;
  wire \acc_out_reg[3] ;
  wire \acc_out_reg[3]_0 ;
  wire \acc_out_reg[4] ;
  wire \acc_out_reg[4]_0 ;
  wire \acc_out_reg[5] ;
  wire \acc_out_reg[5]_0 ;
  wire \acc_out_reg[6] ;
  wire \acc_out_reg[6]_0 ;
  wire [7:0]\acc_out_reg[7] ;
  wire \acc_out_reg[7]_0 ;
  wire \acc_out_reg[7]_1 ;
  wire \acc_out_reg[7]_2 ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_i_23_n_0;
  wire mem_reg_i_31_n_0;
  wire mem_reg_i_41_n_0;
  wire [2:0]op;
  wire \opp_reg[0]_0 ;
  wire \opp_reg[1]_0 ;
  wire [2:0]\opp_reg[2]_0 ;
  wire \opp_reg[2]_1 ;
  wire [0:0]\pc_out_reg[6] ;
  wire \pc_out_reg[6]_0 ;
  wire \pc_out_reg[6]_1 ;
  wire reset1_IBUF;
  wire wr_en;

  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(DOBDO[6]),
        .I4(DOBDO[4]),
        .I5(DOBDO[7]),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  (* FSM_ENCODED_STATES = "IO:111,STORE:011,LOAD:001,INSTRUCTION:000,ALU:010,BRANCHZ:110,BRANCHN:101,BRANCH:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_current_state_reg[2]_4 [0]),
        .Q(Q[0]),
        .R(reset1_IBUF));
  (* FSM_ENCODED_STATES = "IO:111,STORE:011,LOAD:001,INSTRUCTION:000,ALU:010,BRANCHZ:110,BRANCHN:101,BRANCH:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_current_state_reg[2]_4 [1]),
        .Q(Q[1]),
        .R(reset1_IBUF));
  (* FSM_ENCODED_STATES = "IO:111,STORE:011,LOAD:001,INSTRUCTION:000,ALU:010,BRANCHZ:110,BRANCHN:101,BRANCH:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_current_state_reg[2]_4 [2]),
        .Q(Q[2]),
        .R(reset1_IBUF));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[0]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[0] ),
        .I2(\acc_out[0]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[0]_1 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[0]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [0]),
        .I4(DOBDO[0]),
        .O(\acc_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[1]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[1] ),
        .I2(\acc_out[1]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[1]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[1]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [1]),
        .I4(DOBDO[1]),
        .O(\acc_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[2]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[2] ),
        .I2(\acc_out[2]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[2]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[2]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [2]),
        .I4(DOBDO[2]),
        .O(\acc_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[3]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[3] ),
        .I2(\acc_out[3]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[3]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[3]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [3]),
        .I4(DOBDO[3]),
        .O(\acc_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[4]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[4] ),
        .I2(\acc_out[4]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[4]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[4]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [4]),
        .I4(DOBDO[4]),
        .O(\acc_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[5]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[5] ),
        .I2(\acc_out[5]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[5]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[5]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [5]),
        .I4(DOBDO[5]),
        .O(\acc_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[6]_i_1 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[6] ),
        .I2(\acc_out[6]_i_3_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[6]_0 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[6]_i_3 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [6]),
        .I4(DOBDO[6]),
        .O(\acc_out[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \acc_out[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \acc_out[7]_i_2 
       (.I0(\opp_reg[2]_0 [2]),
        .I1(\acc_out_reg[7]_0 ),
        .I2(\acc_out[7]_i_4_n_0 ),
        .I3(\acc_out_reg[0]_0 ),
        .I4(\acc_out_reg[7]_1 ),
        .I5(\acc_out[7]_i_7_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hD0E06000)) 
    \acc_out[7]_i_4 
       (.I0(\opp_reg[2]_0 [1]),
        .I1(\opp_reg[2]_0 [0]),
        .I2(\opp_reg[2]_0 [2]),
        .I3(\acc_out_reg[7] [7]),
        .I4(DOBDO[7]),
        .O(\acc_out[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008002)) 
    \acc_out[7]_i_7 
       (.I0(\acc_out_reg[7]_2 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(reset1_IBUF),
        .O(\acc_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA000000000020)) 
    mem_reg_i_1
       (.I0(mem_reg_i_23_n_0),
        .I1(DOBDO[5]),
        .I2(DOBDO[7]),
        .I3(DOBDO[6]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(wr_en));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    mem_reg_i_2
       (.I0(DOBDO[7]),
        .I1(\FSM_sequential_current_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(DOBDO[6]),
        .O(ADDRARDADDR));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_i_23
       (.I0(reset1_IBUF),
        .I1(Q[2]),
        .O(mem_reg_i_23_n_0));
  LUT6 #(
    .INIT(64'h8080808282828282)) 
    mem_reg_i_24
       (.I0(mem_reg_i_23_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(DOBDO[6]),
        .I4(DOBDO[5]),
        .I5(DOBDO[7]),
        .O(\FSM_sequential_current_state_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h01)) 
    mem_reg_i_25
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\FSM_sequential_current_state_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h0151)) 
    mem_reg_i_26
       (.I0(reset1_IBUF),
        .I1(mem_reg_i_41_n_0),
        .I2(mem_reg_1),
        .I3(Q[0]),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    mem_reg_i_28
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(DOBDO[6]),
        .O(\FSM_sequential_current_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    mem_reg_i_31
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(DOBDO[7]),
        .I4(DOBDO[6]),
        .I5(reset1_IBUF),
        .O(mem_reg_i_31_n_0));
  LUT5 #(
    .INIT(32'hAA2A2A2A)) 
    mem_reg_i_40
       (.I0(\FSM_sequential_current_state_reg[0]_1 ),
        .I1(DOBDO[4]),
        .I2(DOBDO[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(mem_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFABA)) 
    mem_reg_i_41
       (.I0(Q[1]),
        .I1(DOBDO[5]),
        .I2(DOBDO[7]),
        .I3(DOBDO[6]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(mem_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'h0000000020002222)) 
    mem_reg_i_6
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(reset1_IBUF),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(mem_reg_0),
        .O(ADDRBWRADDR[1]));
  LUT6 #(
    .INIT(64'hAA00AA003CFF3C00)) 
    mem_reg_i_8
       (.I0(mem_reg_i_31_n_0),
        .I1(\pc_out_reg[6] ),
        .I2(\pc_out_reg[6]_0 ),
        .I3(\pc_out_reg[6]_1 ),
        .I4(\acc_out_reg[7] [6]),
        .I5(\FSM_sequential_current_state_reg[0]_0 ),
        .O(ADDRBWRADDR[0]));
  LUT5 #(
    .INIT(32'h0CCCEFEA)) 
    \opp[0]_i_1 
       (.I0(\opp_reg[0]_0 ),
        .I1(DOBDO[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(op[0]));
  LUT5 #(
    .INIT(32'h0CCCEFEA)) 
    \opp[1]_i_1 
       (.I0(\opp_reg[1]_0 ),
        .I1(DOBDO[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(op[1]));
  LUT5 #(
    .INIT(32'h0CCC5D55)) 
    \opp[2]_i_1 
       (.I0(\opp_reg[2]_1 ),
        .I1(DOBDO[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(op[2]));
  FDRE #(
    .INIT(1'b0)) 
    \opp_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(op[0]),
        .Q(\opp_reg[2]_0 [0]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opp_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(op[1]),
        .Q(\opp_reg[2]_0 [1]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \opp_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(op[2]),
        .Q(\opp_reg[2]_0 [2]),
        .R(reset1_IBUF));
  LUT5 #(
    .INIT(32'h6666EEFE)) 
    \pc_out[7]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(DOBDO[7]),
        .I3(DOBDO[5]),
        .I4(Q[0]),
        .O(\FSM_sequential_current_state_reg[2]_3 ));
endmodule

module memory_block
   (DOBDO,
    D,
    mem_reg_0,
    mem_reg_1,
    mem_reg_2,
    p_0_out,
    mem_reg_3,
    \FSM_sequential_current_state_reg[1] ,
    mem_reg_4,
    mem_reg_5,
    \FSM_sequential_current_state_reg[2] ,
    S,
    mem_reg_6,
    mem_reg_7,
    mem_reg_8,
    CLK,
    wr_en,
    ADDRARDADDR,
    ADDRBWRADDR,
    DIADI,
    Q,
    mem_reg_9,
    mem_reg_10,
    mem_reg_11,
    mem_reg_12,
    mem_reg_13,
    mem_reg_14,
    mem_reg_15,
    reset1_IBUF,
    mem_reg_16,
    mem_reg_17,
    mem_reg_18,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[0]_0 );
  output [7:0]DOBDO;
  output [4:0]D;
  output [2:0]mem_reg_0;
  output mem_reg_1;
  output mem_reg_2;
  output [0:0]p_0_out;
  output mem_reg_3;
  output \FSM_sequential_current_state_reg[1] ;
  output mem_reg_4;
  output mem_reg_5;
  output \FSM_sequential_current_state_reg[2] ;
  output [3:0]S;
  output [3:0]mem_reg_6;
  output [2:0]mem_reg_7;
  output [3:0]mem_reg_8;
  input CLK;
  input wr_en;
  input [0:0]ADDRARDADDR;
  input [3:0]ADDRBWRADDR;
  input [7:0]DIADI;
  input [2:0]Q;
  input [7:0]mem_reg_9;
  input mem_reg_10;
  input [2:0]mem_reg_11;
  input mem_reg_12;
  input mem_reg_13;
  input mem_reg_14;
  input mem_reg_15;
  input reset1_IBUF;
  input mem_reg_16;
  input mem_reg_17;
  input mem_reg_18;
  input \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[0]_0 ;

  wire [0:0]ADDRARDADDR;
  wire [3:0]ADDRBWRADDR;
  wire CLK;
  wire [4:0]D;
  wire [7:0]DIADI;
  wire [7:0]DOBDO;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire [2:0]Q;
  wire [3:0]S;
  wire [2:0]mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_10;
  wire [2:0]mem_reg_11;
  wire mem_reg_12;
  wire mem_reg_13;
  wire mem_reg_14;
  wire mem_reg_15;
  wire mem_reg_16;
  wire mem_reg_17;
  wire mem_reg_18;
  wire mem_reg_2;
  wire mem_reg_3;
  wire mem_reg_4;
  wire mem_reg_5;
  wire [3:0]mem_reg_6;
  wire [2:0]mem_reg_7;
  wire [3:0]mem_reg_8;
  wire [7:0]mem_reg_9;
  wire mem_reg_i_33_n_0;
  wire mem_reg_i_35_n_0;
  wire [6:4]out;
  wire [0:0]p_0_out;
  wire reset1_IBUF;
  wire wr_en;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBABABABABBBABABA)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0] ),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(DOBDO[5]),
        .I3(DOBDO[6]),
        .I4(DOBDO[1]),
        .I5(DOBDO[0]),
        .O(mem_reg_0[0]));
  LUT6 #(
    .INIT(64'hAA00000000EF00EF)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(DOBDO[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(mem_reg_0[1]));
  LUT5 #(
    .INIT(32'hEECECECE)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(DOBDO[6]),
        .I1(Q[0]),
        .I2(DOBDO[4]),
        .I3(DOBDO[0]),
        .I4(DOBDO[1]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(DOBDO[5]),
        .I1(DOBDO[4]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000000000080)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(DOBDO[4]),
        .I1(DOBDO[7]),
        .I2(DOBDO[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(mem_reg_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_10 
       (.I0(DOBDO[3]),
        .I1(mem_reg_9[3]),
        .O(mem_reg_7[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_11 
       (.I0(DOBDO[2]),
        .I1(mem_reg_9[2]),
        .O(mem_reg_7[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_12 
       (.I0(DOBDO[1]),
        .I1(mem_reg_9[1]),
        .O(mem_reg_7[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_18 
       (.I0(DOBDO[3]),
        .I1(mem_reg_9[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_19 
       (.I0(DOBDO[2]),
        .I1(mem_reg_9[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_20 
       (.I0(DOBDO[1]),
        .I1(mem_reg_9[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[3]_i_21 
       (.I0(DOBDO[0]),
        .I1(mem_reg_9[0]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \acc_out[3]_i_9 
       (.I0(DOBDO[0]),
        .O(p_0_out));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \acc_out[7]_i_12 
       (.I0(Q[2]),
        .I1(DOBDO[5]),
        .I2(DOBDO[4]),
        .I3(DOBDO[6]),
        .I4(DOBDO[7]),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_13 
       (.I0(DOBDO[7]),
        .I1(mem_reg_9[7]),
        .O(mem_reg_6[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_14 
       (.I0(DOBDO[6]),
        .I1(mem_reg_9[6]),
        .O(mem_reg_6[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_15 
       (.I0(DOBDO[5]),
        .I1(mem_reg_9[5]),
        .O(mem_reg_6[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_16 
       (.I0(DOBDO[4]),
        .I1(mem_reg_9[4]),
        .O(mem_reg_6[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_21 
       (.I0(DOBDO[7]),
        .I1(mem_reg_9[7]),
        .O(mem_reg_8[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_22 
       (.I0(DOBDO[6]),
        .I1(mem_reg_9[6]),
        .O(mem_reg_8[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_23 
       (.I0(DOBDO[5]),
        .I1(mem_reg_9[5]),
        .O(mem_reg_8[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \acc_out[7]_i_24 
       (.I0(DOBDO[4]),
        .I1(mem_reg_9[4]),
        .O(mem_reg_8[0]));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \acc_out[7]_i_5 
       (.I0(DOBDO[5]),
        .I1(DOBDO[6]),
        .I2(DOBDO[7]),
        .I3(reset1_IBUF),
        .I4(DOBDO[4]),
        .I5(mem_reg_17),
        .O(mem_reg_3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "top/m1/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0072008500030075000000C700830074008200710084000100C70081000300C7),
    .INIT_01(256'h0074000700D3000100C10081000100C1007100840075000C00D30082000100C1),
    .INIT_02(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({1'b0,1'b1,ADDRARDADDR,out,DOBDO[3:0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,ADDRBWRADDR[3],D[4],ADDRBWRADDR[2],D[3:2],ADDRBWRADDR[1:0],D[1:0],1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],DOBDO}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(wr_en),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h302A3F2A3F2A302A)) 
    mem_reg_i_10
       (.I0(mem_reg_9[4]),
        .I1(mem_reg_i_35_n_0),
        .I2(mem_reg_10),
        .I3(mem_reg_1),
        .I4(mem_reg_11[1]),
        .I5(mem_reg_12),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    mem_reg_i_13
       (.I0(DOBDO[1]),
        .I1(reset1_IBUF),
        .I2(mem_reg_10),
        .I3(mem_reg_16),
        .I4(mem_reg_1),
        .I5(mem_reg_9[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0C55FFFF0C550000)) 
    mem_reg_i_14
       (.I0(mem_reg_11[0]),
        .I1(DOBDO[0]),
        .I2(reset1_IBUF),
        .I3(mem_reg_10),
        .I4(mem_reg_1),
        .I5(mem_reg_9[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    mem_reg_i_27
       (.I0(Q[1]),
        .I1(DOBDO[4]),
        .I2(DOBDO[6]),
        .I3(DOBDO[7]),
        .I4(Q[0]),
        .I5(DOBDO[5]),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT5 #(
    .INIT(32'h45FF0000)) 
    mem_reg_i_3
       (.I0(reset1_IBUF),
        .I1(DOBDO[7]),
        .I2(mem_reg_17),
        .I3(mem_reg_18),
        .I4(DOBDO[6]),
        .O(out[6]));
  LUT6 #(
    .INIT(64'h5555551555555555)) 
    mem_reg_i_30
       (.I0(reset1_IBUF),
        .I1(DOBDO[7]),
        .I2(DOBDO[4]),
        .I3(DOBDO[5]),
        .I4(DOBDO[6]),
        .I5(mem_reg_17),
        .O(mem_reg_1));
  LUT5 #(
    .INIT(32'h0000D500)) 
    mem_reg_i_33
       (.I0(mem_reg_17),
        .I1(DOBDO[6]),
        .I2(DOBDO[7]),
        .I3(DOBDO[5]),
        .I4(reset1_IBUF),
        .O(mem_reg_i_33_n_0));
  LUT6 #(
    .INIT(64'h5555555755575557)) 
    mem_reg_i_35
       (.I0(DOBDO[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(DOBDO[6]),
        .I5(DOBDO[7]),
        .O(mem_reg_i_35_n_0));
  LUT6 #(
    .INIT(64'h4055FFFF00000000)) 
    mem_reg_i_4
       (.I0(reset1_IBUF),
        .I1(DOBDO[7]),
        .I2(DOBDO[6]),
        .I3(mem_reg_17),
        .I4(mem_reg_18),
        .I5(DOBDO[5]),
        .O(out[5]));
  LUT5 #(
    .INIT(32'h8F00FF00)) 
    mem_reg_i_5
       (.I0(DOBDO[7]),
        .I1(DOBDO[6]),
        .I2(mem_reg_17),
        .I3(DOBDO[4]),
        .I4(mem_reg_18),
        .O(out[4]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    mem_reg_i_7
       (.I0(DOBDO[7]),
        .I1(mem_reg_13),
        .I2(mem_reg_10),
        .I3(mem_reg_14),
        .I4(mem_reg_1),
        .I5(mem_reg_9[7]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAA00AA003CFF3C00)) 
    mem_reg_i_9
       (.I0(mem_reg_i_33_n_0),
        .I1(mem_reg_11[2]),
        .I2(mem_reg_15),
        .I3(mem_reg_1),
        .I4(mem_reg_9[5]),
        .I5(mem_reg_10),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000000003B88BB88)) 
    \opp[0]_i_2 
       (.I0(DOBDO[0]),
        .I1(DOBDO[7]),
        .I2(DOBDO[6]),
        .I3(DOBDO[4]),
        .I4(DOBDO[5]),
        .I5(Q[2]),
        .O(mem_reg_4));
  LUT6 #(
    .INIT(64'h000000003BBB8888)) 
    \opp[1]_i_2 
       (.I0(DOBDO[1]),
        .I1(DOBDO[7]),
        .I2(DOBDO[6]),
        .I3(DOBDO[4]),
        .I4(DOBDO[5]),
        .I5(Q[2]),
        .O(mem_reg_5));
  LUT6 #(
    .INIT(64'h0000FFFF008300F3)) 
    \opp[2]_i_2 
       (.I0(DOBDO[5]),
        .I1(DOBDO[6]),
        .I2(DOBDO[7]),
        .I3(Q[0]),
        .I4(DOBDO[2]),
        .I5(Q[2]),
        .O(mem_reg_2));
endmodule

module pc_register
   (D,
    Q,
    \pc_out_reg[7]_0 ,
    \pc_out_reg[5]_0 ,
    \pc_out_reg[4]_0 ,
    \pc_out_reg[3]_0 ,
    \pc_out_reg[0]_0 ,
    \pc_out_reg[3]_1 ,
    \pc_out_reg[3]_2 ,
    \pc_out_reg[3]_3 ,
    DOBDO,
    reset1_IBUF,
    E,
    \pc_out_reg[7]_1 ,
    CLK);
  output [1:0]D;
  output [7:0]Q;
  output \pc_out_reg[7]_0 ;
  output \pc_out_reg[5]_0 ;
  output \pc_out_reg[4]_0 ;
  output \pc_out_reg[3]_0 ;
  output \pc_out_reg[0]_0 ;
  input [1:0]\pc_out_reg[3]_1 ;
  input \pc_out_reg[3]_2 ;
  input \pc_out_reg[3]_3 ;
  input [1:0]DOBDO;
  input reset1_IBUF;
  input [0:0]E;
  input [5:0]\pc_out_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [1:0]DOBDO;
  wire [0:0]E;
  wire [7:0]Q;
  wire mem_reg_i_37_n_0;
  wire mem_reg_i_38_n_0;
  wire \pc_out_reg[0]_0 ;
  wire \pc_out_reg[3]_0 ;
  wire [1:0]\pc_out_reg[3]_1 ;
  wire \pc_out_reg[3]_2 ;
  wire \pc_out_reg[3]_3 ;
  wire \pc_out_reg[4]_0 ;
  wire \pc_out_reg[5]_0 ;
  wire \pc_out_reg[7]_0 ;
  wire [5:0]\pc_out_reg[7]_1 ;
  wire reset1_IBUF;

  LUT6 #(
    .INIT(64'hFFF066F0000066F0)) 
    mem_reg_i_11
       (.I0(Q[3]),
        .I1(mem_reg_i_37_n_0),
        .I2(\pc_out_reg[3]_1 [1]),
        .I3(\pc_out_reg[3]_2 ),
        .I4(\pc_out_reg[3]_3 ),
        .I5(DOBDO[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFF066F0000066F0)) 
    mem_reg_i_12
       (.I0(Q[2]),
        .I1(mem_reg_i_38_n_0),
        .I2(\pc_out_reg[3]_1 [0]),
        .I3(\pc_out_reg[3]_2 ),
        .I4(\pc_out_reg[3]_3 ),
        .I5(DOBDO[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h6A)) 
    mem_reg_i_29
       (.I0(Q[7]),
        .I1(\pc_out_reg[5]_0 ),
        .I2(Q[6]),
        .O(\pc_out_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_i_32
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\pc_out_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_i_34
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\pc_out_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    mem_reg_i_36
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\pc_out_reg[3]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_37
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(mem_reg_i_37_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_i_38
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(mem_reg_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_i_39
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\pc_out_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [0]),
        .Q(Q[0]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [1]),
        .Q(Q[1]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[2]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[3]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [2]),
        .Q(Q[4]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [3]),
        .Q(Q[5]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [4]),
        .Q(Q[6]),
        .R(reset1_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \pc_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\pc_out_reg[7]_1 [5]),
        .Q(Q[7]),
        .R(reset1_IBUF));
endmodule

module seven_segment_display
   (an_OBUF,
    Q,
    CLK);
  output [3:0]an_OBUF;
  output [1:0]Q;
  input CLK;

  wire CLK;
  wire [1:0]Q;
  wire [3:0]an_OBUF;
  wire [1:0]p_0_in__0;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire [2:0]\NLW_refresh_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_refresh_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_refresh_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_refresh_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(an_OBUF[3]));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_select_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\NLW_refresh_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO(\NLW_refresh_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({p_0_in__0,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(p_0_in__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(p_0_in__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\NLW_refresh_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\NLW_refresh_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "b94181e1" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top
   (io_in,
    reset1,
    clk,
    io_out,
    seg,
    an,
    dp);
  input [7:0]io_in;
  input reset1;
  input clk;
  output [7:0]io_out;
  output [6:0]seg;
  output [3:0]an;
  output dp;

  wire \a/carry_out ;
  wire acc_en1;
  wire [7:0]acc_in;
  wire acc_n_24;
  wire acc_n_25;
  wire acc_n_26;
  wire acc_n_27;
  wire acc_n_28;
  wire acc_n_29;
  wire acc_n_30;
  wire acc_n_31;
  wire acc_n_32;
  wire acc_n_33;
  wire acc_n_34;
  wire acc_n_35;
  wire acc_n_36;
  wire acc_n_37;
  wire acc_n_38;
  wire acc_n_39;
  wire acc_n_40;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire c;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state;
  wire [1:0]digit_select;
  wire dp;
  wire [7:0]io_out;
  wire [7:0]io_out_OBUF;
  wire l_n_10;
  wire l_n_2;
  wire l_n_22;
  wire l_n_23;
  wire l_n_24;
  wire l_n_7;
  wire l_n_8;
  wire m1_n_16;
  wire m1_n_17;
  wire m1_n_19;
  wire m1_n_20;
  wire m1_n_21;
  wire m1_n_22;
  wire m1_n_23;
  wire m1_n_24;
  wire m1_n_25;
  wire m1_n_26;
  wire m1_n_27;
  wire m1_n_28;
  wire m1_n_29;
  wire m1_n_30;
  wire m1_n_31;
  wire m1_n_32;
  wire m1_n_33;
  wire m1_n_34;
  wire m1_n_35;
  wire m1_n_36;
  wire m1_n_37;
  wire m1_n_38;
  wire [2:0]next_state;
  wire [2:0]opp;
  wire [7:7]out;
  wire [7:0]out2;
  wire [7:0]p_0_in;
  wire [0:0]p_0_out;
  wire p_n_10;
  wire p_n_11;
  wire p_n_12;
  wire p_n_13;
  wire p_n_14;
  wire [7:0]pc_out;
  wire pcen2;
  wire [8:0]read_addr1;
  wire [7:0]read_data1;
  wire reset1;
  wire reset1_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire wr_en;

  accumulator acc
       (.CLK(clk_IBUF_BUFG),
        .D(acc_in),
        .DIADI(out2),
        .DOBDO(read_data1),
        .E(acc_en1),
        .\FSM_sequential_current_state_reg[2] (acc_n_40),
        .Q(p_0_in),
        .S({m1_n_24,m1_n_25,m1_n_26,m1_n_27}),
        .\acc_out[0]_i_2_0 ({m1_n_32,m1_n_33,m1_n_34}),
        .\acc_out[4]_i_2_0 ({m1_n_35,m1_n_36,m1_n_37,m1_n_38}),
        .\acc_out[4]_i_2_1 ({m1_n_28,m1_n_29,m1_n_30,m1_n_31}),
        .\acc_out_reg[1]_0 (acc_n_24),
        .\acc_out_reg[2]_0 (acc_n_25),
        .\acc_out_reg[3]_0 (acc_n_26),
        .\acc_out_reg[4]_0 (acc_n_27),
        .\acc_out_reg[5]_0 (acc_n_28),
        .\acc_out_reg[6]_0 (acc_n_29),
        .\acc_out_reg[7]_0 (acc_n_30),
        .\acc_out_reg[7]_1 (acc_n_31),
        .c(c),
        .c_reg(opp),
        .carry_out(\a/carry_out ),
        .mem_reg(l_n_7),
        .mem_reg_0(pc_out),
        .mem_reg_i_26(current_state[2]),
        .\opp_reg[1] (acc_n_32),
        .\opp_reg[1]_0 (acc_n_33),
        .\opp_reg[1]_1 (acc_n_34),
        .\opp_reg[1]_2 (acc_n_35),
        .\opp_reg[1]_3 (acc_n_36),
        .\opp_reg[1]_4 (acc_n_37),
        .\opp_reg[1]_5 (acc_n_38),
        .\opp_reg[1]_6 (acc_n_39),
        .p_0_out(p_0_out),
        .reset1_IBUF(reset1_IBUF),
        .seg_OBUF(seg_OBUF),
        .\seg_OBUF[0]_inst_i_1_0 (digit_select));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  FDRE #(
    .INIT(1'b0)) 
    c_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\a/carry_out ),
        .Q(c),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  seven_segment_display disp
       (.CLK(clk_IBUF_BUFG),
        .Q(digit_select),
        .an_OBUF(an_OBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  OBUF \io_out_OBUF[0]_inst 
       (.I(io_out_OBUF[0]),
        .O(io_out[0]));
  OBUF \io_out_OBUF[1]_inst 
       (.I(io_out_OBUF[1]),
        .O(io_out[1]));
  OBUF \io_out_OBUF[2]_inst 
       (.I(io_out_OBUF[2]),
        .O(io_out[2]));
  OBUF \io_out_OBUF[3]_inst 
       (.I(io_out_OBUF[3]),
        .O(io_out[3]));
  OBUF \io_out_OBUF[4]_inst 
       (.I(io_out_OBUF[4]),
        .O(io_out[4]));
  OBUF \io_out_OBUF[5]_inst 
       (.I(io_out_OBUF[5]),
        .O(io_out[5]));
  OBUF \io_out_OBUF[6]_inst 
       (.I(io_out_OBUF[6]),
        .O(io_out[6]));
  OBUF \io_out_OBUF[7]_inst 
       (.I(io_out_OBUF[7]),
        .O(io_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(io_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(io_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(io_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(io_out_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(io_out_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(io_out_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(io_out_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \io_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(io_out_OBUF[7]),
        .R(1'b0));
  lipsi_fsm l
       (.ADDRARDADDR(out),
        .ADDRBWRADDR({read_addr1[8],read_addr1[6]}),
        .CLK(clk_IBUF_BUFG),
        .D(acc_in),
        .DOBDO(read_data1),
        .E(acc_en1),
        .\FSM_sequential_current_state_reg[0]_0 (l_n_2),
        .\FSM_sequential_current_state_reg[0]_1 (l_n_8),
        .\FSM_sequential_current_state_reg[0]_2 (l_n_24),
        .\FSM_sequential_current_state_reg[2]_0 (l_n_10),
        .\FSM_sequential_current_state_reg[2]_1 (l_n_22),
        .\FSM_sequential_current_state_reg[2]_2 (l_n_23),
        .\FSM_sequential_current_state_reg[2]_3 (pcen2),
        .\FSM_sequential_current_state_reg[2]_4 (next_state),
        .Q(current_state),
        .\acc_out_reg[0] (acc_n_39),
        .\acc_out_reg[0]_0 (m1_n_19),
        .\acc_out_reg[0]_1 (acc_n_24),
        .\acc_out_reg[1] (acc_n_38),
        .\acc_out_reg[1]_0 (acc_n_25),
        .\acc_out_reg[2] (acc_n_37),
        .\acc_out_reg[2]_0 (acc_n_26),
        .\acc_out_reg[3] (acc_n_36),
        .\acc_out_reg[3]_0 (acc_n_27),
        .\acc_out_reg[4] (acc_n_35),
        .\acc_out_reg[4]_0 (acc_n_28),
        .\acc_out_reg[5] (acc_n_34),
        .\acc_out_reg[5]_0 (acc_n_29),
        .\acc_out_reg[6] (acc_n_33),
        .\acc_out_reg[6]_0 (acc_n_30),
        .\acc_out_reg[7] (p_0_in),
        .\acc_out_reg[7]_0 (acc_n_32),
        .\acc_out_reg[7]_1 (acc_n_31),
        .\acc_out_reg[7]_2 (m1_n_23),
        .mem_reg(l_n_7),
        .mem_reg_0(m1_n_20),
        .mem_reg_1(acc_n_40),
        .\opp_reg[0]_0 (m1_n_21),
        .\opp_reg[1]_0 (m1_n_22),
        .\opp_reg[2]_0 (opp),
        .\opp_reg[2]_1 (m1_n_17),
        .\pc_out_reg[6] (pc_out[6]),
        .\pc_out_reg[6]_0 (p_n_11),
        .\pc_out_reg[6]_1 (m1_n_16),
        .reset1_IBUF(reset1_IBUF),
        .wr_en(wr_en));
  memory_block m1
       (.ADDRARDADDR(out),
        .ADDRBWRADDR({read_addr1[8],read_addr1[6],read_addr1[3:2]}),
        .CLK(clk_IBUF_BUFG),
        .D({read_addr1[7],read_addr1[5:4],read_addr1[1:0]}),
        .DIADI(out2),
        .DOBDO(read_data1),
        .\FSM_sequential_current_state_reg[0] (l_n_10),
        .\FSM_sequential_current_state_reg[0]_0 (l_n_22),
        .\FSM_sequential_current_state_reg[1] (m1_n_20),
        .\FSM_sequential_current_state_reg[2] (m1_n_23),
        .Q(current_state),
        .S({m1_n_24,m1_n_25,m1_n_26,m1_n_27}),
        .mem_reg_0(next_state),
        .mem_reg_1(m1_n_16),
        .mem_reg_10(l_n_2),
        .mem_reg_11({pc_out[5:4],pc_out[0]}),
        .mem_reg_12(p_n_13),
        .mem_reg_13(l_n_23),
        .mem_reg_14(p_n_10),
        .mem_reg_15(p_n_12),
        .mem_reg_16(p_n_14),
        .mem_reg_17(l_n_24),
        .mem_reg_18(l_n_8),
        .mem_reg_2(m1_n_17),
        .mem_reg_3(m1_n_19),
        .mem_reg_4(m1_n_21),
        .mem_reg_5(m1_n_22),
        .mem_reg_6({m1_n_28,m1_n_29,m1_n_30,m1_n_31}),
        .mem_reg_7({m1_n_32,m1_n_33,m1_n_34}),
        .mem_reg_8({m1_n_35,m1_n_36,m1_n_37,m1_n_38}),
        .mem_reg_9(p_0_in),
        .p_0_out(p_0_out),
        .reset1_IBUF(reset1_IBUF),
        .wr_en(wr_en));
  pc_register p
       (.CLK(clk_IBUF_BUFG),
        .D(read_addr1[3:2]),
        .DOBDO(read_data1[3:2]),
        .E(pcen2),
        .Q(pc_out),
        .\pc_out_reg[0]_0 (p_n_14),
        .\pc_out_reg[3]_0 (p_n_13),
        .\pc_out_reg[3]_1 (p_0_in[3:2]),
        .\pc_out_reg[3]_2 (m1_n_16),
        .\pc_out_reg[3]_3 (l_n_2),
        .\pc_out_reg[4]_0 (p_n_12),
        .\pc_out_reg[5]_0 (p_n_11),
        .\pc_out_reg[7]_0 (p_n_10),
        .\pc_out_reg[7]_1 ({read_addr1[7:4],read_addr1[1:0]}),
        .reset1_IBUF(reset1_IBUF));
  IBUF reset1_IBUF_inst
       (.I(reset1),
        .O(reset1_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
