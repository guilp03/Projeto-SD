module contador_mod_6(data, loadn, clearn, clk, en, tens, tc, zero);
    input wire [3:0] data;
    input wire loadn, clearn, clk, en;
    output reg [3:0] tens;
    output wire tc, zero;

    assign data <= 4'b5;
    always @(negedge clearn)begin
        tens <= 4'b0;
    end
    assign zero <= (tens == 4'b0) ? 1'b1 : 1'b0;
    assign tc = en && zero;

    always @(posedge clk) begin
        if (en) begin
            case(tens)
                4'b5: tens <= 4'b4; // 5 -> 4
                4'b1: tens <= 4'b0; // 1 -> 0
                4'b0: tens <= 4'b6; // 0 -> 6
                default: tens <= tens - 4'b1;
            endcase
        end
        else begin
            if  (!load)begin
                tens <= data;
            end
        end
    end
endmodule