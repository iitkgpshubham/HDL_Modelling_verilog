//mux4to1_version1.v
//behaviral model of 4 to 1 mux

module mux4to1 (
    in, 
    sel,
    out
);
    input [3:0] in;
    input [1:0] sel;
    output out;

    assign out = in[sel];
endmodule