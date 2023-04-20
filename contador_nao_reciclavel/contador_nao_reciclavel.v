module contador_nao_reciclavel(
    input clk,
    input reset,
    input botao,
    output reg [2:0] saida
);

reg [2:0] valor_atual, valor_anterior;

// Implementação do atraso de trepidação
always @(posedge clk) begin
    if (reset) begin
        valor_atual <= 3'b000;
        valor_anterior <= 3'b000;
    end else begin
        valor_anterior <= valor_atual;
        valor_atual <= {valor_anterior[1:0], botao};
        if (valor_atual == 3'b111 && valor_anterior != 3'b111) begin
            if (saida < 3'b111) begin
                saida <= saida + 1;
            end else begin
                saida <= 3'b000;
            end
        end
    end
end

endmodule
