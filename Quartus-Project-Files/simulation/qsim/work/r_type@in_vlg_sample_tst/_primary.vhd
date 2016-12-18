library verilog;
use verilog.vl_types.all;
entity r_typeIn_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        ENABLE          : in     vl_logic;
        INPUT           : in     vl_logic_vector(7 downto 0);
        \RANGE\         : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end r_typeIn_vlg_sample_tst;
