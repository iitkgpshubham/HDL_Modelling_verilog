// The data path design for multiplication by repeated addition
module MUL_datapath (eqz, ldA, ldB, ldP, clrP, decB, data_in, clk);

    input ldA, ldB, ldP, clrP, decB, clk;
    input [15 : 0] data_in;
    output eqz;

    wire [15 : 0] X, Y, Z, bus, B_out;

    assign bus = data_in;

    pipo1 A (X, bus, ldA, clk);
    pipo2 P (Y, Z, ldP, clrP, clk);
    cntr B (B_out, bus, ldB, decB, clk);
    add AD(Z, X, Y);
    eq COMP(eqz, B_out);
endmodule
