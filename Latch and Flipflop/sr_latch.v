//sr_latch.v
//using nand gates

module sr_latch (
    Q, Qbar, S, R
);

    input S, R;
    output Q, Qbar;

    assign Q = ~(Qbar & R);
    assign Qbar = ~(Q & S);
    
endmodule