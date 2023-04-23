`timescale 1ns/1ps

module timer_nivel2_teste;
    wire[3:0] so, st, min;
    wire zero;
    reg [3:0]  data;
    reg clearn, enable, loadn, clk;

    timer_nivel2 dut(data, enable, clk, load,
                  clearn, zero, so, st, min);

    initial begin
        $dumpfile("timer_nivel2_teste.vcd");
        $dumpvars(0,timer_nivel2_teste);
        clk  = 1'b0;
        enable = 1'b0; 
        loadn  = 1'b0;
    end

    always begin
        #1 clk = loadn? ~clk : clk;
    end

    initial begin    

        clearn = 1'b1; #0.5
        clearn = 1'b0; #0.5
        clearn = 1'b1; #0.5

        data =  2;   #0.04;
        clk = 1'b1;   #0.01;
        clk = 1'b0;   #0.95;

        data =  1;   #0.04;
        clk = 1'b1;   #0.01;
        clk = 1'b0;   #0.95;

        data =  7;   #0.04;
        clk = 1'b1;   #0.01;
        clk = 1'b0;   #0.95;

        data =  9;   #0.04;
        clk = 1'b1;   #0.01;
        clk = 1'b0;   #0.95;

        enable = 1; loadn = 1; #1000;

        $finish();
    end
endmodule