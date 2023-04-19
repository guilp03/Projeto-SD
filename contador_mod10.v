module MOD10_counter (
    input clk, // sinal de clock de entrada
    input reset, // sinal de reset assíncrono
    output reg [3:0] count // contador de 4 bits com saída
);

always @(posedge clk or negedge reset) begin
    if (!reset) begin
        count <= 4'b0;
    end else begin
        if (count == 4'd9) begin
            count <= 4'd0;
        end else begin
            count <= count + 4'd1;
        end
    end
end

endmodule