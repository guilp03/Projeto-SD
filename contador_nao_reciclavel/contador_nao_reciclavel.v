module counter(input wire clock, reset,output reg Q);

    reg [2:0] contador;
    always@(posedge clock or posedge reset)
    begin    
        if(reset)
            begin
                contador = 3'b000;
                Q = 0;
            end
        else if (contador == 3'b011)
            begin
                Q = 1;
                contador = contador + 1'b1;
            end
        else if (contador < 3'b111)
            begin
                contador = contador + 1'b1;
            end
    end
endmodule