// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __CNN_Core_udiv_31neOg__HH__
#define __CNN_Core_udiv_31neOg__HH__
#include "ACMP_udiv.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(CNN_Core_udiv_31neOg) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_udiv<ID, 35, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_udiv_U;

    SC_CTOR(CNN_Core_udiv_31neOg):  ACMP_udiv_U ("ACMP_udiv_U") {
        ACMP_udiv_U.clk(clk);
        ACMP_udiv_U.reset(reset);
        ACMP_udiv_U.ce(ce);
        ACMP_udiv_U.din0(din0);
        ACMP_udiv_U.din1(din1);
        ACMP_udiv_U.dout(dout);

    }

};

#endif //