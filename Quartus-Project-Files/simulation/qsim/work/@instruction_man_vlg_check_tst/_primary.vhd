library verilog;
use verilog.vl_types.all;
entity Instruction_man_vlg_check_tst is
    port(
        a               : in     vl_logic_vector(6 downto 0);
        answer          : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(6 downto 0);
        c               : in     vl_logic_vector(6 downto 0);
        ControlSIG      : in     vl_logic;
        d               : in     vl_logic_vector(6 downto 0);
        e               : in     vl_logic_vector(6 downto 0);
        f               : in     vl_logic_vector(6 downto 0);
        FUNC            : in     vl_logic_vector(5 downto 0);
        g               : in     vl_logic_vector(6 downto 0);
        h               : in     vl_logic_vector(6 downto 0);
        Icomplete       : in     vl_logic_vector(31 downto 0);
        OP              : in     vl_logic_vector(5 downto 0);
        RD              : in     vl_logic_vector(4 downto 0);
        RS              : in     vl_logic_vector(4 downto 0);
        RT              : in     vl_logic_vector(4 downto 0);
        SHAMT           : in     vl_logic_vector(4 downto 0);
        TRUE            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Instruction_man_vlg_check_tst;
