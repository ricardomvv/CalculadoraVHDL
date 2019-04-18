library verilog;
use verilog.vl_types.all;
entity maior is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic
    );
end maior;
