module contador_mod_6(data, clk, loadn, en, clearn, tens, tc, zero);
  input wire [3:0] data;
  input wire clk, loadn, en, clearn;
  output reg [3:0] tens;
  output wire tc;
  output wire zero;

  always @ (negedge clearn)
  begin
    tens = 4'b0000;
  end

  assign zero = (tens == 4'b0000) ? 1'b1 : 1'b0;
  assign tc = en & zero;

  always @ (posedge clk)
  begin
    if (en) 
      case (tens)
        4'b0101: begin
          tens <= 4'b0100;
        end // 5 -> 4
        4'b0001: begin 
          tens <= 4'b0000;
        end  // 1 -> 0
        4'b0000: begin
          tens <= 4'b0101;
        end // 0 -> 5
        default: tens <= tens - 4'b0001;
      endcase

    else begin

      if(!loadn)
        tens <= data;
    end
  end
endmodule