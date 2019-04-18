library verilog;
use verilog.vl_types.all;
entity subtracao is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        Bi              : in     vl_logic;
        Bo              : out    vl_logic;
        Dif             : out    vl_logic_vector(3 downto 0)
    );
end subtracao;
