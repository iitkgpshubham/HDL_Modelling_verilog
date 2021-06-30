//mux2to1_version2.v
//structural gate model
module mux2to1 (
    in, 
    sel,
    out
);
    input [1 : 0] in;
    input sel;
    output out;

    wire t1, t2 , t3;

    not G1 (t1, sel);
    and G2 (t2, in[0], t1);
    and G3 (t3, in[1], sel);
    or G4 (out, t2, t3);

endmodule