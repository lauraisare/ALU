library verilog;
use verilog.vl_types.all;
entity decoBCD is
    port(
        IA              : in     vl_logic_vector(3 downto 0);
        F               : out    vl_logic_vector(6 downto 0)
    );
end decoBCD;
