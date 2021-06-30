//mux16to1_version1.v
//Learning puurpose
//Behavioral model of 16-to-1 MUX.

module mux16to1_version1 (
    in,
    sel, 
    out
);
    input [15 : 0] in;
    input [3 : 0] sel;
    output out;

    assign out = in[sel];
endmodule