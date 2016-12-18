library verilog;
use verilog.vl_types.all;
entity Instruction_man is
    port(
        ControlSIG      : out    vl_logic;
        CLK             : in     vl_logic;
        \NEXT\          : in     vl_logic;
        WRE             : in     vl_logic;
        INPUT           : in     vl_logic_vector(7 downto 0);
        INrange         : in     vl_logic_vector(1 downto 0);
        TRUE            : out    vl_logic;
        a               : out    vl_logic_vector(6 downto 0);
        answer          : out    vl_logic_vector(31 downto 0);
        b               : out    vl_logic_vector(6 downto 0);
        c               : out    vl_logic_vector(6 downto 0);
        d               : out    vl_logic_vector(6 downto 0);
        e               : out    vl_logic_vector(6 downto 0);
        f               : out    vl_logic_vector(6 downto 0);
        FUNC            : out    vl_logic_vector(5 downto 0);
        g               : out    vl_logic_vector(6 downto 0);
        h               : out    vl_logic_vector(6 downto 0);
        Icomplete       : out    vl_logic_vector(31 downto 0);
        OP              : out    vl_logic_vector(5 downto 0);
        RD              : out    vl_logic_vector(4 downto 0);
        RS              : out    vl_logic_vector(4 downto 0);
        RT              : out    vl_logic_vector(4 downto 0);
        SHAMT           : out    vl_logic_vector(4 downto 0);
        ENABLE          : in     vl_logic
    );
end Instruction_man;
