library verilog;
use verilog.vl_types.all;
entity r_typeIn is
    port(
        func            : out    vl_logic_vector(5 downto 0);
        ENABLE          : in     vl_logic;
        CLK             : in     vl_logic;
        INPUT           : in     vl_logic_vector(7 downto 0);
        \RANGE\         : in     vl_logic_vector(1 downto 0);
        Instruction     : out    vl_logic_vector(15 downto 0);
        op              : out    vl_logic_vector(5 downto 0);
        outie           : out    vl_logic_vector(31 downto 0);
        rd              : out    vl_logic_vector(4 downto 0);
        rs              : out    vl_logic_vector(4 downto 0);
        rt              : out    vl_logic_vector(4 downto 0);
        shamt           : out    vl_logic_vector(4 downto 0)
    );
end r_typeIn;
