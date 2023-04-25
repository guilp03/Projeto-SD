`timescale 1ns/1ns

module test_decoder;

    reg [3:0] min, dSec, sec;
  	wire [6:0] minOut, dsecOut, secOut;

  	decoder DUT(.min(min), .dSec(dSec), .sec(sec), .minOut(minOut), .dsecOut(dsecOut), .secOut(secOut));

    initial
        begin

            $dumpfile("test_decoder.vcd");
            $dumpvars(0, test_decoder);

                min=4'b0000; dSec=4'b0000; sec=4'b0000;  
            #5  min=4'b0001; dSec=4'b0001; sec=4'b0001; 
         	  #5  min=4'b0010; dSec=4'b0010; sec=4'b0010;
            #5  min=4'b0011; dSec=4'b0011; sec=4'b0011;
            #5  min=4'b0100; dSec=4'b0100; sec=4'b0100;
            #5  min=4'b0101; dSec=4'b0101; sec=4'b0101;
          	#5  min=4'b0110; dSec=4'b0110; sec=4'b0110;
            #5  min=4'b0111; dSec=4'b0111; sec=4'b0111;
          	#5  min=4'b1000; dSec=4'b1000; sec=4'b1000;
            #5  min=4'b1001; dSec=4'b1001; sec=4'b1001;    
        end
endmodule