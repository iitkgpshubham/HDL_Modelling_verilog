//and_DUT.v

module andDUT;

    reg a, b, c, d;
    wire f;
    udp_and4(f, a, b, c, d);

    initial begin
        $monitor($time, "a = %b, b = %b, c = %b, d = %b, f = %b", a, b, c, d, f);
        for(integer i = 0; i < 16; i = i + 1) begin
            #5 {a, b, c, d} = i;
        end
    end
    
endmodule