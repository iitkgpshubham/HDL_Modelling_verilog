//4bit_adder_version1.v
//behavioural model

module adder_4bit (
    S, c_out,
    A, B, c_in
);

    input [3 : 0] A, B;
    input c_in;
    output [3 : 0] S;
    output c_out;

    assign {c_out, S} = A + B + c_in;
    
endmodule