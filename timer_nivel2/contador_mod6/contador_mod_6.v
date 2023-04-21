module contador_mod_6(data, loadn, clearn, clk, en, tens, tc, zero);
    input wire [2:0] data;
    input wire loadn, clearn, clk, en;
    output reg [2:0] tens;
    output wire tc, zero;

    assign data = 3'b101;
    always @(negedge clearn)begin
        tens <= 3'b000;
    end
    assign zero = (tens == 3'b000) ? 1'b1 : 1'b0;
    assign tc = en && zero;

    always @(posedge clk) begin
        if (en) begin
            case(tens)
                3'b101: tens <= 3'b100; // 5 -> 4
                3'b001: tens <= 3'b000; // 1 -> 0
                3'b000: tens <= 3'b110; // 0 -> 6
                default: tens <= tens - 3'b001;
            endcase
        end
        else begin
            if  (!load)begin
                tens <= data;
            end
        end
    end
endmodule