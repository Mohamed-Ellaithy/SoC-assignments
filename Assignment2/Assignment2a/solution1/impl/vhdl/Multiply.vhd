-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Multiply is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    res_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    res_ce0 : OUT STD_LOGIC;
    res_we0 : OUT STD_LOGIC;
    res_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    res_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Multiply is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "Multiply,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7z010clg225-1i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=322,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=145,HLS_SYN_LUT=346,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_2_fu_138_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_2_reg_293 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_cast_fu_152_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_cast_reg_298 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond4_fu_132_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_2_fu_162_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_3_fu_188_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_3_reg_314 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_4_cast_fu_202_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_4_cast_reg_319 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond2_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_3_fu_212_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_3_reg_328 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_6_cast_fu_218_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_6_cast_reg_333 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond1_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_addr_1_reg_338 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_1_fu_238_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_1_reg_346 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal exitcond_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal A_load_reg_361 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal B_load_reg_366 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_fu_280_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_reg_371 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal i_reg_77 : STD_LOGIC_VECTOR (2 downto 0);
    signal exitcond3_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_reg_88 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_99 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_1_reg_110 : STD_LOGIC_VECTOR (2 downto 0);
    signal k_reg_121 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_5_cast_fu_177_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_cast_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_cast_fu_253_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_cast_fu_275_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_284_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_144_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_3_cast_fu_168_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_fu_172_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_fu_194_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_7_fu_222_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_8_cast_fu_244_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_fu_248_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_258_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_12_cast_fu_266_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_4_fu_270_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


