library verilog;
use verilog.vl_types.all;
entity topLevel is
    port(
        RightInput      : in     vl_logic;
        LeftInput       : in     vl_logic;
        GClock          : in     vl_logic;
        GReset          : in     vl_logic;
        DisplayOut      : out    vl_logic_vector(7 downto 0)
    );
end topLevel;
