library verilog;
use verilog.vl_types.all;
entity decoBCD_vlg_sample_tst is
    port(
        IA              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end decoBCD_vlg_sample_tst;
