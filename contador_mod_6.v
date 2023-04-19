module contador_mod_6(input clk, input rst,
                      output reg [2:0] contBin);

    always @(posedge clk) begin
        if (rst) begin
            contBin <= 3'b000;
        end 
        else begin
            if (contBin == 3'b110) begin
                contBin <= 3'b000;
            end 
            else begin
                contBin <= contBin + 1;
            end
        end
    end
endmodule