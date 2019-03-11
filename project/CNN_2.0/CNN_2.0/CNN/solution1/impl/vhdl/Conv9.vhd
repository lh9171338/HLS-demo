-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Conv9 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_val_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    src_val_V_ce0 : OUT STD_LOGIC;
    src_val_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    src_val_V_offset : IN STD_LOGIC_VECTOR (2 downto 0);
    dst_val_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    dst_val_V_ce0 : OUT STD_LOGIC;
    dst_val_V_we0 : OUT STD_LOGIC;
    dst_val_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Conv9 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_18 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_2E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101110";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv11_17 : STD_LOGIC_VECTOR (10 downto 0) := "00000010111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal j_reg_152 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_164_cast_fu_193_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_164_cast_reg_478 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_12_fu_207_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_12_reg_487 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_154_fu_242_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_154_reg_492 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_s_fu_248_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_reg_497 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_458_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_155_reg_502 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond2_fu_254_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond2_reg_507 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_10_fu_260_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal LineBuffer_val_1_V_s_reg_521 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_cond_fu_291_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond_reg_527 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_140_fu_296_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_140_reg_531 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal LineBuffer_val_1_V_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal LineBuffer_val_1_V_ce0 : STD_LOGIC;
    signal LineBuffer_val_1_V_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal LineBuffer_val_1_V_ce1 : STD_LOGIC;
    signal LineBuffer_val_1_V_we1 : STD_LOGIC;
    signal i_reg_141 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_171_cast_fu_280_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_138_fu_266_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_175_cast_fu_443_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal BlockBuffer_val_0_V_fu_80 : STD_LOGIC_VECTOR (31 downto 0);
    signal BlockBuffer_val_1_V_fu_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_150_fu_163_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_151_fu_175_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_shl_cast_fu_171_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl1_cast_fu_183_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_152_fu_187_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_cast_fu_213_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_153_fu_217_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_222_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl2_cast_fu_226_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_shl3_cast_fu_234_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_138_cast_fu_271_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_156_fu_275_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_139_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_157_fu_316_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_436_0_1_fu_326_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal p_Val2_75_0_1_fu_308_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal tmp_4373_0_1_cast_ca_fu_338_p1 : STD_LOGIC_VECTOR (46 downto 0);
    signal tmp_436_0_1_cast_cas_fu_334_p1 : STD_LOGIC_VECTOR (46 downto 0);
    signal p_Val2_76_0_1_fu_342_p2 : STD_LOGIC_VECTOR (46 downto 0);
    signal tmp_73_fu_348_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_158_fu_366_p3 : STD_LOGIC_VECTOR (46 downto 0);
    signal p_Val2_75_1_fu_358_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal tmp_4373_1_cast_fu_378_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_436_1_fu_374_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal p_Val2_76_1_fu_382_p2 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_159_fu_396_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_75_1_1_fu_388_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal tmp_4373_1_1_cast_fu_414_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_436_1_1_fu_406_p3 : STD_LOGIC_VECTOR (47 downto 0);
    signal p_Val2_76_1_1_fu_418_p2 : STD_LOGIC_VECTOR (47 downto 0);
    signal tmp_141_cast_fu_435_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_160_fu_438_p2 : STD_LOGIC_VECTOR (10 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of tmp_160_fu_438_p2 : signal is "no";
    signal grp_fu_458_p0 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_458_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_458_p10 : STD_LOGIC_VECTOR (5 downto 0);

    component CNN_Core_am_addmuxdS IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (0 downto 0);
        din1 : IN STD_LOGIC_VECTOR (4 downto 0);
        din2 : IN STD_LOGIC_VECTOR (10 downto 0);
        dout : OUT STD_LOGIC_VECTOR (10 downto 0) );
    end component;


    component Conv9_LineBuffer_wdI IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    LineBuffer_val_1_V_U : component Conv9_LineBuffer_wdI
    generic map (
        DataWidth => 32,
        AddressRange => 24,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => LineBuffer_val_1_V_address0,
        ce0 => LineBuffer_val_1_V_ce0,
        q0 => LineBuffer_val_1_V_q0,
        address1 => LineBuffer_val_1_V_s_reg_521,
        ce1 => LineBuffer_val_1_V_ce1,
        we1 => LineBuffer_val_1_V_we1,
        d1 => src_val_V_q0);

    CNN_Core_am_addmuxdS_U102 : component CNN_Core_am_addmuxdS
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 1,
        din1_WIDTH => 5,
        din2_WIDTH => 11,
        dout_WIDTH => 11)
    port map (
        din0 => grp_fu_458_p0,
        din1 => grp_fu_458_p1,
        din2 => ap_const_lv11_17,
        dout => grp_fu_458_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((exitcond_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((exitcond_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_reg_141 <= i_12_reg_487;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_141 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    j_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_254_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                j_reg_152 <= j_10_fu_260_p2;
            elsif (((exitcond_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_152 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_reg_507 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                BlockBuffer_val_0_V_fu_80 <= LineBuffer_val_1_V_q0;
                BlockBuffer_val_1_V_fu_84 <= src_val_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_254_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                LineBuffer_val_1_V_s_reg_521 <= tmp_138_fu_266_p1(5 - 1 downto 0);
                or_cond_reg_527 <= or_cond_fu_291_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond2_reg_507 <= exitcond2_fu_254_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_12_reg_487 <= i_12_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_cond_fu_291_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_254_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_140_reg_531 <= tmp_140_fu_296_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_201_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_154_reg_492(12 downto 3) <= tmp_154_fu_242_p2(12 downto 3);
                tmp_155_reg_502 <= grp_fu_458_p3;
                tmp_s_reg_497 <= tmp_s_fu_248_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    tmp_164_cast_reg_478(9 downto 3) <= tmp_164_cast_fu_193_p1(9 downto 3);
            end if;
        end if;
    end process;
    tmp_164_cast_reg_478(2 downto 0) <= "000";
    tmp_154_reg_492(2 downto 0) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_fu_201_p2, ap_CS_fsm_state2, exitcond2_fu_254_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond2_fu_254_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond2_fu_254_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    LineBuffer_val_1_V_address0 <= tmp_138_fu_266_p1(5 - 1 downto 0);

    LineBuffer_val_1_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            LineBuffer_val_1_V_ce0 <= ap_const_logic_1;
        else 
            LineBuffer_val_1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    LineBuffer_val_1_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            LineBuffer_val_1_V_ce1 <= ap_const_logic_1;
        else 
            LineBuffer_val_1_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    LineBuffer_val_1_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            LineBuffer_val_1_V_we1 <= ap_const_logic_1;
        else 
            LineBuffer_val_1_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(exitcond2_fu_254_p2)
    begin
        if ((exitcond2_fu_254_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, exitcond_fu_201_p2, ap_CS_fsm_state2)
    begin
        if ((((exitcond_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(exitcond_fu_201_p2, ap_CS_fsm_state2)
    begin
        if (((exitcond_fu_201_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dst_val_V_address0 <= tmp_175_cast_fu_443_p1(10 - 1 downto 0);

    dst_val_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dst_val_V_ce0 <= ap_const_logic_1;
        else 
            dst_val_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_val_V_d0 <= p_Val2_76_1_1_fu_418_p2(47 downto 16);

    dst_val_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, or_cond_reg_527, ap_enable_reg_pp0_iter1)
    begin
        if (((or_cond_reg_527 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dst_val_V_we0 <= ap_const_logic_1;
        else 
            dst_val_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond2_fu_254_p2 <= "1" when (j_reg_152 = ap_const_lv5_18) else "0";
    exitcond_fu_201_p2 <= "1" when (i_reg_141 = ap_const_lv5_18) else "0";
    grp_fu_458_p0 <= ap_const_lv6_3F(1 - 1 downto 0);
    grp_fu_458_p1 <= grp_fu_458_p10(5 - 1 downto 0);
    grp_fu_458_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_141),6));
    i_12_fu_207_p2 <= std_logic_vector(unsigned(i_reg_141) + unsigned(ap_const_lv5_1));
    j_10_fu_260_p2 <= std_logic_vector(unsigned(j_reg_152) + unsigned(ap_const_lv5_1));
    or_cond_fu_291_p2 <= (tmp_s_reg_497 and tmp_139_fu_285_p2);
    p_Val2_75_0_1_fu_308_p3 <= (LineBuffer_val_1_V_q0 & ap_const_lv14_0);
    p_Val2_75_1_1_fu_388_p3 <= (src_val_V_q0 & ap_const_lv14_0);
    p_Val2_75_1_fu_358_p3 <= (BlockBuffer_val_1_V_fu_84 & ap_const_lv14_0);
    p_Val2_76_0_1_fu_342_p2 <= std_logic_vector(signed(tmp_4373_0_1_cast_ca_fu_338_p1) + signed(tmp_436_0_1_cast_cas_fu_334_p1));
    p_Val2_76_1_1_fu_418_p2 <= std_logic_vector(signed(tmp_4373_1_1_cast_fu_414_p1) + signed(tmp_436_1_1_fu_406_p3));
    p_Val2_76_1_fu_382_p2 <= std_logic_vector(signed(tmp_4373_1_cast_fu_378_p1) + signed(tmp_436_1_fu_374_p1));
    p_shl1_cast_fu_183_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_151_fu_175_p3),9));
    p_shl2_cast_fu_226_p3 <= (tmp_fu_222_p1 & ap_const_lv5_0);
    p_shl3_cast_fu_234_p3 <= (tmp_153_fu_217_p2 & ap_const_lv3_0);
    p_shl_cast_fu_171_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_150_fu_163_p3),9));
    src_val_V_address0 <= tmp_171_cast_fu_280_p1(12 - 1 downto 0);

    src_val_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_val_V_ce0 <= ap_const_logic_1;
        else 
            src_val_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_138_cast_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_152),13));
    tmp_138_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_152),64));
    tmp_139_fu_285_p2 <= "0" when (j_reg_152 = ap_const_lv5_0) else "1";
    tmp_140_fu_296_p2 <= std_logic_vector(unsigned(j_reg_152) + unsigned(ap_const_lv5_1F));
    tmp_141_cast_fu_435_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_140_reg_531),11));
    tmp_150_fu_163_p3 <= (src_val_V_offset & ap_const_lv5_0);
    tmp_151_fu_175_p3 <= (src_val_V_offset & ap_const_lv3_0);
    tmp_152_fu_187_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_171_p1) - unsigned(p_shl1_cast_fu_183_p1));
    tmp_153_fu_217_p2 <= std_logic_vector(unsigned(tmp_cast_fu_213_p1) + unsigned(tmp_164_cast_reg_478));
    tmp_154_fu_242_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_226_p3) - unsigned(p_shl3_cast_fu_234_p3));
    tmp_156_fu_275_p2 <= std_logic_vector(unsigned(tmp_154_reg_492) + unsigned(tmp_138_cast_fu_271_p1));
    tmp_157_fu_316_p4 <= BlockBuffer_val_0_V_fu_80(31 downto 2);
    tmp_158_fu_366_p3 <= (tmp_73_fu_348_p4 & ap_const_lv16_0);
    tmp_159_fu_396_p4 <= p_Val2_76_1_fu_382_p2(47 downto 16);
    tmp_160_fu_438_p2 <= std_logic_vector(signed(tmp_155_reg_502) + signed(tmp_141_cast_fu_435_p1));
        tmp_164_cast_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_152_fu_187_p2),10));

    tmp_171_cast_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_156_fu_275_p2),64));
        tmp_175_cast_fu_443_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_160_fu_438_p2),64));

        tmp_436_0_1_cast_cas_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_436_0_1_fu_326_p3),47));

    tmp_436_0_1_fu_326_p3 <= (tmp_157_fu_316_p4 & ap_const_lv16_0);
    tmp_436_1_1_fu_406_p3 <= (tmp_159_fu_396_p4 & ap_const_lv16_0);
        tmp_436_1_fu_374_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_158_fu_366_p3),48));

        tmp_4373_0_1_cast_ca_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_75_0_1_fu_308_p3),47));

        tmp_4373_1_1_cast_fu_414_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_75_1_1_fu_388_p3),48));

        tmp_4373_1_cast_fu_378_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_75_1_fu_358_p3),48));

    tmp_73_fu_348_p4 <= p_Val2_76_0_1_fu_342_p2(46 downto 16);
    tmp_cast_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_141),10));
    tmp_fu_222_p1 <= tmp_153_fu_217_p2(8 - 1 downto 0);
    tmp_s_fu_248_p2 <= "0" when (i_reg_141 = ap_const_lv5_0) else "1";
end behav;