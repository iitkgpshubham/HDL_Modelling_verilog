//D_flipflop_DUT.v
//testbench

module test_Dflop;

    reg d, set, reset, clk;
    wire q, qbar;
    dflop DUT(q, qbar, d, set, reset, clk);

    initial begin
        clk = 1'b0;
        forever
            #5 clk = ~clk;
    end

    initial begin
        $dumpfile("Dflop.vcd");
        $dumpvars(0, test_Dflop);
            d = 0; set = 1; reset = 1;
        #2 d = 1;
        #5 d= 0;
        #15 d = 1;
        #25 reset = 0;
        #35 d = 0; set = 0; reset = 1;
        #45 $finish;
    end
    
endmodule