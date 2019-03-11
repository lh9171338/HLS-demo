// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Integral7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_val_address0,
        src_val_ce0,
        src_val_q0,
        src_rows_read,
        src_cols_read,
        swin_val_address0,
        swin_val_ce0,
        swin_val_we0,
        swin_val_d0,
        swin_val_address1,
        swin_val_ce1,
        swin_val_we1,
        swin_val_d1,
        sqwin_val_address0,
        sqwin_val_ce0,
        sqwin_val_we0,
        sqwin_val_d0,
        sqwin_val_address1,
        sqwin_val_ce1,
        sqwin_val_we1,
        sqwin_val_d1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] src_val_address0;
output   src_val_ce0;
input  [7:0] src_val_q0;
input  [31:0] src_rows_read;
input  [31:0] src_cols_read;
output  [17:0] swin_val_address0;
output   swin_val_ce0;
output   swin_val_we0;
output  [31:0] swin_val_d0;
output  [17:0] swin_val_address1;
output   swin_val_ce1;
output   swin_val_we1;
output  [31:0] swin_val_d1;
output  [17:0] sqwin_val_address0;
output   sqwin_val_ce0;
output   sqwin_val_we0;
output  [31:0] sqwin_val_d0;
output  [17:0] sqwin_val_address1;
output   sqwin_val_ce1;
output   sqwin_val_we1;
output  [31:0] sqwin_val_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_val_ce0;
reg swin_val_ce0;
reg swin_val_we0;
reg swin_val_ce1;
reg swin_val_we1;
reg sqwin_val_ce0;
reg sqwin_val_we0;
reg sqwin_val_ce1;
reg sqwin_val_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [30:0] j_reg_208;
wire   [31:0] tmp_s_fu_231_p2;
reg   [31:0] tmp_s_reg_533;
wire   [31:0] tmp_104_fu_237_p2;
reg   [31:0] tmp_104_reg_538;
wire   [0:0] tmp_105_fu_247_p2;
wire    ap_CS_fsm_state2;
wire   [30:0] i_9_fu_252_p2;
reg   [30:0] i_9_reg_547;
wire   [0:0] tmp_106_fu_258_p2;
reg   [0:0] tmp_106_reg_552;
wire   [18:0] tmp_53_fu_280_p2;
reg   [18:0] tmp_53_reg_557;
wire   [18:0] tmp_55_cast_fu_296_p3;
reg   [18:0] tmp_55_cast_reg_563;
wire   [0:0] tmp_107_fu_308_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [30:0] j_2_fu_313_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_108_fu_319_p2;
reg   [0:0] tmp_108_reg_577;
reg   [0:0] tmp_108_reg_577_pp0_iter1_reg;
wire   [0:0] or_cond_fu_325_p2;
reg   [0:0] or_cond_reg_585;
reg   [0:0] or_cond_reg_585_pp0_iter1_reg;
wire   [18:0] tmp_58_fu_360_p2;
reg   [18:0] tmp_58_reg_594;
reg   [18:0] tmp_58_reg_594_pp0_iter1_reg;
reg   [9:0] sLineBuffer_addr_reg_599;
reg   [9:0] sqLineBuffer_addr_reg_605;
reg   [9:0] sqLineBuffer_addr_reg_605_pp0_iter1_reg;
reg   [7:0] src_val_load_reg_611;
wire   [31:0] swinBuffer_1_0_fu_402_p2;
reg   [31:0] swinBuffer_1_0_reg_616;
wire   [31:0] sqLineBuffer_q0;
reg   [31:0] sqwinBuffer_0_0_reg_621;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg   [9:0] sLineBuffer_address0;
reg    sLineBuffer_ce0;
reg    sLineBuffer_we0;
wire   [31:0] sLineBuffer_q0;
reg    sLineBuffer_ce1;
reg    sLineBuffer_we1;
wire   [31:0] sLineBuffer_d1;
reg   [9:0] sqLineBuffer_address0;
reg    sqLineBuffer_ce0;
reg    sqLineBuffer_we0;
reg    sqLineBuffer_ce1;
reg    sqLineBuffer_we1;
reg   [30:0] i_reg_197;
wire    ap_CS_fsm_state6;
wire  signed [63:0] tmp_57_cast_fu_345_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_110_fu_350_p1;
wire   [63:0] tmp_56_cast_fu_380_p1;
wire   [63:0] tmp_109_fu_365_p1;
wire   [63:0] tmp_58_cast_fu_446_p1;
reg   [31:0] swinBuffer_0_0_1_fu_48;
wire   [31:0] p_swinBuffer_0_0_1_fu_426_p3;
reg   [31:0] swinBuffer_1_0_1_fu_52;
wire   [31:0] p_swinBuffer_1_0_1_fu_419_p3;
reg   [31:0] sqwinBuffer_0_0_1_fu_56;
wire   [31:0] p_sqwinBuffer_0_0_1_fu_479_p3;
reg   [31:0] sqwinBuffer_1_0_1_fu_60;
wire   [31:0] sqwinBuffer_1_0_fu_455_p2;
wire   [31:0] p_sqwinBuffer_1_0_1_fu_472_p3;
wire   [31:0] i_cast_fu_243_p1;
wire   [9:0] tmp_138_fu_268_p1;
wire   [18:0] p_shl_cast_fu_272_p3;
wire   [18:0] tmp_137_fu_264_p1;
wire   [9:0] tmp_139_fu_286_p1;
wire   [9:0] tmp_140_fu_290_p2;
wire   [31:0] j_cast_fu_304_p1;
wire   [18:0] tmp_142_fu_330_p1;
wire   [18:0] tmp_143_fu_334_p2;
wire   [18:0] tmp_57_fu_340_p2;
wire   [18:0] tmp_144_fu_356_p1;
wire   [18:0] tmp_141_fu_371_p1;
wire   [18:0] tmp_56_fu_375_p2;
wire   [31:0] value_fu_386_p1;
wire   [31:0] tmp1_fu_390_p2;
wire   [31:0] tmp_111_fu_396_p2;
wire   [31:0] grp_fu_496_p3;
(* use_dsp48 = "no" *) wire   [31:0] tmp_113_fu_451_p2;
wire   [7:0] grp_fu_496_p0;
wire   [15:0] value_cast_fu_443_p1;
wire   [7:0] grp_fu_496_p1;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_434;
reg    ap_condition_139;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

