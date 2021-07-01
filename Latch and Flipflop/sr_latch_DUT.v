//sr_latch_DUT.v
//testbench for sr latch
//look for simlator hang 
//sequential logic uusing assign statement, continuos assignment

module sr_latch_DUT;

    reg S, R;
    wire Q, Qbar;

    sr_latch DUT(Q, Qbar, S, R);
    
    initial begin
        $monitor($time, " S = %b, R = %b, Q = %b, Q_bar = %b", S, R, Q, Qbar);

            S = 1'b0;   R = 1'b1;
        #5 S = 1'b1;    R = 1'b1;
        #5 S = 1'b1;    R = 1'b0;
        #5 S = 1'b1;    R = 1'b1;
        #5 S = 1'b0;    R = 1'b0; //<-----INVALID state simulator hangs
        #5 S = 1'b1;    R = 1'b1;
    end
endmodule