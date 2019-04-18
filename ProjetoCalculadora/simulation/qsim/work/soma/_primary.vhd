library verilog;
use verilog.vl_types.all;
entity soma is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Ci              : in     vl_logic;
        Co              : out    vl_logic;
        saida           : out    vl_logic_vector(3 downto 0)
    );
end soma;
