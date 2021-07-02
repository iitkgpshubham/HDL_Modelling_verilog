//datapath

module GCD_datapath (
    gt, lt, eq, ldA, ldB, sel1, sel2, sel_in, data_in, clk
);
    input ldA, ldB, sel1, sel2, sel_in, clk;
    input [15 : 0] data_in;
    output gt, lt, eq;

    wire [15 : 0] A_out, B_out, X, Y, bus, sub_out;

    pipo A(A_out, bus, ldA, clk);
    pipo B(B_out, bus, ldB, clk);
    mux MUX_in1(X, A_out, B_out, sel1);
    mux MUX_in2(Y, A_out, B_out, sel2);
    mux MUX_load (bus, sub_out, data_in, sel_in);
    sub SB(sub_out, X, Y);
    comp CMP(lt, gt, eq, A_out, B_out);
    
endmodule