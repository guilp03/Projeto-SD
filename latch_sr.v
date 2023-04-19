module latch_sr(input S, input R, 
                input clk, output reg Q);

always @(posedge clk) begin
    if (S && !R) //Set
        Q <= 1'b1;
    else if (R && !S) //Reset
        Q <= 1'b0;
end
endmodule
