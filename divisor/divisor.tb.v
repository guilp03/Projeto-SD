`timescale 1ns/1ps

module test_divisor;
   reg clk;
   wire clkf;

   divisor dut(clk,clkf);
  
  initial
    begin

        $dumpfile("divisor_teste.vcd");
        $dumpvars(0, test_divisor);
            #1 clk = 1'b0;

            repeat(200)
                #1 clk = ~clk;
    end


endmodule