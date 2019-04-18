library verilog;
use verilog.vl_types.all;
entity subtracao_vlg_sample_tst is
    port(
        Bi              : in     vl_logic;
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end subtracao_vlg_sample_tst;