Integral7_sLineBug8j #(
    .DataWidth( 32 ),
    .AddressRange( 513 ),
    .AddressWidth( 10 ))
sLineBuffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sLineBuffer_address0),
    .ce0(sLineBuffer_ce0),
    .we0(sLineBuffer_we0),
    .d0(32'd0),
    .q0(sLineBuffer_q0),
    .address1(sLineBuffer_addr_reg_599),
    .ce1(sLineBuffer_ce1),
    .we1(sLineBuffer_we1),
    .d1(sLineBuffer_d1)
);

Integral7_sLineBug8j #(
    .DataWidth( 32 ),
    .AddressRange( 513 ),
    .AddressWidth( 10 ))
sqLineBuffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sqLineBuffer_address0),
    .ce0(sqLineBuffer_ce0),
    .we0(sqLineBuffer_we0),
    .d0(32'd0),
    .q0(sqLineBuffer_q0),
    .address1(sqLineBuffer_addr_reg_605_pp0_iter1_reg),
    .ce1(sqLineBuffer_ce1),
    .we1(sqLineBuffer_we1),
    .d1(sqwinBuffer_1_0_fu_455_p2)
);

Haar_Core_mac_mulibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
Haar_Core_mac_mulibs_U47(
    .din0(grp_fu_496_p0),
    .din1(grp_fu_496_p1),
    .din2(sqwinBuffer_1_0_1_fu_60),
    .dout(grp_fu_496_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_105_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_105_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_197 <= i_9_reg_547;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_197 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_208 <= j_2_fu_313_p2;
    end else if (((tmp_105_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_208 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((or_cond_reg_585_pp0_iter1_reg == 1'd1)) begin
            sqwinBuffer_0_0_1_fu_56 <= p_sqwinBuffer_0_0_1_fu_479_p3;
        end else if ((or_cond_reg_585_pp0_iter1_reg == 1'd0)) begin
            sqwinBuffer_0_0_1_fu_56 <= sqwinBuffer_0_0_reg_621;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((or_cond_reg_585_pp0_iter1_reg == 1'd1)) begin
            sqwinBuffer_1_0_1_fu_60 <= p_sqwinBuffer_1_0_1_fu_472_p3;
        end else if ((or_cond_reg_585_pp0_iter1_reg == 1'd0)) begin
            sqwinBuffer_1_0_1_fu_60 <= sqwinBuffer_1_0_fu_455_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((or_cond_reg_585 == 1'd1)) begin
            swinBuffer_0_0_1_fu_48 <= p_swinBuffer_0_0_1_fu_426_p3;
        end else if ((or_cond_reg_585 == 1'd0)) begin
            swinBuffer_0_0_1_fu_48 <= sLineBuffer_q0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((or_cond_reg_585 == 1'd1)) begin
            swinBuffer_1_0_1_fu_52 <= p_swinBuffer_1_0_1_fu_419_p3;
        end else if ((or_cond_reg_585 == 1'd0)) begin
            swinBuffer_1_0_1_fu_52 <= swinBuffer_1_0_fu_402_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_9_reg_547 <= i_9_fu_252_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_cond_reg_585 <= or_cond_fu_325_p2;
        tmp_108_reg_577 <= tmp_108_fu_319_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_cond_reg_585_pp0_iter1_reg <= or_cond_reg_585;
        sqLineBuffer_addr_reg_605_pp0_iter1_reg <= sqLineBuffer_addr_reg_605;
        tmp_108_reg_577_pp0_iter1_reg <= tmp_108_reg_577;
        tmp_58_reg_594_pp0_iter1_reg <= tmp_58_reg_594;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_cond_fu_325_p2 == 1'd0))) begin
        sLineBuffer_addr_reg_599 <= tmp_110_fu_350_p1;
        sqLineBuffer_addr_reg_605 <= tmp_110_fu_350_p1;
        tmp_58_reg_594 <= tmp_58_fu_360_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_cond_reg_585 == 1'd0))) begin
        sqwinBuffer_0_0_reg_621 <= sqLineBuffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_cond_reg_585 == 1'd0))) begin
        src_val_load_reg_611 <= src_val_q0;
        swinBuffer_1_0_reg_616 <= swinBuffer_1_0_fu_402_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_104_reg_538 <= tmp_104_fu_237_p2;
        tmp_s_reg_533 <= tmp_s_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_105_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_106_reg_552 <= tmp_106_fu_258_p2;
        tmp_53_reg_557 <= tmp_53_fu_280_p2;
        tmp_55_cast_reg_563[18 : 9] <= tmp_55_cast_fu_296_p3[18 : 9];
    end
end

always @ (*) begin
    if ((tmp_107_fu_308_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_105_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_105_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_434)) begin
        if (((or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1))) begin
            sLineBuffer_address0 = tmp_109_fu_365_p1;
        end else if ((or_cond_fu_325_p2 == 1'd0)) begin
            sLineBuffer_address0 = tmp_110_fu_350_p1;
        end else begin
            sLineBuffer_address0 = 'bx;
        end
    end else begin
        sLineBuffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_cond_fu_325_p2 == 1'd0)))) begin
        sLineBuffer_ce0 = 1'b1;
    end else begin
        sLineBuffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        sLineBuffer_ce1 = 1'b1;
    end else begin
        sLineBuffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sLineBuffer_we0 = 1'b1;
    end else begin
        sLineBuffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_cond_reg_585 == 1'd0))) begin
        sLineBuffer_we1 = 1'b1;
    end else begin
        sLineBuffer_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_434)) begin
        if (((or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1))) begin
            sqLineBuffer_address0 = tmp_109_fu_365_p1;
        end else if ((or_cond_fu_325_p2 == 1'd0)) begin
            sqLineBuffer_address0 = tmp_110_fu_350_p1;
        end else begin
            sqLineBuffer_address0 = 'bx;
        end
    end else begin
        sqLineBuffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_cond_fu_325_p2 == 1'd0)))) begin
        sqLineBuffer_ce0 = 1'b1;
    end else begin
        sqLineBuffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sqLineBuffer_ce1 = 1'b1;
    end else begin
        sqLineBuffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (tmp_106_reg_552 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sqLineBuffer_we0 = 1'b1;
    end else begin
        sqLineBuffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (or_cond_reg_585_pp0_iter1_reg == 1'd0))) begin
        sqLineBuffer_we1 = 1'b1;
    end else begin
        sqLineBuffer_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sqwin_val_ce0 = 1'b1;
    end else begin
        sqwin_val_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sqwin_val_ce1 = 1'b1;
    end else begin
        sqwin_val_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sqwin_val_we0 = 1'b1;
    end else begin
        sqwin_val_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (or_cond_reg_585_pp0_iter1_reg == 1'd0))) begin
        sqwin_val_we1 = 1'b1;
    end else begin
        sqwin_val_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        src_val_ce0 = 1'b1;
    end else begin
        src_val_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        swin_val_ce0 = 1'b1;
    end else begin
        swin_val_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        swin_val_ce1 = 1'b1;
    end else begin
        swin_val_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_107_fu_308_p2 == 1'd1) & (or_cond_fu_325_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        swin_val_we0 = 1'b1;
    end else begin
        swin_val_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (or_cond_reg_585_pp0_iter1_reg == 1'd0))) begin
        swin_val_we1 = 1'b1;
    end else begin
        swin_val_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_105_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_107_fu_308_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((tmp_107_fu_308_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_139 = ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_434 = ((tmp_107_fu_308_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_496_p0 = value_cast_fu_443_p1;

assign grp_fu_496_p1 = value_cast_fu_443_p1;

assign i_9_fu_252_p2 = (i_reg_197 + 31'd1);

assign i_cast_fu_243_p1 = i_reg_197;

assign j_2_fu_313_p2 = (j_reg_208 + 31'd1);

assign j_cast_fu_304_p1 = j_reg_208;

assign or_cond_fu_325_p2 = (tmp_108_fu_319_p2 | tmp_106_reg_552);

assign p_shl_cast_fu_272_p3 = {{tmp_138_fu_268_p1}, {9'd0}};

assign p_sqwinBuffer_0_0_1_fu_479_p3 = ((tmp_108_reg_577_pp0_iter1_reg[0:0] === 1'b1) ? 32'd0 : sqwinBuffer_0_0_1_fu_56);

assign p_sqwinBuffer_1_0_1_fu_472_p3 = ((tmp_108_reg_577_pp0_iter1_reg[0:0] === 1'b1) ? 32'd0 : sqwinBuffer_1_0_1_fu_60);

assign p_swinBuffer_0_0_1_fu_426_p3 = ((tmp_108_reg_577[0:0] === 1'b1) ? 32'd0 : swinBuffer_0_0_1_fu_48);

assign p_swinBuffer_1_0_1_fu_419_p3 = ((tmp_108_reg_577[0:0] === 1'b1) ? 32'd0 : swinBuffer_1_0_1_fu_52);

assign sLineBuffer_d1 = (tmp_111_fu_396_p2 - swinBuffer_0_0_1_fu_48);

assign sqwinBuffer_1_0_fu_455_p2 = (tmp_113_fu_451_p2 - sqwinBuffer_0_0_1_fu_56);

assign sqwin_val_address0 = tmp_56_cast_fu_380_p1;

assign sqwin_val_address1 = tmp_58_cast_fu_446_p1;

assign sqwin_val_d0 = 32'd0;

assign sqwin_val_d1 = sqwinBuffer_1_0_fu_455_p2;

assign src_val_address0 = tmp_57_cast_fu_345_p1;

assign swinBuffer_1_0_fu_402_p2 = (tmp_111_fu_396_p2 - swinBuffer_0_0_1_fu_48);

assign swin_val_address0 = tmp_56_cast_fu_380_p1;

assign swin_val_address1 = tmp_58_cast_fu_446_p1;

assign swin_val_d0 = 32'd0;

assign swin_val_d1 = swinBuffer_1_0_reg_616;

assign tmp1_fu_390_p2 = (value_fu_386_p1 + swinBuffer_1_0_1_fu_52);

assign tmp_104_fu_237_p2 = (src_cols_read + 32'd1);

assign tmp_105_fu_247_p2 = (($signed(i_cast_fu_243_p1) < $signed(tmp_s_reg_533)) ? 1'b1 : 1'b0);

assign tmp_106_fu_258_p2 = ((i_reg_197 == 31'd0) ? 1'b1 : 1'b0);

assign tmp_107_fu_308_p2 = (($signed(j_cast_fu_304_p1) < $signed(tmp_104_reg_538)) ? 1'b1 : 1'b0);

assign tmp_108_fu_319_p2 = ((j_reg_208 == 31'd0) ? 1'b1 : 1'b0);

assign tmp_109_fu_365_p1 = j_reg_208;

assign tmp_110_fu_350_p1 = j_reg_208;

assign tmp_111_fu_396_p2 = (sLineBuffer_q0 + tmp1_fu_390_p2);

assign tmp_113_fu_451_p2 = (sqwinBuffer_0_0_reg_621 + grp_fu_496_p3);

assign tmp_137_fu_264_p1 = i_reg_197[18:0];

assign tmp_138_fu_268_p1 = i_reg_197[9:0];

assign tmp_139_fu_286_p1 = i_reg_197[9:0];

assign tmp_140_fu_290_p2 = ($signed(10'd1023) + $signed(tmp_139_fu_286_p1));

assign tmp_141_fu_371_p1 = j_reg_208[18:0];

assign tmp_142_fu_330_p1 = j_reg_208[18:0];

assign tmp_143_fu_334_p2 = ($signed(19'd524287) + $signed(tmp_142_fu_330_p1));

assign tmp_144_fu_356_p1 = j_reg_208[18:0];

assign tmp_53_fu_280_p2 = (p_shl_cast_fu_272_p3 + tmp_137_fu_264_p1);

assign tmp_55_cast_fu_296_p3 = {{tmp_140_fu_290_p2}, {9'd0}};

assign tmp_56_cast_fu_380_p1 = tmp_56_fu_375_p2;

assign tmp_56_fu_375_p2 = (tmp_53_reg_557 + tmp_141_fu_371_p1);

assign tmp_57_cast_fu_345_p1 = $signed(tmp_57_fu_340_p2);

assign tmp_57_fu_340_p2 = (tmp_55_cast_reg_563 + tmp_143_fu_334_p2);

assign tmp_58_cast_fu_446_p1 = tmp_58_reg_594_pp0_iter1_reg;

assign tmp_58_fu_360_p2 = (tmp_53_reg_557 + tmp_144_fu_356_p1);

assign tmp_s_fu_231_p2 = (src_rows_read + 32'd1);

assign value_cast_fu_443_p1 = src_val_load_reg_611;

assign value_fu_386_p1 = src_val_q0;

always @ (posedge ap_clk) begin
    tmp_55_cast_reg_563[8:0] <= 9'b000000000;
end

endmodule //Integral7