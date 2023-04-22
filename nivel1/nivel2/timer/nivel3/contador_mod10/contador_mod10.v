module contador_mod10 (data, clk, load, enable, clear, count, count_end, tc);
  input wire [3:0] data;
  input wire clk, load, enable, clear;
  output reg [3:0] count;
  output wire count_end;
  output wire tc;

  always @ (negedge clear)
  begin
    count <= 4'b0000;
  end
  assign tc = enable & count_end;
  always @ (posedge clk)
  begin
    if (enable) begin
      case (count)
        4'b0000: count <= 4'b1001;
        default: count <= count - 4'b0001;
      endcase
    end
    else begin
      if (!load) begin
        count <= data;
      end
    end
  end
  
  assign count_end = (count == 4'b0000) ? 1'b1 : 1'b0;
endmodule