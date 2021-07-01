//a T flipflop designed to toggle at negative edge of 1

primitive TFF (q, clk, clr);
    input clk, clr;
    output reg q;

    table
        clk clr :   q   :   q_new
        ?   1   :   ?   :   0;
        ?   (10):   ?   :   -;
        (10) 0  :   1   :   0;
        (10) 0  :   0   :   1;
        (0?) 0  :   ?   :   -; //ignoring any kind of positive edge       
    endtable
endprimitive