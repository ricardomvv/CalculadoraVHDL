library verilog;
use verilog.vl_types.all;
entity soma_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Ci              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end soma_vlg_sample_tst;
