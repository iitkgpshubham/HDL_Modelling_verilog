//D_flipflop_version1.v
//D flipflop with synchronous set and reset

module dflop (
    q, qbar,
    d, set, reset, clk
);

    output reg q; output qbar;
    input d, set, reset, clk;

    assign qbar = ~q;

    always @(posedge clk) begin
        if(reset == 0)  q <= 0;
        else if (set == 0) q <= 1;
        else q <= d;
    end
    
endmodule