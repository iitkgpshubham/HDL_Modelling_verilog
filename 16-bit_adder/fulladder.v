//fulladder.v
//structural gate level modelling

module fulladder (
    s, c_out,
    a, b, c_in
);

    input a, b, c_in;
    output s, c_out;
    wire s1, c1, c2;

    xor g1(s1, a, b), g2(s, s1, c_in);
    and g3(c1, a, b), g4(c2, s1, c_in);
    or g5(c_out, c1, c2);
    
endmodule