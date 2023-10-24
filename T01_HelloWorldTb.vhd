entity T01_HelloWorldTb is
end entity T01_HelloWorldTb;

architecture sim of T01_HelloWorldTb is
begin
    
    process is
    begin

        report "Hello World";
        wait;
        
    end process;

end architecture T01_HelloWorldTb;