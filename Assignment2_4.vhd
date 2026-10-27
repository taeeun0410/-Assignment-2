library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Assignment2_4 is
    port (
        vote   : in std_logic_vector(24 downto 0);
        result : out std_logic
    );
end entity Assignment2_4;

architecture bhv of Assignment2_4 is
begin
    process(vote)
        variable count : integer range 0 to 25;
    begin
        count := 0;

        for i in 0 to 24 loop
            if vote(i) = '1' then
                count := count + 1;
            end if;
        end loop;

        if count >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end architecture bhv;