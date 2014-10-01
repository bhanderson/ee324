////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Problem1_synthesis.v
// /___/   /\     Timestamp: Mon Sep 29 11:30:23 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Problem1.ngc Problem1_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Problem1.ngc
// Output file	: C:\Users\Bryce\Documents\GitHub\ee324\PWM\netgen\synthesis\Problem1_synthesis.v
// # of Modules	: 1
// Design Name	: Problem1
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Problem1 (
  clk, Led, sw
);
  input clk;
  output Led;
  input [7 : 0] sw;
  wire sw_4_IBUF_0;
  wire sw_3_IBUF_1;
  wire sw_1_IBUF_2;
  wire sw_0_IBUF_3;
  wire clk_BUFGP_4;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<19> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<18> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<17> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<16> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<15> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<14> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<13> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<12> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<11> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<10> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<9> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<8> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<7> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<6> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<5> ;
  wire \sw[7]_PWR_1_o_MuLt_2_OUT<4> ;
  wire Led_OBUF_21;
  wire \counter[19]_sw[7]_LessThan_4_o ;
  wire \counter[19]_GND_1_o_add_1_OUT<19> ;
  wire \counter[19]_GND_1_o_add_1_OUT<18> ;
  wire \counter[19]_GND_1_o_add_1_OUT<17> ;
  wire \counter[19]_GND_1_o_add_1_OUT<16> ;
  wire \counter[19]_GND_1_o_add_1_OUT<15> ;
  wire \counter[19]_GND_1_o_add_1_OUT<14> ;
  wire \counter[19]_GND_1_o_add_1_OUT<13> ;
  wire \counter[19]_GND_1_o_add_1_OUT<12> ;
  wire \counter[19]_GND_1_o_add_1_OUT<11> ;
  wire \counter[19]_GND_1_o_add_1_OUT<10> ;
  wire \counter[19]_GND_1_o_add_1_OUT<9> ;
  wire \counter[19]_GND_1_o_add_1_OUT<8> ;
  wire \counter[19]_GND_1_o_add_1_OUT<7> ;
  wire \counter[19]_GND_1_o_add_1_OUT<6> ;
  wire \counter[19]_GND_1_o_add_1_OUT<5> ;
  wire \counter[19]_GND_1_o_add_1_OUT<4> ;
  wire \counter[19]_GND_1_o_add_1_OUT<3> ;
  wire \counter[19]_GND_1_o_add_1_OUT<2> ;
  wire \counter[19]_GND_1_o_add_1_OUT<1> ;
  wire \counter[19]_GND_1_o_add_1_OUT<0> ;
  wire N0;
  wire N1;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_111 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_121 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_131 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_141 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_151 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_63 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_73 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_83 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_93 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_103 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_115 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_123 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_133 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_143 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_153 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_163 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_173 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_183 ;
  wire n0004_inv;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_lut<0> ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<0>_105 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_106 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_107 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_108 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_109 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_110 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_111 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_112 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_113 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_114 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_115 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_116 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_117 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_118 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_119 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_120 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_121 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_122 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_123 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_cy<10> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<4>_149 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<4>_150 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<5>_151 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<5>_152 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<6>_153 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<7>_154 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<7>_155 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<8>_156 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<8>_157 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<9>_158 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<9>_159 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<10>_160 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<10>_161 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<11>_162 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<11>_163 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<12>_164 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<12>_165 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<13>_166 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<13>_167 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<14>_168 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<14>_169 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<15>_170 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<15>_171 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<16>_172 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<4>_173 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<4>_174 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<5>_175 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<5>_176 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<6>_177 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<6>_178 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<7>_179 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<7>_180 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<8>_181 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<8>_182 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<9>_183 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<9>_184 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<10>_185 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<10>_186 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<11>_187 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<11>_188 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<12>_189 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<12>_190 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<13>_191 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<13>_192 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<14>_193 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<14>_194 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<15>_195 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<15>_196 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<16>_197 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<16>_198 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<17>_199 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<17>_200 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<18>_201 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<18>_202 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<19>_203 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi_204 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<0>_205 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<0>_206 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi1_207 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<1>_208 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<1>_209 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi2_210 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<2>_211 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<2>_212 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi3_213 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<3>_214 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<3>_215 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi4_216 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<4>_217 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<4>_218 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi5_219 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<5>_220 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<5>_221 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi6_222 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<6>_223 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<6>_224 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi7_225 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<7>_226 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<7>_227 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi8_228 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<8>_229 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<8>_230 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi9_231 ;
  wire \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<9>_232 ;
  wire n0004_inv2_233;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_rt_244 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_rt_245 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_rt_246 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_rt_247 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_rt_248 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_rt_249 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_rt_250 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_rt_251 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_rt_252 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_rt_253 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_rt_254 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_rt_255 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_rt_256 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_rt_257 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_rt_258 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_rt_259 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_rt_260 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_rt_261 ;
  wire \Mcount_counter_cy<1>_rt_262 ;
  wire \Mcount_counter_cy<2>_rt_263 ;
  wire \Mcount_counter_cy<3>_rt_264 ;
  wire \Mcount_counter_cy<4>_rt_265 ;
  wire \Mcount_counter_cy<5>_rt_266 ;
  wire \Mcount_counter_cy<6>_rt_267 ;
  wire \Mcount_counter_cy<7>_rt_268 ;
  wire \Mcount_counter_cy<8>_rt_269 ;
  wire \Mcount_counter_cy<9>_rt_270 ;
  wire \Mcount_counter_cy<10>_rt_271 ;
  wire \Mcount_counter_cy<11>_rt_272 ;
  wire \Mcount_counter_cy<12>_rt_273 ;
  wire \Mcount_counter_cy<13>_rt_274 ;
  wire \Mcount_counter_cy<14>_rt_275 ;
  wire \Mcount_counter_cy<15>_rt_276 ;
  wire \Mcount_counter_cy<16>_rt_277 ;
  wire \Mcount_counter_cy<17>_rt_278 ;
  wire \Mcount_counter_cy<18>_rt_279 ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<6> ;
  wire \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_cy<12>11 ;
  wire \Madd_counter[19]_GND_1_o_add_1_OUT_xor<19>_rt_282 ;
  wire \Mcount_counter_xor<19>_rt_283 ;
  wire counter_0_rstpot_284;
  wire counter_1_rstpot_285;
  wire counter_2_rstpot_286;
  wire counter_3_rstpot_287;
  wire counter_4_rstpot_288;
  wire counter_5_rstpot_289;
  wire counter_6_rstpot_290;
  wire counter_7_rstpot_291;
  wire counter_8_rstpot_292;
  wire counter_9_rstpot_293;
  wire counter_10_rstpot_294;
  wire counter_11_rstpot_295;
  wire counter_12_rstpot_296;
  wire counter_13_rstpot_297;
  wire counter_14_rstpot_298;
  wire counter_15_rstpot_299;
  wire counter_16_rstpot_300;
  wire counter_17_rstpot_301;
  wire counter_18_rstpot_302;
  wire counter_19_rstpot_303;
  wire N01;
  wire N11;
  wire n0004_inv3_306;
  wire [19 : 0] counter;
  wire [19 : 0] Result;
  wire [0 : 0] Mcount_counter_lut;
  wire [18 : 0] Mcount_counter_cy;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  Led_3 (
    .C(clk_BUFGP_4),
    .D(\counter[19]_sw[7]_LessThan_4_o ),
    .Q(Led_OBUF_21)
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_lut<0> ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<0>_105 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<0>  (
    .CI(N1),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_lut<0> ),
    .O(\counter[19]_GND_1_o_add_1_OUT<0> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<0>_105 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_rt_244 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_106 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<1>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<0>_105 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_rt_244 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<1> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_106 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_rt_245 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_107 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<2>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_106 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_rt_245 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<2> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_107 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_rt_246 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_108 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<3>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_107 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_rt_246 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<3> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_108 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_rt_247 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_109 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<4>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_108 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_rt_247 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<4> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_109 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_rt_248 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_110 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<5>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_109 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_rt_248 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<5> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_110 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_rt_249 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_111 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<6>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_110 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_rt_249 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<6> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_111 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_rt_250 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_112 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<7>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_111 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_rt_250 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<7> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_112 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_rt_251 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_113 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<8>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_112 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_rt_251 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<8> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_113 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_rt_252 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_114 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<9>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_113 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_rt_252 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<9> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_114 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_rt_253 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_115 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<10>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_114 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_rt_253 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<10> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_115 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_rt_254 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_116 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<11>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_115 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_rt_254 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<11> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_116 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_rt_255 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_117 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<12>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_116 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_rt_255 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<12> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_117 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_rt_256 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_118 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<13>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_117 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_rt_256 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<13> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_118 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_rt_257 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_119 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<14>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_118 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_rt_257 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<14> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_119 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_rt_258 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_120 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<15>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_119 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_rt_258 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<15> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_120 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_rt_259 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_121 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<16>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_120 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_rt_259 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<16> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_121 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_rt_260 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_122 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<17>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_121 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_rt_260 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<17> )
  );
  MUXCY   \Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_122 ),
    .DI(N1),
    .S(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_rt_261 ),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_123 )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<18>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_122 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_rt_261 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<18> )
  );
  XORCY   \Madd_counter[19]_GND_1_o_add_1_OUT_xor<19>  (
    .CI(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_123 ),
    .LI(\Madd_counter[19]_GND_1_o_add_1_OUT_xor<19>_rt_282 ),
    .O(\counter[19]_GND_1_o_add_1_OUT<19> )
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(N1),
    .LI(Mcount_counter_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(N1),
    .S(\Mcount_counter_cy<1>_rt_262 ),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(\Mcount_counter_cy<1>_rt_262 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(N1),
    .S(\Mcount_counter_cy<2>_rt_263 ),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(\Mcount_counter_cy<2>_rt_263 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(N1),
    .S(\Mcount_counter_cy<3>_rt_264 ),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(\Mcount_counter_cy<3>_rt_264 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(N1),
    .S(\Mcount_counter_cy<4>_rt_265 ),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(\Mcount_counter_cy<4>_rt_265 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(N1),
    .S(\Mcount_counter_cy<5>_rt_266 ),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(\Mcount_counter_cy<5>_rt_266 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(N1),
    .S(\Mcount_counter_cy<6>_rt_267 ),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(\Mcount_counter_cy<6>_rt_267 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_counter_cy<7>  (
    .CI(Mcount_counter_cy[6]),
    .DI(N1),
    .S(\Mcount_counter_cy<7>_rt_268 ),
    .O(Mcount_counter_cy[7])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(\Mcount_counter_cy<7>_rt_268 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_counter_cy<8>  (
    .CI(Mcount_counter_cy[7]),
    .DI(N1),
    .S(\Mcount_counter_cy<8>_rt_269 ),
    .O(Mcount_counter_cy[8])
  );
  XORCY   \Mcount_counter_xor<8>  (
    .CI(Mcount_counter_cy[7]),
    .LI(\Mcount_counter_cy<8>_rt_269 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_counter_cy<9>  (
    .CI(Mcount_counter_cy[8]),
    .DI(N1),
    .S(\Mcount_counter_cy<9>_rt_270 ),
    .O(Mcount_counter_cy[9])
  );
  XORCY   \Mcount_counter_xor<9>  (
    .CI(Mcount_counter_cy[8]),
    .LI(\Mcount_counter_cy<9>_rt_270 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_counter_cy<10>  (
    .CI(Mcount_counter_cy[9]),
    .DI(N1),
    .S(\Mcount_counter_cy<10>_rt_271 ),
    .O(Mcount_counter_cy[10])
  );
  XORCY   \Mcount_counter_xor<10>  (
    .CI(Mcount_counter_cy[9]),
    .LI(\Mcount_counter_cy<10>_rt_271 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_counter_cy<11>  (
    .CI(Mcount_counter_cy[10]),
    .DI(N1),
    .S(\Mcount_counter_cy<11>_rt_272 ),
    .O(Mcount_counter_cy[11])
  );
  XORCY   \Mcount_counter_xor<11>  (
    .CI(Mcount_counter_cy[10]),
    .LI(\Mcount_counter_cy<11>_rt_272 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_counter_cy<12>  (
    .CI(Mcount_counter_cy[11]),
    .DI(N1),
    .S(\Mcount_counter_cy<12>_rt_273 ),
    .O(Mcount_counter_cy[12])
  );
  XORCY   \Mcount_counter_xor<12>  (
    .CI(Mcount_counter_cy[11]),
    .LI(\Mcount_counter_cy<12>_rt_273 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_counter_cy<13>  (
    .CI(Mcount_counter_cy[12]),
    .DI(N1),
    .S(\Mcount_counter_cy<13>_rt_274 ),
    .O(Mcount_counter_cy[13])
  );
  XORCY   \Mcount_counter_xor<13>  (
    .CI(Mcount_counter_cy[12]),
    .LI(\Mcount_counter_cy<13>_rt_274 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_counter_cy<14>  (
    .CI(Mcount_counter_cy[13]),
    .DI(N1),
    .S(\Mcount_counter_cy<14>_rt_275 ),
    .O(Mcount_counter_cy[14])
  );
  XORCY   \Mcount_counter_xor<14>  (
    .CI(Mcount_counter_cy[13]),
    .LI(\Mcount_counter_cy<14>_rt_275 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_counter_cy<15>  (
    .CI(Mcount_counter_cy[14]),
    .DI(N1),
    .S(\Mcount_counter_cy<15>_rt_276 ),
    .O(Mcount_counter_cy[15])
  );
  XORCY   \Mcount_counter_xor<15>  (
    .CI(Mcount_counter_cy[14]),
    .LI(\Mcount_counter_cy<15>_rt_276 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_counter_cy<16>  (
    .CI(Mcount_counter_cy[15]),
    .DI(N1),
    .S(\Mcount_counter_cy<16>_rt_277 ),
    .O(Mcount_counter_cy[16])
  );
  XORCY   \Mcount_counter_xor<16>  (
    .CI(Mcount_counter_cy[15]),
    .LI(\Mcount_counter_cy<16>_rt_277 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_counter_cy<17>  (
    .CI(Mcount_counter_cy[16]),
    .DI(N1),
    .S(\Mcount_counter_cy<17>_rt_278 ),
    .O(Mcount_counter_cy[17])
  );
  XORCY   \Mcount_counter_xor<17>  (
    .CI(Mcount_counter_cy[16]),
    .LI(\Mcount_counter_cy<17>_rt_278 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_counter_cy<18>  (
    .CI(Mcount_counter_cy[17]),
    .DI(N1),
    .S(\Mcount_counter_cy<18>_rt_279 ),
    .O(Mcount_counter_cy[18])
  );
  XORCY   \Mcount_counter_xor<18>  (
    .CI(Mcount_counter_cy[17]),
    .LI(\Mcount_counter_cy<18>_rt_279 ),
    .O(Result[18])
  );
  XORCY   \Mcount_counter_xor<19>  (
    .CI(Mcount_counter_cy[18]),
    .LI(\Mcount_counter_xor<19>_rt_283 ),
    .O(Result[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<4>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<4>_149 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<4>  (
    .CI(N1),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<4>_149 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<4>_150 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<4>  (
    .CI(N1),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<4>_149 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_63 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<5>  (
    .I0(sw_3_IBUF_1),
    .I1(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<5>_151 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<5>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<4>_150 ),
    .DI(sw_3_IBUF_1),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<5>_151 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<5>_152 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<5>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<4>_150 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<5>_151 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_73 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<6>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<5>_152 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<6> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<6>_153 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<6>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<5>_152 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<6> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_83 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<7>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<7>_154 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<7>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<6>_153 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<7>_154 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<7>_155 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<7>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<6>_153 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<7>_154 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_93 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<8>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<7>_155 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<8>_156 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<8>_157 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<8>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<7>_155 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<8>_156 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_103 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<9>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<8>_157 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_111 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<9>_158 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<9>_159 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<9>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<8>_157 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<9>_158 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_115 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<10>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<9>_159 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_121 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<10>_160 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<10>_161 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<10>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<9>_159 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<10>_160 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_123 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<11>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<10>_161 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_131 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<11>_162 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<11>_163 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<11>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<10>_161 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<11>_162 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_133 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<12>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<11>_163 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_141 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<12>_164 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<12>_165 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<12>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<11>_163 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<12>_164 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_143 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<13>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<12>_165 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_151 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<13>_166 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<13>_167 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<13>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<12>_165 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<13>_166 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_153 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<14>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<13>_167 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_151 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<14>_168 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<14>_169 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<14>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<13>_167 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<14>_168 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_163 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<15>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<14>_169 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_cy<10> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<15>_170 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<15>_171 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<15>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<14>_169 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<15>_170 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_173 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<16>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<15>_171 ),
    .DI(N1),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_cy<12>11 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<16>_172 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_xor<16>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<15>_171 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_cy<12>11 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_183 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<4>  (
    .I0(sw_4_IBUF_0),
    .I1(sw_0_IBUF_3),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<4>_173 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<4>  (
    .CI(N1),
    .DI(sw_4_IBUF_0),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<4>_173 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<4>_174 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<4>  (
    .CI(N1),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<4>_173 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<5>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<5>_175 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<5>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<4>_174 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<5>_175 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<5>_176 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<5>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<4>_174 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<5>_175 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<6>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_63 ),
    .I1(sw_0_IBUF_3),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<6>_177 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<6>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<5>_176 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_63 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<6>_177 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<6>_178 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<6>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<5>_176 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<6>_177 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<7>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_73 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<7>_179 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<7>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<6>_178 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_73 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<7>_179 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<7>_180 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<7>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<6>_178 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<7>_179 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<8>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_83 ),
    .I1(sw_0_IBUF_3),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<8>_181 )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<8>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<7>_180 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_83 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<8>_181 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<8>_182 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<8>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<7>_180 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<8>_181 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<8> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<9>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<8>_182 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_93 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<9>_183 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<9>_184 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<9>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<8>_182 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<9>_183 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<9> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<10>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<9>_184 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_103 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<10>_185 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<10>_186 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<10>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<9>_184 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<10>_185 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<10> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<11>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<10>_186 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_115 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<11>_187 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<11>_188 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<11>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<10>_186 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<11>_187 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<11> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<12>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<11>_188 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_123 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<12>_189 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<12>_190 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<12>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<11>_188 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<12>_189 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<12> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<13>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<12>_190 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_133 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<13>_191 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<13>_192 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<13>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<12>_190 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<13>_191 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<13> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<14>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<13>_192 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_143 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<14>_193 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<14>_194 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<14>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<13>_192 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<14>_193 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<14> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<15>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<14>_194 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_153 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<15>_195 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<15>_196 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<15>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<14>_194 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<15>_195 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<15> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<16>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<15>_196 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_163 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<16>_197 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<16>_198 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<16>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<15>_196 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<16>_197 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<16> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<17>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<16>_198 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_173 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<17>_199 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<17>_200 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<17>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<16>_198 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<17>_199 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<17> )
  );
  MUXCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<18>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<17>_200 ),
    .DI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_183 ),
    .S(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<18>_201 ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<18>_202 )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<18>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<17>_200 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<18>_201 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<18> )
  );
  XORCY   \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_xor<19>  (
    .CI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_cy<18>_202 ),
    .LI(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<19>_203 ),
    .O(\sw[7]_PWR_1_o_MuLt_2_OUT<19> )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi  (
    .I0(sw_1_IBUF_2),
    .I1(sw_0_IBUF_3),
    .I2(\counter[19]_GND_1_o_add_1_OUT<0> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<1> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi_204 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<0>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<0> ),
    .I1(sw_0_IBUF_3),
    .I2(\counter[19]_GND_1_o_add_1_OUT<1> ),
    .I3(sw_1_IBUF_2),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<0>_205 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<0>  (
    .CI(N0),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi_204 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<0>_205 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<0>_206 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi1  (
    .I0(sw_3_IBUF_1),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<2> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<3> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi1_207 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<1>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<2> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<3> ),
    .I3(sw_3_IBUF_1),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<1>_208 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<1>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<0>_206 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi1_207 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<1>_208 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<1>_209 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi2  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<5> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<4> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<4> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<5> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi2_210 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<2>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<4> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<4> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<5> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<5> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<2>_211 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<2>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<1>_209 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi2_210 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<2>_211 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<2>_212 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi3  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<7> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<6> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<6> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<7> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi3_213 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<3>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<6> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<6> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<7> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<7> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<3>_214 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<3>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<2>_212 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi3_213 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<3>_214 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<3>_215 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi4  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<9> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<8> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<8> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<9> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi4_216 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<4>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<8> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<8> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<9> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<9> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<4>_217 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<4>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<3>_215 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi4_216 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<4>_217 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<4>_218 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi5  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<11> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<10> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<10> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<11> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi5_219 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<5>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<10> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<10> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<11> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<11> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<5>_220 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<5>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<4>_218 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi5_219 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<5>_220 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<5>_221 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi6  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<13> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<12> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<12> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<13> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi6_222 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<6>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<12> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<12> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<13> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<13> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<6>_223 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<6>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<5>_221 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi6_222 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<6>_223 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<6>_224 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi7  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<15> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<14> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<14> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<15> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi7_225 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<7>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<14> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<14> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<15> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<15> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<7>_226 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<7>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<6>_224 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi7_225 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<7>_226 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<7>_227 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi8  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<17> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<16> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<16> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<17> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi8_228 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<8>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<16> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<16> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<17> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<17> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<8>_229 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<8>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<7>_227 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi8_228 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<8>_229 ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<8>_230 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi9  (
    .I0(\sw[7]_PWR_1_o_MuLt_2_OUT<19> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<18> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<18> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<19> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi9_231 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<9>  (
    .I0(\counter[19]_GND_1_o_add_1_OUT<18> ),
    .I1(\sw[7]_PWR_1_o_MuLt_2_OUT<18> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<19> ),
    .I3(\sw[7]_PWR_1_o_MuLt_2_OUT<19> ),
    .O(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<9>_232 )
  );
  MUXCY   \Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<9>  (
    .CI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_cy<8>_230 ),
    .DI(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lutdi9_231 ),
    .S(\Mcompar_counter[19]_sw[7]_LessThan_4_o_lut<9>_232 ),
    .O(\counter[19]_sw[7]_LessThan_4_o )
  );
  LUT4 #(
    .INIT ( 16'h0222 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_1511  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_151 )
  );
  LUT4 #(
    .INIT ( 16'h4262 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_1411  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_141 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_cy<10>11  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_cy<10> )
  );
  LUT4 #(
    .INIT ( 16'hBB2A ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_1311  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_131 )
  );
  LUT4 #(
    .INIT ( 16'h8778 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_1111  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(sw_4_IBUF_0),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I3(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_111 )
  );
  LUT4 #(
    .INIT ( 16'hD4B4 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_1211  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_121 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFE00 ))
  n0004_inv2 (
    .I0(\counter[19]_GND_1_o_add_1_OUT<6> ),
    .I1(\counter[19]_GND_1_o_add_1_OUT<7> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<8> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<9> ),
    .I4(\counter[19]_GND_1_o_add_1_OUT<10> ),
    .I5(\counter[19]_GND_1_o_add_1_OUT<11> ),
    .O(n0004_inv2_233)
  );
  IBUF   sw_7_IBUF (
    .I(sw[7]),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> )
  );
  IBUF   sw_6_IBUF (
    .I(sw[6]),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> )
  );
  IBUF   sw_5_IBUF (
    .I(sw[5]),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> )
  );
  IBUF   sw_4_IBUF (
    .I(sw[4]),
    .O(sw_4_IBUF_0)
  );
  IBUF   sw_3_IBUF (
    .I(sw[3]),
    .O(sw_3_IBUF_1)
  );
  IBUF   sw_2_IBUF (
    .I(sw[2]),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> )
  );
  IBUF   sw_1_IBUF (
    .I(sw[1]),
    .O(sw_1_IBUF_2)
  );
  IBUF   sw_0_IBUF (
    .I(sw[0]),
    .O(sw_0_IBUF_3)
  );
  OBUF   Led_OBUF (
    .I(Led_OBUF_21),
    .O(Led)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<1>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<2>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<3>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<4>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<5>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<6>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_rt  (
    .I0(counter[7]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<7>_rt_250 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_rt  (
    .I0(counter[8]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<8>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_rt  (
    .I0(counter[9]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<9>_rt_252 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_rt  (
    .I0(counter[10]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<10>_rt_253 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_rt  (
    .I0(counter[11]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<11>_rt_254 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_rt  (
    .I0(counter[12]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<12>_rt_255 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_rt  (
    .I0(counter[13]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<13>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_rt  (
    .I0(counter[14]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<14>_rt_257 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_rt  (
    .I0(counter[15]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<15>_rt_258 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_rt  (
    .I0(counter[16]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<16>_rt_259 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_rt  (
    .I0(counter[17]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<17>_rt_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_rt  (
    .I0(counter[18]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_cy<18>_rt_261 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_262 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_263 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_264 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_265 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_267 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<7>_rt  (
    .I0(counter[7]),
    .O(\Mcount_counter_cy<7>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<8>_rt  (
    .I0(counter[8]),
    .O(\Mcount_counter_cy<8>_rt_269 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<9>_rt  (
    .I0(counter[9]),
    .O(\Mcount_counter_cy<9>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<10>_rt  (
    .I0(counter[10]),
    .O(\Mcount_counter_cy<10>_rt_271 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<11>_rt  (
    .I0(counter[11]),
    .O(\Mcount_counter_cy<11>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<12>_rt  (
    .I0(counter[12]),
    .O(\Mcount_counter_cy<12>_rt_273 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<13>_rt  (
    .I0(counter[13]),
    .O(\Mcount_counter_cy<13>_rt_274 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<14>_rt  (
    .I0(counter[14]),
    .O(\Mcount_counter_cy<14>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<15>_rt  (
    .I0(counter[15]),
    .O(\Mcount_counter_cy<15>_rt_276 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<16>_rt  (
    .I0(counter[16]),
    .O(\Mcount_counter_cy<16>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<17>_rt  (
    .I0(counter[17]),
    .O(\Mcount_counter_cy<17>_rt_278 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<18>_rt  (
    .I0(counter[18]),
    .O(\Mcount_counter_cy<18>_rt_279 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<6>1  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<6> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_cy<12>111  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_cy<12>11 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_counter[19]_GND_1_o_add_1_OUT_xor<19>_rt  (
    .I0(counter[19]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_xor<19>_rt_282 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_xor<19>_rt  (
    .I0(counter[19]),
    .O(\Mcount_counter_xor<19>_rt_283 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_0_rstpot (
    .I0(Result[0]),
    .I1(n0004_inv),
    .O(counter_0_rstpot_284)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_0 (
    .C(clk_BUFGP_4),
    .D(counter_0_rstpot_284),
    .Q(counter[0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_1_rstpot (
    .I0(Result[1]),
    .I1(n0004_inv),
    .O(counter_1_rstpot_285)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_1 (
    .C(clk_BUFGP_4),
    .D(counter_1_rstpot_285),
    .Q(counter[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_2_rstpot (
    .I0(Result[2]),
    .I1(n0004_inv),
    .O(counter_2_rstpot_286)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_2 (
    .C(clk_BUFGP_4),
    .D(counter_2_rstpot_286),
    .Q(counter[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_3_rstpot (
    .I0(Result[3]),
    .I1(n0004_inv),
    .O(counter_3_rstpot_287)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_3 (
    .C(clk_BUFGP_4),
    .D(counter_3_rstpot_287),
    .Q(counter[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_4_rstpot (
    .I0(Result[4]),
    .I1(n0004_inv),
    .O(counter_4_rstpot_288)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_4 (
    .C(clk_BUFGP_4),
    .D(counter_4_rstpot_288),
    .Q(counter[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_5_rstpot (
    .I0(Result[5]),
    .I1(n0004_inv),
    .O(counter_5_rstpot_289)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_5 (
    .C(clk_BUFGP_4),
    .D(counter_5_rstpot_289),
    .Q(counter[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_6_rstpot (
    .I0(Result[6]),
    .I1(n0004_inv),
    .O(counter_6_rstpot_290)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_6 (
    .C(clk_BUFGP_4),
    .D(counter_6_rstpot_290),
    .Q(counter[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_7_rstpot (
    .I0(Result[7]),
    .I1(n0004_inv),
    .O(counter_7_rstpot_291)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_7 (
    .C(clk_BUFGP_4),
    .D(counter_7_rstpot_291),
    .Q(counter[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_8_rstpot (
    .I0(Result[8]),
    .I1(n0004_inv),
    .O(counter_8_rstpot_292)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_8 (
    .C(clk_BUFGP_4),
    .D(counter_8_rstpot_292),
    .Q(counter[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_9_rstpot (
    .I0(Result[9]),
    .I1(n0004_inv),
    .O(counter_9_rstpot_293)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_9 (
    .C(clk_BUFGP_4),
    .D(counter_9_rstpot_293),
    .Q(counter[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_10_rstpot (
    .I0(Result[10]),
    .I1(n0004_inv),
    .O(counter_10_rstpot_294)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_10 (
    .C(clk_BUFGP_4),
    .D(counter_10_rstpot_294),
    .Q(counter[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_11_rstpot (
    .I0(Result[11]),
    .I1(n0004_inv3_306),
    .O(counter_11_rstpot_295)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_11 (
    .C(clk_BUFGP_4),
    .D(counter_11_rstpot_295),
    .Q(counter[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_12_rstpot (
    .I0(Result[12]),
    .I1(n0004_inv3_306),
    .O(counter_12_rstpot_296)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_12 (
    .C(clk_BUFGP_4),
    .D(counter_12_rstpot_296),
    .Q(counter[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_13_rstpot (
    .I0(Result[13]),
    .I1(n0004_inv3_306),
    .O(counter_13_rstpot_297)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_13 (
    .C(clk_BUFGP_4),
    .D(counter_13_rstpot_297),
    .Q(counter[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_14_rstpot (
    .I0(Result[14]),
    .I1(n0004_inv3_306),
    .O(counter_14_rstpot_298)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_14 (
    .C(clk_BUFGP_4),
    .D(counter_14_rstpot_298),
    .Q(counter[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_15_rstpot (
    .I0(Result[15]),
    .I1(n0004_inv3_306),
    .O(counter_15_rstpot_299)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_15 (
    .C(clk_BUFGP_4),
    .D(counter_15_rstpot_299),
    .Q(counter[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_16_rstpot (
    .I0(Result[16]),
    .I1(n0004_inv3_306),
    .O(counter_16_rstpot_300)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_16 (
    .C(clk_BUFGP_4),
    .D(counter_16_rstpot_300),
    .Q(counter[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_17_rstpot (
    .I0(Result[17]),
    .I1(n0004_inv3_306),
    .O(counter_17_rstpot_301)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_17 (
    .C(clk_BUFGP_4),
    .D(counter_17_rstpot_301),
    .Q(counter[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_18_rstpot (
    .I0(Result[18]),
    .I1(n0004_inv3_306),
    .O(counter_18_rstpot_302)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_18 (
    .C(clk_BUFGP_4),
    .D(counter_18_rstpot_302),
    .Q(counter[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  counter_19_rstpot (
    .I0(Result[19]),
    .I1(n0004_inv3_306),
    .O(counter_19_rstpot_303)
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_19 (
    .C(clk_BUFGP_4),
    .D(counter_19_rstpot_303),
    .Q(counter[19])
  );
  LUT5 #(
    .INIT ( 32'hFFE00000 ))
  n0004_inv1_SW0 (
    .I0(\counter[19]_GND_1_o_add_1_OUT<12> ),
    .I1(\counter[19]_GND_1_o_add_1_OUT<13> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<14> ),
    .I3(\counter[19]_GND_1_o_add_1_OUT<15> ),
    .I4(\counter[19]_GND_1_o_add_1_OUT<16> ),
    .O(N01)
  );
  LUT3 #(
    .INIT ( 8'hE0 ))
  n0004_inv1_SW1 (
    .I0(\counter[19]_GND_1_o_add_1_OUT<14> ),
    .I1(\counter[19]_GND_1_o_add_1_OUT<15> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<16> ),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'h8080800000800000 ))
  n0004_inv3 (
    .I0(\counter[19]_GND_1_o_add_1_OUT<17> ),
    .I1(\counter[19]_GND_1_o_add_1_OUT<19> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<18> ),
    .I3(n0004_inv2_233),
    .I4(N01),
    .I5(N11),
    .O(n0004_inv)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<8>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(sw_4_IBUF_0),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<8>_156 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<9>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_93 ),
    .I1(sw_0_IBUF_3),
    .I2(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<9>_183 )
  );
  LUT4 #(
    .INIT ( 16'h5A96 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<10>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_103 ),
    .I1(sw_0_IBUF_3),
    .I2(sw_1_IBUF_2),
    .I3(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<10>_185 )
  );
  LUT5 #(
    .INIT ( 32'h66666696 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<11>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_115 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_0_IBUF_3),
    .I3(sw_1_IBUF_2),
    .I4(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<11>_187 )
  );
  LUT6 #(
    .INIT ( 64'h5AA5A55A5AA5965A ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<12>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_123 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(sw_1_IBUF_2),
    .I5(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<12>_189 )
  );
  LUT6 #(
    .INIT ( 64'h6966669669665696 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<13>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_133 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(sw_1_IBUF_2),
    .I5(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<13>_191 )
  );
  LUT6 #(
    .INIT ( 64'h6966666666665696 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<14>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_143 ),
    .I1(sw_3_IBUF_1),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<14>_193 )
  );
  LUT6 #(
    .INIT ( 64'h66666655A6666666 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<15>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_153 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_0_IBUF_3),
    .I3(sw_1_IBUF_2),
    .I4(sw_3_IBUF_1),
    .I5(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<15>_195 )
  );
  LUT6 #(
    .INIT ( 64'h9A9696969696A6A6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<16>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_163 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(sw_1_IBUF_2),
    .I5(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<16>_197 )
  );
  LUT6 #(
    .INIT ( 64'h666666666AAAAAAA ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<19>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_cy<16>_172 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_0_IBUF_3),
    .I3(sw_1_IBUF_2),
    .I4(sw_3_IBUF_1),
    .I5(sw_4_IBUF_0),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<19>_203 )
  );
  LUT6 #(
    .INIT ( 64'hAAA6A6A6A6A6A6A6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<17>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_173 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(sw_1_IBUF_2),
    .I5(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<17>_199 )
  );
  LUT6 #(
    .INIT ( 64'hAAA6A6A6A6A6A6A6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<18>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_183 ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd_lut<16> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_0_IBUF_3),
    .I4(sw_1_IBUF_2),
    .I5(sw_3_IBUF_1),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd4_lut<18>_201 )
  );
  LUT6 #(
    .INIT ( 64'h99B3AA80557FAA80 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<15>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_3_IBUF_1),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<15>_170 )
  );
  LUT5 #(
    .INIT ( 32'hD22D2DD2 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<9>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(sw_4_IBUF_0),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I3(sw_3_IBUF_1),
    .I4(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<9>_158 )
  );
  LUT6 #(
    .INIT ( 64'hD87DD2DD27822D22 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<10>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I1(sw_1_IBUF_2),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I3(sw_3_IBUF_1),
    .I4(sw_4_IBUF_0),
    .I5(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<10>_160 )
  );
  LUT6 #(
    .INIT ( 64'hBB2A77E677E677E6 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<11>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I2(sw_4_IBUF_0),
    .I3(sw_3_IBUF_1),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<11>_162 )
  );
  LUT6 #(
    .INIT ( 64'h4D6D4262BD9D4262 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<12>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<12>_164 )
  );
  LUT6 #(
    .INIT ( 64'h0D2D0222FDDD0222 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<13>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<13>_166 )
  );
  LUT6 #(
    .INIT ( 64'h0D2D0222FDDD0222 ))
  \Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<14>  (
    .I0(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd1_lut<10> ),
    .I1(sw_3_IBUF_1),
    .I2(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<11> ),
    .I3(sw_4_IBUF_0),
    .I4(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd2_lut<10> ),
    .I5(sw_1_IBUF_2),
    .O(\Mmult_sw[7]_PWR_1_o_MuLt_2_OUT_Madd3_lut<14>_168 )
  );
  LUT6 #(
    .INIT ( 64'h8080800000800000 ))
  n0004_inv3_1 (
    .I0(\counter[19]_GND_1_o_add_1_OUT<17> ),
    .I1(\counter[19]_GND_1_o_add_1_OUT<19> ),
    .I2(\counter[19]_GND_1_o_add_1_OUT<18> ),
    .I3(n0004_inv2_233),
    .I4(N01),
    .I5(N11),
    .O(n0004_inv3_306)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_4)
  );
  INV   \Madd_counter[19]_GND_1_o_add_1_OUT_lut<0>_INV_0  (
    .I(counter[0]),
    .O(\Madd_counter[19]_GND_1_o_add_1_OUT_lut<0> )
  );
  INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

