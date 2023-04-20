module divisor(input clk,
            output reg clkf);
  reg [5:0] a = 6'b000000;
  initial clkf = 1'b0;
  
  always@(posedge clk)
    begin
      a = a + 1'b1;
      
      if(a >= 50)
        begin
          a = 6'b000000;
          clkf = ~clkf;
        end
    end
endmodule