`include "./nivel_2/timer_e_controle/nivel3/codificador/codificador_prioritario.v"
`include "./nivel_2/timer_e_controle/nivel3/contador_freq/div_frequencia.v"
`include "./nivel_2/timer_e_controle/nivel3/contador_nao_reciclado/contador_nao_reciclavel.v"
`include "./nivel_2/timer_e_controle/nivel3/mux/mux.v"

module timer_controle(key, enablen, clk100, D, loadn, pgt_1Hz);
        input wire [9:0] key;
        input wire enablen, clk100;
        output wire [3:0] D;
        output wire loadn, pgt_1Hz;

        wire clkf, Q;
        reg key_on;
        initial key_on = 0;

        always@(key)begin
                if(key == 10'b0000000000)
                        key_on = 1'b0;
                else
                        key_on = 1'b1;
        end

        assign loadn = ~key_on;

        codificador_prioritario BL0(key, enablen, D);
        divisor BL1(clk100,clkf);
        counter BL2(clk100, loadn, Q);
        mux BL3(enablen, Q, clkf, pgt_1Hz);
endmodule