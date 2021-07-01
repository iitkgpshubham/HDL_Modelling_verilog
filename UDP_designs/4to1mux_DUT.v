//4to1mux_DUT.v
//testbench

module test_mux;

    reg s0, s1, i0, i1, i2, i3;
    wire f;
    udp_mux4to1(f, s0, s1, i0, i1, i2, i3);
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, test_mux);
        {i3, i2, i1, i0} = 4'b1010;
        s1 = 0; s0 = 0;
        #5 s1 = 0; s0 = 1; $display("%b", f);
        #5 s1 = 1; s0 = 0; $display("%b", f);
        #5 s1 = 1; s0 = 1; $display("%b", f);

        #5 $display("%b", f); $finish;
    end
    
endmodule