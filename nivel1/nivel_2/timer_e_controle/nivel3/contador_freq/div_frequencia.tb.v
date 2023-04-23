`timescale 1ns/1ps


module divisor_teste;
   reg clk;
   wire clkf;

   divisor dut(clk, clkf);
  
  initial
    begin

        $dumpfile("divisor_teste.vcd");
        $dumpvars(0, divisor_teste);
            #1 clk = 1'b0;

            repeat(200)
                #1 clk = ~clk;
    end


endmodule