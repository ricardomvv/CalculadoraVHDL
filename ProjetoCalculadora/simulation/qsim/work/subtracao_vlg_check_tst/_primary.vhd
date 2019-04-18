library verilog;
use verilog.vl_types.all;
entity subtracao_vlg_check_tst is
    port(
        Bo              : in     vl_logic;
        Dif             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end subtracao_vlg_check_tst;
