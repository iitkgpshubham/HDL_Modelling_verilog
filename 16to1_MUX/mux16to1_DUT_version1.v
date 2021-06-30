//mux16to1_DUT_version1.v
//testbench for my design of 16to1 MUX

module mux16to1_DUT_version1;

    reg [15 : 0] A;
    reg [3 : 0] S;
    wire F;

    mux16to1_version1 DUT_M (.in(A), .sel(S), .out(F));

    initial 
        begin
            $dumpfile ("mux16to1_version1.vcd");
            $dumpvars (0, mux16to1_DUT_version1);
            $monitor ($time, " A=%h, S=%h, F=%b", A, S, F);

            #5 A = 16'h3f0a;
                S = 4'h0;
            #5 S = 4'h1;
            #5 S = 4'h6;
            #5 S = 4'hc;
            #5 $finish;
        end
    
endmodule