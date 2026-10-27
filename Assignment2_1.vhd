library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--entity
entity Assignment2_1 is
    port (
        a, b, c, d : in std_logic;
        and_out, or_out : out std_logic
    );
end entity Assignment2_1;

--architecture
architecture bhv of Assignment2_1 is
begin
    and_out <= a and b and c and d;
    or_out  <= a or b or c or d;
end architecture bhv;
