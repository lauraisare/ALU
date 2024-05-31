library verilog;
use verilog.vl_types.all;
entity ALU_test_vlg_check_tst is
    port(
        display_b1      : in     vl_logic_vector(6 downto 0);
        display_b2      : in     vl_logic_vector(6 downto 0);
        display_result1 : in     vl_logic_vector(6 downto 0);
        display_result2 : in     vl_logic_vector(6 downto 0);
        NZVC            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_test_vlg_check_tst;
