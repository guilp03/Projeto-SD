`timescale 1ns/1ps

module test_timernvl2;

    reg [9:0] key;
    reg enablen;
    reg clk100;
    wire [3:0] D;
    wire loadn;
    wire pgt_1Hz;

    timer_controle dut(key, enablen, clk100, D, loadn, pgt_1Hz);

    initial begin
        $dumpfile("entrada_time_nivel2_teste.vcd");
        $dumpvars(0, test_timernvl2);

            #1 key = 10'b1000000000;
            clk100 = 1;
            enablen = 0;
            repeat(201)
                #1 clk100 = ~clk100;
            
            #1 key = 10'b0100000000;
            clk100 = 1;
            repeat(201)
                #1 clk100 = ~clk100;

            #1 key = 10'b100000000;
            clk100 = 1;
            enablen = 1;
            repeat(201)
                #1 clk100 = ~clk100;

            enablen = 0;
            repeat(201)
                #1 clk100 = ~clk100;
            
    end
endmodule