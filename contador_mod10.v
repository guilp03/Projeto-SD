module Contador_mod10 (
    input data[3:0];
    input clk, load, enable, clear;
    output reg [3:0] count;
    output reg count_end;
);

always @(negedge clear)
begin
 count = 4'b0;
end

if (count == 1'b0) begin
    count_end = 1'b1;
end else begin
    count_end = 1'b0;
    end


always @(posedge clk) begin
    if(enable)
    case(count)
    4'b0: begin
        count <= 4'b9;
    end
    default: count <= count - 4'b1;
    endcase

    else begin


      if(!load)
        count <= data;
    end
end
endmodule