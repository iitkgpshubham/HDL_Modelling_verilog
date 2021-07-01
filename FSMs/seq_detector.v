//seq_dectector.v
//A sequence detector for pattern "0110"

module seq_detector (
    x, clk, reset, z
);
    input x, clk, reset;
    output reg z;

    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3; //states
    reg [0 : 1] pstate, nstate;

    always @(posedge clk or posedge reset)
        if(reset)   pstate <= S0;
        else    pstate <= nstate;

    always @(pstate ,x) begin
        case (pstate)
            S0 : begin
                z = 0;
                nstate = x ? S0 : S1;
            end

            S1 : begin
                z = 0;
                nstate = x ? S2 : S1;
            end

            S2 : begin
                z = 0;
                nstate = x ? S3 : S1;
            end

            S3  : begin
                z = x ? 0 : 1;
                nstate = x ? S0 : S1;
            end

        endcase
    end


endmodule