begin




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


    i_1_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_1_reg_99 <= ap_const_lv3_0;
            elsif (((exitcond1_fu_206_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i_1_reg_99 <= i_3_reg_314;
            end if; 
        end if;
    end process;

    i_reg_77_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_156_p2 = ap_const_lv1_1))) then 
                i_reg_77 <= i_2_reg_293;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_77 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_1_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond_fu_232_p2 = ap_const_lv1_1))) then 
                j_1_reg_110 <= j_3_reg_328;
            elsif (((exitcond2_fu_182_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                j_1_reg_110 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_reg_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_88 <= ap_const_lv3_0;
            elsif (((exitcond3_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                j_reg_88 <= j_2_fu_162_p2;
            end if; 
        end if;
    end process;

    k_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_206_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                k_reg_121 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                k_reg_121 <= k_1_reg_346;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                A_load_reg_361 <= A_q0;
                B_load_reg_366 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_2_reg_293 <= i_2_fu_138_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_3_reg_314 <= i_3_fu_188_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                j_3_reg_328 <= j_3_fu_212_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                k_1_reg_346 <= k_1_fu_238_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_206_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                res_addr_1_reg_338 <= tmp_7_cast_fu_227_p1(4 - 1 downto 0);
                    tmp_6_cast_reg_333(2 downto 0) <= tmp_6_cast_fu_218_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_fu_132_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    tmp_1_cast_reg_298(4 downto 2) <= tmp_1_cast_fu_152_p1(4 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_182_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    tmp_4_cast_reg_319(4 downto 2) <= tmp_4_cast_fu_202_p1(4 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_9_reg_371 <= tmp_9_fu_280_p2;
            end if;
        end if;
    end process;
    tmp_1_cast_reg_298(1 downto 0) <= "00";
    tmp_1_cast_reg_298(5) <= '0';
    tmp_4_cast_reg_319(1 downto 0) <= "00";
    tmp_4_cast_reg_319(5) <= '0';
    tmp_6_cast_reg_333(5 downto 3) <= "000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond4_fu_132_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, exitcond2_fu_182_p2, ap_CS_fsm_state5, exitcond1_fu_206_p2, ap_CS_fsm_state6, exitcond_fu_232_p2, exitcond3_fu_156_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond4_fu_132_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond3_fu_156_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond2_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((exitcond1_fu_206_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond_fu_232_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    A_address0 <= tmp_10_cast_fu_253_p1(4 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= tmp_13_cast_fu_275_p1(4 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state4, exitcond2_fu_182_p2)
    begin
        if (((exitcond2_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4, exitcond2_fu_182_p2)
    begin
        if (((exitcond2_fu_182_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_206_p2 <= "1" when (j_1_reg_110 = ap_const_lv3_4) else "0";
    exitcond2_fu_182_p2 <= "1" when (i_1_reg_99 = ap_const_lv3_4) else "0";
    exitcond3_fu_156_p2 <= "1" when (j_reg_88 = ap_const_lv3_4) else "0";
    exitcond4_fu_132_p2 <= "1" when (i_reg_77 = ap_const_lv3_4) else "0";
    exitcond_fu_232_p2 <= "1" when (k_reg_121 = ap_const_lv3_4) else "0";
    i_2_fu_138_p2 <= std_logic_vector(unsigned(i_reg_77) + unsigned(ap_const_lv3_1));
    i_3_fu_188_p2 <= std_logic_vector(unsigned(i_1_reg_99) + unsigned(ap_const_lv3_1));
    j_2_fu_162_p2 <= std_logic_vector(unsigned(j_reg_88) + unsigned(ap_const_lv3_1));
    j_3_fu_212_p2 <= std_logic_vector(unsigned(j_1_reg_110) + unsigned(ap_const_lv3_1));
    k_1_fu_238_p2 <= std_logic_vector(unsigned(k_reg_121) + unsigned(ap_const_lv3_1));

    res_address0_assign_proc : process(ap_CS_fsm_state3, res_addr_1_reg_338, ap_CS_fsm_state8, ap_CS_fsm_state9, tmp_5_cast_fu_177_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            res_address0 <= res_addr_1_reg_338;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            res_address0 <= tmp_5_cast_fu_177_p1(4 - 1 downto 0);
        else 
            res_address0 <= "XXXX";
        end if; 
    end process;


    res_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state8, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            res_ce0 <= ap_const_logic_1;
        else 
            res_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    res_d0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state9, tmp_s_fu_284_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            res_d0 <= tmp_s_fu_284_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            res_d0 <= ap_const_lv32_0;
        else 
            res_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    res_we0_assign_proc : process(ap_CS_fsm_state3, exitcond3_fu_156_p2, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or ((exitcond3_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            res_we0 <= ap_const_logic_1;
        else 
            res_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_cast_fu_253_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_248_p2),64));
    tmp_12_cast_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_258_p3),6));
    tmp_13_cast_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_270_p2),64));
    tmp_1_cast_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_144_p3),6));
    tmp_1_fu_248_p2 <= std_logic_vector(unsigned(tmp_8_cast_fu_244_p1) + unsigned(tmp_4_cast_reg_319));
    tmp_2_fu_194_p3 <= (i_1_reg_99 & ap_const_lv2_0);
    tmp_3_cast_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_88),6));
    tmp_3_fu_258_p3 <= (k_reg_121 & ap_const_lv2_0);
    tmp_4_cast_fu_202_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_194_p3),6));
    tmp_4_fu_270_p2 <= std_logic_vector(unsigned(tmp_6_cast_reg_333) + unsigned(tmp_12_cast_fu_266_p1));
    tmp_5_cast_fu_177_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_172_p2),64));
    tmp_5_fu_172_p2 <= std_logic_vector(unsigned(tmp_1_cast_reg_298) + unsigned(tmp_3_cast_fu_168_p1));
    tmp_6_cast_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_1_reg_110),6));
    tmp_7_cast_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_222_p2),64));
    tmp_7_fu_222_p2 <= std_logic_vector(unsigned(tmp_4_cast_reg_319) + unsigned(tmp_6_cast_fu_218_p1));
    tmp_8_cast_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_121),6));
    tmp_9_fu_280_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(A_load_reg_361) * signed(B_load_reg_366))), 32));
    tmp_fu_144_p3 <= (i_reg_77 & ap_const_lv2_0);
    tmp_s_fu_284_p2 <= std_logic_vector(unsigned(res_q0) + unsigned(tmp_9_reg_371));
end behav;
