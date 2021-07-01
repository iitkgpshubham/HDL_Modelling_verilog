//16bit_adder_version1.v
//behavioural modelling

module adder_16bit (
    X, Y, Z, 
    sign, zero, carry, parity, overflow
);

    input [15 : 0] X, Y;
    output [15 : 0] Z;
    output sign, zero, carry, parity, overflow;
    
    assign {carry, Z} = X + Y;
    assign sign = Z[15];
    assign parity = ~(^Z);
    assign zero = ~(|Z);
    assign overflow = (X[15] & Y[15] & ~Z[15]) | (~X[15] & ~Y[15] & Z[15]);

endmodule