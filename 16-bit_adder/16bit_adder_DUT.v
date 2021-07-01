//16bit_adder_DUT.v
//testbench for our adder

module testadder;

    reg [15 : 0] X, Y;
    wire [15 : 0] Z;
    wire s, zr, cy, v, p;

    adder_16bit DUT(
        X, Y, Z,
        s, zr, cy, p, v
    );

    initial begin
        $dumpfile("adder.vcd");
        $dumpvars(0, testadder);
        $monitor($time, " X = %h, Y = %h, Z = %h, S = %b, Z = %b, Cy = %b, P = %b, V = %b", X, Y, Z, s, zr, cy, p, v);

        #5 X = 16'h8fff;
            Y = 16'h8000;
        #5 X = 16'hfffe;
            Y = 16'h0002;
        #5 X = 16'hAAAA;
            Y = 16'h5555;
        #5 $finish;
    end
    
endmodule