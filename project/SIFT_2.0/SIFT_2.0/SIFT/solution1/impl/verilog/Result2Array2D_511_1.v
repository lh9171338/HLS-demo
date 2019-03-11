// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Result2Array2D_511_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        keypoints_val_pt_x_address0,
        keypoints_val_pt_x_ce0,
        keypoints_val_pt_x_q0,
        keypoints_val_pt_y_address0,
        keypoints_val_pt_y_ce0,
        keypoints_val_pt_y_q0,
        keypoints_length_dout,
        keypoints_length_empty_n,
        keypoints_length_read,
        dst_val_address0,
        dst_val_ce0,
        dst_val_we0,
        dst_val_d0,
        dst_val_address1,
        dst_val_ce1,
        dst_val_we1,
        dst_val_d1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] keypoints_val_pt_x_address0;
output   keypoints_val_pt_x_ce0;
input  [15:0] keypoints_val_pt_x_q0;
output  [8:0] keypoints_val_pt_y_address0;
output   keypoints_val_pt_y_ce0;
input  [15:0] keypoints_val_pt_y_q0;
input  [31:0] keypoints_length_dout;
input   keypoints_length_empty_n;
output   keypoints_length_read;
output  [10:0] dst_val_address0;
output   dst_val_ce0;
output   dst_val_we0;
output  [7:0] dst_val_d0;
output  [10:0] dst_val_address1;
output   dst_val_ce1;
output   dst_val_we1;
output  [7:0] dst_val_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg keypoints_val_pt_x_ce0;
reg keypoints_val_pt_y_ce0;
reg keypoints_length_read;
reg[10:0] dst_val_address0;
reg dst_val_ce0;
reg dst_val_we0;
reg[7:0] dst_val_d0;
reg[10:0] dst_val_address1;
reg dst_val_ce1;
reg dst_val_we1;
reg[7:0] dst_val_d1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    keypoints_length_blk_n;
reg   [7:0] j_i_reg_214;
reg   [31:0] length_reg_569;
reg    ap_block_state1;
wire   [7:0] tmp_fu_244_p1;
reg   [7:0] tmp_reg_574;
wire   [0:0] exitcond4_i_fu_248_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] i_fu_254_p2;
reg   [4:0] i_reg_583;
wire   [10:0] tmp_i_fu_264_p3;
reg   [10:0] tmp_i_reg_588;
wire   [12:0] tmp_339_cast_fu_280_p1;
reg   [12:0] tmp_339_cast_reg_593;
wire   [0:0] exitcond_i_fu_288_p2;
reg   [0:0] exitcond_i_reg_605;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] j_fu_294_p2;
reg   [7:0] j_reg_609;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_fu_322_p2;
reg   [0:0] icmp_reg_614;
wire   [0:0] grp_fu_226_p2;
reg   [0:0] tmp_1019_i_reg_618;
wire   [0:0] grp_fu_231_p2;
reg   [0:0] tmp_1026_i_reg_622;
wire   [0:0] grp_fu_236_p2;
reg   [0:0] tmp_1034_i_reg_626;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] i_i_reg_203;
wire    ap_CS_fsm_state5;
reg   [7:0] ap_phi_mux_j_i_phi_fu_218_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_1041_i_fu_344_p1;
wire   [63:0] tmp_1023_i_fu_349_p1;
wire   [63:0] tmp_345_cast_fu_374_p1;
wire   [63:0] tmp_344_cast_fu_399_p1;
wire   [63:0] tmp_342_cast_fu_424_p1;
wire   [63:0] tmp_340_cast_fu_438_p1;
wire   [63:0] tmp_347_cast_fu_470_p1;
wire   [63:0] tmp_346_cast_fu_489_p1;
wire   [63:0] tmp_343_cast_fu_522_p1;
wire   [63:0] tmp_341_cast_fu_541_p1;
reg   [15:0] y_1_fu_86;
reg   [15:0] x_1_fu_90;
reg   [31:0] length_1_fu_94;
wire   [7:0] tmp_1650_fu_475_p1;
wire   [7:0] tmp_1649_fu_527_p1;
wire   [1:0] byte_fu_300_p1;
wire   [3:0] tmp_1646_fu_260_p1;
wire   [11:0] tmp_338_fu_272_p3;
wire   [10:0] j_cast3_i_fu_284_p1;
wire   [10:0] idx_fu_307_p2;
wire   [8:0] tmp_1648_fu_312_p4;
wire   [10:0] tmp_1018_i_fu_328_p2;
wire   [8:0] tmp_741_i_fu_334_p4;
wire   [12:0] tmp_1040_i_cast_fu_365_p1;
wire   [12:0] tmp_345_fu_369_p2;
wire   [12:0] tmp_1037_i_cast_fu_390_p1;
wire   [12:0] tmp_344_fu_394_p2;
wire   [12:0] tmp_1029_i_cast_fu_415_p1;
wire   [12:0] tmp_342_fu_419_p2;
wire   [12:0] tmp_1021_i_cast_fu_429_p1;
wire   [12:0] tmp_340_fu_433_p2;
wire   [12:0] tmp_1046_i_cast_fu_461_p1;
wire   [12:0] tmp_347_fu_465_p2;
wire   [12:0] tmp_1043_i_cast_fu_480_p1;
wire   [12:0] tmp_346_fu_484_p2;
wire   [12:0] tmp_1033_i_cast_fu_513_p1;
wire   [12:0] tmp_343_fu_517_p2;
wire   [12:0] tmp_1025_i_cast_fu_532_p1;
wire   [12:0] tmp_341_fu_536_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_492;
reg    ap_condition_495;
reg    ap_condition_263;
reg    ap_condition_503;
reg    ap_condition_506;
reg    ap_condition_501;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond4_i_fu_248_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond4_i_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((exitcond4_i_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_i_reg_203 <= i_reg_583;
    end else if ((~((ap_start == 1'b0) | (keypoints_length_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_203 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_i_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_i_reg_214 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_reg_605 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_i_reg_214 <= j_reg_609;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_i_reg_605 <= exitcond_i_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_583 <= i_fu_254_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_reg_614 <= icmp_fu_322_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_reg_609 <= j_fu_294_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_226_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1))) begin
        length_1_fu_94 <= length_reg_569;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (keypoints_length_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        length_reg_569 <= keypoints_length_dout;
        tmp_reg_574 <= tmp_fu_244_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (icmp_fu_322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_1019_i_reg_618 <= grp_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (icmp_fu_322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_1026_i_reg_622 <= grp_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (icmp_fu_322_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_1034_i_reg_626 <= grp_fu_236_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_i_fu_248_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_339_cast_reg_593[11 : 7] <= tmp_339_cast_fu_280_p1[11 : 7];
        tmp_i_reg_588[10 : 7] <= tmp_i_fu_264_p3[10 : 7];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1019_i_reg_618 == 1'd1))) begin
        x_1_fu_90 <= keypoints_val_pt_x_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1034_i_reg_626 == 1'd1))) begin
        y_1_fu_86 <= keypoints_val_pt_y_q0;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_288_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond4_i_fu_248_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_605 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_i_phi_fu_218_p4 = j_reg_609;
    end else begin
        ap_phi_mux_j_i_phi_fu_218_p4 = j_i_reg_214;
    end
end

always @ (*) begin
    if (((exitcond4_i_fu_248_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_263)) begin
        if ((grp_fu_226_p2 == 1'd1)) begin
            dst_val_address0 = tmp_340_cast_fu_438_p1;
        end else if (((grp_fu_226_p2 == 1'd0) & (grp_fu_231_p2 == 1'd1))) begin
            dst_val_address0 = tmp_342_cast_fu_424_p1;
        end else if ((1'b1 == ap_condition_495)) begin
            dst_val_address0 = tmp_344_cast_fu_399_p1;
        end else if ((1'b1 == ap_condition_492)) begin
            dst_val_address0 = tmp_345_cast_fu_374_p1;
        end else begin
            dst_val_address0 = 'bx;
        end
    end else begin
        dst_val_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_501)) begin
        if ((tmp_1019_i_reg_618 == 1'd1)) begin
            dst_val_address1 = tmp_341_cast_fu_541_p1;
        end else if (((tmp_1019_i_reg_618 == 1'd0) & (tmp_1026_i_reg_622 == 1'd1))) begin
            dst_val_address1 = tmp_343_cast_fu_522_p1;
        end else if ((1'b1 == ap_condition_506)) begin
            dst_val_address1 = tmp_346_cast_fu_489_p1;
        end else if ((1'b1 == ap_condition_503)) begin
            dst_val_address1 = tmp_347_cast_fu_470_p1;
        end else begin
            dst_val_address1 = 'bx;
        end
    end else begin
        dst_val_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_226_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_231_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_236_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_236_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)))) begin
        dst_val_ce0 = 1'b1;
    end else begin
        dst_val_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1019_i_reg_618 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1026_i_reg_622 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1034_i_reg_626 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1034_i_reg_626 == 1'd0) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        dst_val_ce1 = 1'b1;
    end else begin
        dst_val_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_263)) begin
        if ((grp_fu_226_p2 == 1'd1)) begin
            dst_val_d0 = tmp_reg_574;
        end else if (((grp_fu_226_p2 == 1'd0) & (grp_fu_231_p2 == 1'd1))) begin
            dst_val_d0 = {{length_1_fu_94[15:8]}};
        end else if ((1'b1 == ap_condition_495)) begin
            dst_val_d0 = {{length_1_fu_94[23:16]}};
        end else if ((1'b1 == ap_condition_492)) begin
            dst_val_d0 = {{length_1_fu_94[31:24]}};
        end else begin
            dst_val_d0 = 'bx;
        end
    end else begin
        dst_val_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_501)) begin
        if ((tmp_1019_i_reg_618 == 1'd1)) begin
            dst_val_d1 = tmp_1649_fu_527_p1;
        end else if (((tmp_1019_i_reg_618 == 1'd0) & (tmp_1026_i_reg_622 == 1'd1))) begin
            dst_val_d1 = {{x_1_fu_90[15:8]}};
        end else if ((1'b1 == ap_condition_506)) begin
            dst_val_d1 = tmp_1650_fu_475_p1;
        end else if ((1'b1 == ap_condition_503)) begin
            dst_val_d1 = {{y_1_fu_86[15:8]}};
        end else begin
            dst_val_d1 = 'bx;
        end
    end else begin
        dst_val_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_226_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_231_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_236_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_fu_322_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_i_fu_288_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_236_p2 == 1'd1) & (icmp_fu_322_p2 == 1'd1)))) begin
        dst_val_we0 = 1'b1;
    end else begin
        dst_val_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1019_i_reg_618 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1026_i_reg_622 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1034_i_reg_626 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1034_i_reg_626 == 1'd0) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        dst_val_we1 = 1'b1;
    end else begin
        dst_val_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        keypoints_length_blk_n = keypoints_length_empty_n;
    end else begin
        keypoints_length_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (keypoints_length_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        keypoints_length_read = 1'b1;
    end else begin
        keypoints_length_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        keypoints_val_pt_x_ce0 = 1'b1;
    end else begin
        keypoints_val_pt_x_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        keypoints_val_pt_y_ce0 = 1'b1;
    end else begin
        keypoints_val_pt_y_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (keypoints_length_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond4_i_fu_248_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_i_fu_288_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_i_fu_288_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
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

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (keypoints_length_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_263 = ((exitcond_i_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_fu_322_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_492 = ((grp_fu_236_p2 == 1'd0) & (grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_495 = ((grp_fu_231_p2 == 1'd0) & (grp_fu_226_p2 == 1'd0) & (grp_fu_236_p2 == 1'd1));
end

always @ (*) begin
    ap_condition_501 = ((icmp_reg_614 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_condition_503 = ((tmp_1034_i_reg_626 == 1'd0) & (tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0));
end

always @ (*) begin
    ap_condition_506 = ((tmp_1026_i_reg_622 == 1'd0) & (tmp_1019_i_reg_618 == 1'd0) & (tmp_1034_i_reg_626 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign byte_fu_300_p1 = ap_phi_mux_j_i_phi_fu_218_p4[1:0];

assign exitcond4_i_fu_248_p2 = ((i_i_reg_203 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_i_fu_288_p2 = ((ap_phi_mux_j_i_phi_fu_218_p4 == 8'd128) ? 1'b1 : 1'b0);

assign grp_fu_226_p2 = ((byte_fu_300_p1 == 2'd0) ? 1'b1 : 1'b0);

assign grp_fu_231_p2 = ((byte_fu_300_p1 == 2'd1) ? 1'b1 : 1'b0);

assign grp_fu_236_p2 = ((byte_fu_300_p1 == 2'd2) ? 1'b1 : 1'b0);

assign i_fu_254_p2 = (i_i_reg_203 + 5'd1);

assign icmp_fu_322_p2 = ((tmp_1648_fu_312_p4 == 9'd0) ? 1'b1 : 1'b0);

assign idx_fu_307_p2 = (tmp_i_reg_588 + j_cast3_i_fu_284_p1);

assign j_cast3_i_fu_284_p1 = ap_phi_mux_j_i_phi_fu_218_p4;

assign j_fu_294_p2 = (ap_phi_mux_j_i_phi_fu_218_p4 + 8'd1);

assign keypoints_val_pt_x_address0 = tmp_1023_i_fu_349_p1;

assign keypoints_val_pt_y_address0 = tmp_1041_i_fu_344_p1;

assign tmp_1018_i_fu_328_p2 = ($signed(idx_fu_307_p2) + $signed(11'd2044));

assign tmp_1021_i_cast_fu_429_p1 = ap_phi_mux_j_i_phi_fu_218_p4;

assign tmp_1023_i_fu_349_p1 = tmp_741_i_fu_334_p4;

assign tmp_1025_i_cast_fu_532_p1 = j_i_reg_214;

assign tmp_1029_i_cast_fu_415_p1 = ap_phi_mux_j_i_phi_fu_218_p4;

assign tmp_1033_i_cast_fu_513_p1 = j_i_reg_214;

assign tmp_1037_i_cast_fu_390_p1 = ap_phi_mux_j_i_phi_fu_218_p4;

assign tmp_1040_i_cast_fu_365_p1 = ap_phi_mux_j_i_phi_fu_218_p4;

assign tmp_1041_i_fu_344_p1 = tmp_741_i_fu_334_p4;

assign tmp_1043_i_cast_fu_480_p1 = j_i_reg_214;

assign tmp_1046_i_cast_fu_461_p1 = j_i_reg_214;

assign tmp_1646_fu_260_p1 = i_i_reg_203[3:0];

assign tmp_1648_fu_312_p4 = {{idx_fu_307_p2[10:2]}};

assign tmp_1649_fu_527_p1 = keypoints_val_pt_x_q0[7:0];

assign tmp_1650_fu_475_p1 = keypoints_val_pt_y_q0[7:0];

assign tmp_338_fu_272_p3 = {{i_i_reg_203}, {7'd0}};

assign tmp_339_cast_fu_280_p1 = tmp_338_fu_272_p3;

assign tmp_340_cast_fu_438_p1 = tmp_340_fu_433_p2;

assign tmp_340_fu_433_p2 = (tmp_339_cast_reg_593 + tmp_1021_i_cast_fu_429_p1);

assign tmp_341_cast_fu_541_p1 = tmp_341_fu_536_p2;

assign tmp_341_fu_536_p2 = (tmp_339_cast_reg_593 + tmp_1025_i_cast_fu_532_p1);

assign tmp_342_cast_fu_424_p1 = tmp_342_fu_419_p2;

assign tmp_342_fu_419_p2 = (tmp_1029_i_cast_fu_415_p1 + tmp_339_cast_reg_593);

assign tmp_343_cast_fu_522_p1 = tmp_343_fu_517_p2;

assign tmp_343_fu_517_p2 = (tmp_339_cast_reg_593 + tmp_1033_i_cast_fu_513_p1);

assign tmp_344_cast_fu_399_p1 = tmp_344_fu_394_p2;

assign tmp_344_fu_394_p2 = (tmp_1037_i_cast_fu_390_p1 + tmp_339_cast_reg_593);

assign tmp_345_cast_fu_374_p1 = tmp_345_fu_369_p2;

assign tmp_345_fu_369_p2 = (tmp_339_cast_reg_593 + tmp_1040_i_cast_fu_365_p1);

assign tmp_346_cast_fu_489_p1 = tmp_346_fu_484_p2;

assign tmp_346_fu_484_p2 = (tmp_339_cast_reg_593 + tmp_1043_i_cast_fu_480_p1);

assign tmp_347_cast_fu_470_p1 = tmp_347_fu_465_p2;

assign tmp_347_fu_465_p2 = (tmp_339_cast_reg_593 + tmp_1046_i_cast_fu_461_p1);

assign tmp_741_i_fu_334_p4 = {{tmp_1018_i_fu_328_p2[10:2]}};

assign tmp_fu_244_p1 = keypoints_length_dout[7:0];

assign tmp_i_fu_264_p3 = {{tmp_1646_fu_260_p1}, {7'd0}};

always @ (posedge ap_clk) begin
    tmp_i_reg_588[6:0] <= 7'b0000000;
    tmp_339_cast_reg_593[6:0] <= 7'b0000000;
    tmp_339_cast_reg_593[12] <= 1'b0;
end

endmodule //Result2Array2D_511_1