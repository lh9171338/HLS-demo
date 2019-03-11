// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Result2Array2D_511_s_HH_
#define _Result2Array2D_511_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Result2Array2D_511_s : public sc_module {
    // Port declarations 33
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > keypoints_val_pt_x_address0;
    sc_out< sc_logic > keypoints_val_pt_x_ce0;
    sc_in< sc_lv<16> > keypoints_val_pt_x_q0;
    sc_out< sc_lv<9> > keypoints_val_pt_y_address0;
    sc_out< sc_logic > keypoints_val_pt_y_ce0;
    sc_in< sc_lv<16> > keypoints_val_pt_y_q0;
    sc_in< sc_lv<32> > keypoints_length_dout;
    sc_in< sc_logic > keypoints_length_empty_n;
    sc_out< sc_logic > keypoints_length_read;
    sc_out< sc_lv<9> > matches_val_idx0_address0;
    sc_out< sc_logic > matches_val_idx0_ce0;
    sc_in< sc_lv<16> > matches_val_idx0_q0;
    sc_out< sc_lv<9> > matches_val_idx1_address0;
    sc_out< sc_logic > matches_val_idx1_ce0;
    sc_in< sc_lv<16> > matches_val_idx1_q0;
    sc_in< sc_lv<32> > matches_length_dout;
    sc_in< sc_logic > matches_length_empty_n;
    sc_out< sc_logic > matches_length_read;
    sc_out< sc_lv<12> > dst_val_address0;
    sc_out< sc_logic > dst_val_ce0;
    sc_out< sc_logic > dst_val_we0;
    sc_out< sc_lv<8> > dst_val_d0;
    sc_out< sc_lv<12> > dst_val_address1;
    sc_out< sc_logic > dst_val_ce1;
    sc_out< sc_logic > dst_val_we1;
    sc_out< sc_lv<8> > dst_val_d1;


    // Module declarations
    Result2Array2D_511_s(sc_module_name name);
    SC_HAS_PROCESS(Result2Array2D_511_s);

    ~Result2Array2D_511_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > keypoints_length_blk_n;
    sc_signal< sc_logic > matches_length_blk_n;
    sc_signal< sc_lv<8> > j_i_reg_334;
    sc_signal< sc_lv<32> > length_reg_915;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > length_3_reg_920;
    sc_signal< sc_lv<8> > tmp_1651_fu_397_p1;
    sc_signal< sc_lv<8> > tmp_1651_reg_925;
    sc_signal< sc_lv<8> > tmp_1652_fu_401_p1;
    sc_signal< sc_lv<8> > tmp_1652_reg_930;
    sc_signal< sc_lv<1> > exitcond5_i_fu_405_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > i_fu_411_p2;
    sc_signal< sc_lv<6> > i_reg_939;
    sc_signal< sc_lv<12> > tmp_i_fu_421_p3;
    sc_signal< sc_lv<12> > tmp_i_reg_944;
    sc_signal< sc_lv<14> > tmp_350_cast_fu_437_p1;
    sc_signal< sc_lv<14> > tmp_350_cast_reg_949;
    sc_signal< sc_lv<11> > tmp_442_fu_445_p3;
    sc_signal< sc_lv<11> > tmp_442_reg_969;
    sc_signal< sc_lv<1> > exitcond_i_fu_457_p2;
    sc_signal< sc_lv<1> > exitcond_i_reg_974;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<8> > j_fu_463_p2;
    sc_signal< sc_lv<8> > j_reg_978;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_fu_498_p2;
    sc_signal< sc_lv<1> > icmp_reg_983;
    sc_signal< sc_lv<1> > tmp_444_fu_504_p2;
    sc_signal< sc_lv<1> > tmp_444_reg_987;
    sc_signal< sc_lv<1> > tmp_445_fu_510_p2;
    sc_signal< sc_lv<1> > tmp_445_reg_991;
    sc_signal< sc_lv<1> > tmp_446_fu_516_p2;
    sc_signal< sc_lv<1> > tmp_446_reg_995;
    sc_signal< sc_lv<1> > tmp_1657_fu_522_p3;
    sc_signal< sc_lv<1> > tmp_1657_reg_999;
    sc_signal< sc_lv<1> > tmp_1055_i_fu_540_p2;
    sc_signal< sc_lv<1> > tmp_1055_i_reg_1013;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<6> > i_i_reg_323;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > ap_phi_mux_j_i_phi_fu_338_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > tmp_1084_i_fu_530_p1;
    sc_signal< sc_lv<64> > tmp_1060_i_fu_535_p1;
    sc_signal< sc_lv<64> > tmp_1104_i_fu_546_p1;
    sc_signal< sc_lv<64> > tmp_1080_i_fu_551_p1;
    sc_signal< sc_lv<64> > tmp_365_cast_fu_565_p1;
    sc_signal< sc_lv<64> > tmp_364_cast_fu_579_p1;
    sc_signal< sc_lv<64> > tmp_362_cast_fu_593_p1;
    sc_signal< sc_lv<64> > tmp_358_cast_fu_607_p1;
    sc_signal< sc_lv<64> > tmp_356_cast_fu_625_p1;
    sc_signal< sc_lv<64> > tmp_355_cast_fu_639_p1;
    sc_signal< sc_lv<64> > tmp_353_cast_fu_653_p1;
    sc_signal< sc_lv<64> > tmp_352_cast_fu_667_p1;
    sc_signal< sc_lv<64> > tmp_361_cast_fu_699_p1;
    sc_signal< sc_lv<64> > tmp_360_cast_fu_718_p1;
    sc_signal< sc_lv<64> > tmp_357_cast_fu_751_p1;
    sc_signal< sc_lv<64> > tmp_354_cast_fu_770_p1;
    sc_signal< sc_lv<64> > tmp_367_cast_fu_803_p1;
    sc_signal< sc_lv<64> > tmp_366_cast_fu_822_p1;
    sc_signal< sc_lv<64> > tmp_363_cast_fu_855_p1;
    sc_signal< sc_lv<64> > tmp_359_cast_fu_874_p1;
    sc_signal< sc_lv<16> > idx1_1_fu_102;
    sc_signal< sc_lv<16> > idx0_1_fu_106;
    sc_signal< sc_lv<16> > y_2_fu_110;
    sc_signal< sc_lv<16> > x_2_fu_114;
    sc_signal< sc_lv<32> > length_2_fu_118;
    sc_signal< sc_lv<8> > tmp_1660_fu_704_p1;
    sc_signal< sc_lv<8> > tmp_1658_fu_756_p1;
    sc_signal< sc_lv<8> > tmp_1661_fu_808_p1;
    sc_signal< sc_lv<8> > tmp_1659_fu_860_p1;
    sc_signal< sc_lv<11> > idx_cast_i_fu_482_p2;
    sc_signal< sc_lv<11> > grp_fu_346_p2;
    sc_signal< sc_lv<5> > tmp_1653_fu_417_p1;
    sc_signal< sc_lv<13> > tmp_349_fu_429_p3;
    sc_signal< sc_lv<4> > tmp_1654_fu_441_p1;
    sc_signal< sc_lv<12> > j_cast3_i_fu_453_p1;
    sc_signal< sc_lv<11> > tmp_fu_469_p1;
    sc_signal< sc_lv<12> > idx_fu_477_p2;
    sc_signal< sc_lv<10> > tmp_1656_fu_488_p4;
    sc_signal< sc_lv<2> > byte_fu_473_p1;
    sc_signal< sc_lv<9> > grp_fu_351_p4;
    sc_signal< sc_lv<14> > tmp_1103_i_cast_fu_556_p1;
    sc_signal< sc_lv<14> > tmp_365_fu_560_p2;
    sc_signal< sc_lv<14> > tmp_1100_i_cast_fu_570_p1;
    sc_signal< sc_lv<14> > tmp_364_fu_574_p2;
    sc_signal< sc_lv<14> > tmp_1092_i_cast_fu_584_p1;
    sc_signal< sc_lv<14> > tmp_362_fu_588_p2;
    sc_signal< sc_lv<14> > tmp_1078_i_cast_fu_598_p1;
    sc_signal< sc_lv<14> > tmp_358_fu_602_p2;
    sc_signal< sc_lv<14> > tmp_1072_i_cast_fu_616_p1;
    sc_signal< sc_lv<14> > tmp_356_fu_620_p2;
    sc_signal< sc_lv<14> > tmp_1069_i_cast_fu_630_p1;
    sc_signal< sc_lv<14> > tmp_355_fu_634_p2;
    sc_signal< sc_lv<14> > tmp_1058_i_cast_fu_644_p1;
    sc_signal< sc_lv<14> > tmp_353_fu_648_p2;
    sc_signal< sc_lv<14> > tmp_1051_i_cast_fu_658_p1;
    sc_signal< sc_lv<14> > tmp_352_fu_662_p2;
    sc_signal< sc_lv<14> > tmp_1089_i_cast_fu_690_p1;
    sc_signal< sc_lv<14> > tmp_361_fu_694_p2;
    sc_signal< sc_lv<14> > tmp_1086_i_cast_fu_709_p1;
    sc_signal< sc_lv<14> > tmp_360_fu_713_p2;
    sc_signal< sc_lv<14> > tmp_1075_i_cast_fu_742_p1;
    sc_signal< sc_lv<14> > tmp_357_fu_746_p2;
    sc_signal< sc_lv<14> > tmp_1062_i_cast_fu_761_p1;
    sc_signal< sc_lv<14> > tmp_354_fu_765_p2;
    sc_signal< sc_lv<14> > tmp_1109_i_cast_fu_794_p1;
    sc_signal< sc_lv<14> > tmp_367_fu_798_p2;
    sc_signal< sc_lv<14> > tmp_1106_i_cast_fu_813_p1;
    sc_signal< sc_lv<14> > tmp_366_fu_817_p2;
    sc_signal< sc_lv<14> > tmp_1096_i_cast_fu_846_p1;
    sc_signal< sc_lv<14> > tmp_363_fu_850_p2;
    sc_signal< sc_lv<14> > tmp_1082_i_cast_fu_865_p1;
    sc_signal< sc_lv<14> > tmp_359_fu_869_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_739;
    sc_signal< bool > ap_condition_744;
    sc_signal< bool > ap_condition_749;
    sc_signal< bool > ap_condition_754;
    sc_signal< bool > ap_condition_759;
    sc_signal< bool > ap_condition_763;
    sc_signal< bool > ap_condition_767;
    sc_signal< bool > ap_condition_734;
    sc_signal< bool > ap_condition_776;
    sc_signal< bool > ap_condition_779;
    sc_signal< bool > ap_condition_782;
    sc_signal< bool > ap_condition_789;
    sc_signal< bool > ap_condition_794;
    sc_signal< bool > ap_condition_799;
    sc_signal< bool > ap_condition_803;
    sc_signal< bool > ap_condition_773;
    sc_signal< bool > ap_condition_810;
    sc_signal< bool > ap_condition_808;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<11> ap_const_lv11_7FC;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<12> ap_const_lv12_804;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_734();
    void thread_ap_condition_739();
    void thread_ap_condition_744();
    void thread_ap_condition_749();
    void thread_ap_condition_754();
    void thread_ap_condition_759();
    void thread_ap_condition_763();
    void thread_ap_condition_767();
    void thread_ap_condition_773();
    void thread_ap_condition_776();
    void thread_ap_condition_779();
    void thread_ap_condition_782();
    void thread_ap_condition_789();
    void thread_ap_condition_794();
    void thread_ap_condition_799();
    void thread_ap_condition_803();
    void thread_ap_condition_808();
    void thread_ap_condition_810();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_j_i_phi_fu_338_p4();
    void thread_ap_ready();
    void thread_byte_fu_473_p1();
    void thread_dst_val_address0();
    void thread_dst_val_address1();
    void thread_dst_val_ce0();
    void thread_dst_val_ce1();
    void thread_dst_val_d0();
    void thread_dst_val_d1();
    void thread_dst_val_we0();
    void thread_dst_val_we1();
    void thread_exitcond5_i_fu_405_p2();
    void thread_exitcond_i_fu_457_p2();
    void thread_grp_fu_346_p2();
    void thread_grp_fu_351_p4();
    void thread_i_fu_411_p2();
    void thread_icmp_fu_498_p2();
    void thread_idx_cast_i_fu_482_p2();
    void thread_idx_fu_477_p2();
    void thread_j_cast3_i_fu_453_p1();
    void thread_j_fu_463_p2();
    void thread_keypoints_length_blk_n();
    void thread_keypoints_length_read();
    void thread_keypoints_val_pt_x_address0();
    void thread_keypoints_val_pt_x_ce0();
    void thread_keypoints_val_pt_y_address0();
    void thread_keypoints_val_pt_y_ce0();
    void thread_matches_length_blk_n();
    void thread_matches_length_read();
    void thread_matches_val_idx0_address0();
    void thread_matches_val_idx0_ce0();
    void thread_matches_val_idx1_address0();
    void thread_matches_val_idx1_ce0();
    void thread_tmp_1051_i_cast_fu_658_p1();
    void thread_tmp_1055_i_fu_540_p2();
    void thread_tmp_1058_i_cast_fu_644_p1();
    void thread_tmp_1060_i_fu_535_p1();
    void thread_tmp_1062_i_cast_fu_761_p1();
    void thread_tmp_1069_i_cast_fu_630_p1();
    void thread_tmp_1072_i_cast_fu_616_p1();
    void thread_tmp_1075_i_cast_fu_742_p1();
    void thread_tmp_1078_i_cast_fu_598_p1();
    void thread_tmp_1080_i_fu_551_p1();
    void thread_tmp_1082_i_cast_fu_865_p1();
    void thread_tmp_1084_i_fu_530_p1();
    void thread_tmp_1086_i_cast_fu_709_p1();
    void thread_tmp_1089_i_cast_fu_690_p1();
    void thread_tmp_1092_i_cast_fu_584_p1();
    void thread_tmp_1096_i_cast_fu_846_p1();
    void thread_tmp_1100_i_cast_fu_570_p1();
    void thread_tmp_1103_i_cast_fu_556_p1();
    void thread_tmp_1104_i_fu_546_p1();
    void thread_tmp_1106_i_cast_fu_813_p1();
    void thread_tmp_1109_i_cast_fu_794_p1();
    void thread_tmp_1651_fu_397_p1();
    void thread_tmp_1652_fu_401_p1();
    void thread_tmp_1653_fu_417_p1();
    void thread_tmp_1654_fu_441_p1();
    void thread_tmp_1656_fu_488_p4();
    void thread_tmp_1657_fu_522_p3();
    void thread_tmp_1658_fu_756_p1();
    void thread_tmp_1659_fu_860_p1();
    void thread_tmp_1660_fu_704_p1();
    void thread_tmp_1661_fu_808_p1();
    void thread_tmp_349_fu_429_p3();
    void thread_tmp_350_cast_fu_437_p1();
    void thread_tmp_352_cast_fu_667_p1();
    void thread_tmp_352_fu_662_p2();
    void thread_tmp_353_cast_fu_653_p1();
    void thread_tmp_353_fu_648_p2();
    void thread_tmp_354_cast_fu_770_p1();
    void thread_tmp_354_fu_765_p2();
    void thread_tmp_355_cast_fu_639_p1();
    void thread_tmp_355_fu_634_p2();
    void thread_tmp_356_cast_fu_625_p1();
    void thread_tmp_356_fu_620_p2();
    void thread_tmp_357_cast_fu_751_p1();
    void thread_tmp_357_fu_746_p2();
    void thread_tmp_358_cast_fu_607_p1();
    void thread_tmp_358_fu_602_p2();
    void thread_tmp_359_cast_fu_874_p1();
    void thread_tmp_359_fu_869_p2();
    void thread_tmp_360_cast_fu_718_p1();
    void thread_tmp_360_fu_713_p2();
    void thread_tmp_361_cast_fu_699_p1();
    void thread_tmp_361_fu_694_p2();
    void thread_tmp_362_cast_fu_593_p1();
    void thread_tmp_362_fu_588_p2();
    void thread_tmp_363_cast_fu_855_p1();
    void thread_tmp_363_fu_850_p2();
    void thread_tmp_364_cast_fu_579_p1();
    void thread_tmp_364_fu_574_p2();
    void thread_tmp_365_cast_fu_565_p1();
    void thread_tmp_365_fu_560_p2();
    void thread_tmp_366_cast_fu_822_p1();
    void thread_tmp_366_fu_817_p2();
    void thread_tmp_367_cast_fu_803_p1();
    void thread_tmp_367_fu_798_p2();
    void thread_tmp_442_fu_445_p3();
    void thread_tmp_444_fu_504_p2();
    void thread_tmp_445_fu_510_p2();
    void thread_tmp_446_fu_516_p2();
    void thread_tmp_fu_469_p1();
    void thread_tmp_i_fu_421_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif