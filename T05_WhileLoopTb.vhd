entity T05_WhileLoopTb is
end entity T05_WhileLoopTb;

architecture sim of T05_WhileLoopTb is
begin
    
    process is
        -- This is a 32 bit integer, aparrently on newer versions of VHDL, integer variables are 64 bit.
        -- integer variables will overflow like in C.
        -- The scope of a variable is only in the process in which it was declared.
        variable i : integer := 0;
    begin

        -- The while loop will test this expression before each iteration.
        while i < 10 loop
            report "i=" & integer'image(i);
            i := i + 2;
        end loop;
        wait;

    end process;

end architecture T05_WhileLoopTb;