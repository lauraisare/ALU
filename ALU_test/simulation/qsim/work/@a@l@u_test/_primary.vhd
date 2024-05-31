library verilog;
use verilog.vl_types.all;
entity ALU_test is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        ALU_Sel         : in     vl_logic_vector(2 downto 0);
        NZVC            : out    vl_logic_vector(3 downto 0);
        display_result1 : out    vl_logic_vector(6 downto 0);
        display_result2 : out    vl_logic_vector(6 downto 0);
        display_b1      : out    vl_logic_vector(6 downto 0);
        display_b2      : out    vl_logic_vector(6 downto 0)
    );
end ALU_test;
