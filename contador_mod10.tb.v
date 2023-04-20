module test_Contador_mod10;
   reg clk; 
   reg reset;
   reg enable;

   wire [3:0] count;


   Contador_mod10 dut(clk, reset, enable, count);

   initial begin
        $dumpfile("Contador_mod10.vcd");
        $dumpvars(0, test_Contador_mod10);

        clk = 0; reset = 0; enable =0 ;#10;
        clk = 1; reset = 1; enable =0 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 1; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;
        clk = 1; reset = 0; enable =1 ;#10;
        clk = 0; reset = 0; enable =1 ;#10;


   end
 

endmodule