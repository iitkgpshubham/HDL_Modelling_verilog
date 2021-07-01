//4bit_adder_version2.v
//structural modelling

module adder_4bit (
    S, c_out,
    A, B, c_in
);

    input [3 : 0] A, B;
    input c_in;
    output [3 : 0] S;
    output c_out;

    wire c1, c2, c3;

    fulladder fa0 (S[0], c1, A[0], B[0], c_in);
    fulladder fa1 (S[1], c2, A[1], B[1], c1);
    fulladder fa2 (S[2], c3, A[2], B[2], c2);
    fulladder fa3 (S[3], c_out, A[3], B[3], c3);

endmodule