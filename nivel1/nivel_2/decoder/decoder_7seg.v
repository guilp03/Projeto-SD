module decoder(min, dSec, sec, minOut, dsecOut, secOut);
    input wire [3:0] min, dSec, sec;
    output reg [6:0] minOut, dsecOut, secOut;

  always@(min)
    case(min)
      4'b0000 : minOut = 7'b1111110;
      4'b0001 : minOut = 7'b0110000;
      4'b0010 : minOut = 7'b1101101;
      4'b0011 : minOut = 7'b1111001;
      4'b0100 : minOut = 7'b0110011;
      4'b0101 : minOut = 7'b1011011;
      4'b0110 : minOut = 7'b1011111;
      4'b0111 : minOut = 7'b1110010;
      4'b1000 : minOut = 7'b1111111;
      4'b1001 : minOut = 7'b1111011;
    endcase
  
  always@(dSec)
  case(dSec)
      4'b0000 : dsecOut = 7'b1111110;
      4'b0001 : dsecOut = 7'b0110000;
      4'b0010 : dsecOut = 7'b1101101;
      4'b0011 : dsecOut = 7'b1111001;
      4'b0100 : dsecOut = 7'b0110011;
      4'b0101 : dsecOut = 7'b1011011;
      4'b0110 : dsecOut = 7'b1011111;
      4'b0111 : dsecOut = 7'b1110010;
      4'b1000 : dsecOut = 7'b1111111;
      4'b1001 : dsecOut = 7'b1111011;
    endcase
  
  always@(sec)
  case(sec)
      4'b0000 : secOut = 7'b1111110;
      4'b0001 : secOut = 7'b0110000;
      4'b0010 : secOut = 7'b1101101;
      4'b0011 : secOut = 7'b1111001;
      4'b0100 : secOut = 7'b0110011;
      4'b0101 : secOut = 7'b1011011;
      4'b0110 : secOut = 7'b1011111;
      4'b0111 : secOut = 7'b1110010;
      4'b1000 : secOut = 7'b1111111;
      4'b1001 : secOut = 7'b1111011;
    endcase

endmodule