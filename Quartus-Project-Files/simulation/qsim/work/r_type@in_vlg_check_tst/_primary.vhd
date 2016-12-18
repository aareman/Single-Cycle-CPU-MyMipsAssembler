library verilog;
use verilog.vl_types.all;
entity r_typeIn_vlg_check_tst is
    port(
        func            : in     vl_logic_vector(5 downto 0);
        Instruction     : in     vl_logic_vector(15 downto 0);
        op              : in     vl_logic_vector(5 downto 0);
        outie           : in     vl_logic_vector(31 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end r_typeIn_vlg_check_tst;
