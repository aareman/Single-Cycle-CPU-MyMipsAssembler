library verilog;
use verilog.vl_types.all;
entity Instruction_man_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        INPUT           : in     vl_logic_vector(7 downto 0);
        INrange         : in     vl_logic_vector(1 downto 0);
        \NEXT\          : in     vl_logic;
        WRE             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Instruction_man_vlg_sample_tst;
