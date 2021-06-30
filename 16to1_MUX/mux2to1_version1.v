//mux2to1_version1.v
//behavioral model of 2 to 1

module mux2to1 (
    in, 
    sel, 
    out
);
    input [1 : 0] in;
    input sel;
    output out;

    assign out = in[sel];
endmodule