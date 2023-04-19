module Contador_mod10 (
    input clk,
    input reset, 
    input enable,
    output reg [3:0] count 
);

always @(posedge clk) begin
    if (reset) begin 
        count <= 4'b0;
    end else begin
        if (enable) begin
            if (count == 4'd9) begin
                count <= 4'd0;
            end else begin
                count <= count + 4'd1;
            end
        end
    end
end

endmodule