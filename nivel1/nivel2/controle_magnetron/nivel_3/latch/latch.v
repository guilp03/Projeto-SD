module latch_sr(input S, input R, 
                output reg Q);

always@*
    if (S && !R) //Set
        Q <= 1'b1;
    else if (R && !S) //Reset
        Q <= 1'b0;

endmodule