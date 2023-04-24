`timescale 1ns/1ps

module test_latch;

    reg S, R;
    wire Q;

    latch_sr DUT(S, R, Q);

    initial begin
        $dumpfile("latch_teste.vcd");
        $dumpvars(0,test_latch);
            #10 S = 0; R = 0;

            #10 S = 0; R = 0; 

            #10 S = 0; R = 1; 

            #10 S = 0; R = 1;

            #10 S = 0; R = 0;

            #10 S = 0; R = 0;

            #10 S = 1; R = 0; 

            #10 S = 1; R = 0;

            #10 S = 0; R = 0;

            #10 S = 0; R = 0;

            #10 S = 1; R = 1;

            #10 S = 1; R = 1;

            #10 S = 0; R = 0; 

            #10 S = 0; R = 0;

            #10;
    end
endmodule