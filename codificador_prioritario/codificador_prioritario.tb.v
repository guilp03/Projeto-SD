`timescale 1ns/1ns


module codificador_prioritario_teste;
    reg [9:0]entrada;
    reg enablen;
    wire [3:0]BCD;

        codificador_prioritario DUT(entrada, enablen, BCD);
    
    initial 
        begin

            $dumpfile("codificador_prioritario_teste.vcd");
            $dumpvars(0, codificador_prioritario_teste);

            entrada=10'b1000000000; enablen=0;
            #5  entrada=10'b0100000000; enablen=0; 
           	#5  entrada=10'b0010000000; enablen=0;
          	#5  entrada=10'b0001000000; enablen=0;
          	#5  entrada=10'b0000100000; enablen=0;
          	#5  entrada=10'b0000010000; enablen=0;
          	#5  entrada=10'b0000001000; enablen=0;
            #5  entrada=10'b0000000100; enablen=0;
          	#5  entrada=10'b0000000010; enablen=0;
            #5  entrada=10'b0000000001; enablen=0;

            #5  entrada=10'b1000000000; enablen=1;
            #5  entrada=10'b0100000000; enablen=1; 
           	#5  entrada=10'b0010000000; enablen=1;
          	#5  entrada=10'b0001000000; enablen=1;
          	#5  entrada=10'b0000100000; enablen=1;
          	#5  entrada=10'b0000010000; enablen=1;
          	#5  entrada=10'b0000001000; enablen=1;
            #5  entrada=10'b0000000100; enablen=1;
          	#5  entrada=10'b0000000010; enablen=1;
            #5  entrada=10'b0000000001; enablen=1;

            #5 entrada = 10'b1000000001; enablen=0;
            #5 entrada = 10'b1000001001; enablen=0;
            #5 entrada = 10'b1000000001; enablen=1;
            #5 entrada = 10'b1000001001; enablen=1;
        end
endmodule