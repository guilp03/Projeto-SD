`include "./nivel_2/timer_e_controle/entrada_timer.v"
`include "./nivel_2/minutos_segundos/timer.v"
`include "./nivel_2/controle_magnetron/nivel2_magnetron.v"
`include "./nivel_2/decoder/decoder_7seg.v"

module microwave(keypad, clk, startn, stopn, clearn, door_closed,
                  secs_ones_segs, secs_tens_segs, min_segs, mag_on)

                input wire [9:0] keypad;
                input wire clk, startn, stopn, clearn, door_closed;
                output reg [6:0] secs_ones_segs, secs_tens_segs, min_segs;
                output wire mag_on;
                
                wire enablen, pgt_1Hz, loadn, zero, timer_done;
                wire [3:0] D;
                wire [3:0] sec_ones, sec_tens, mins;

                assign mag_on = enablen;

                // ENTRADA DE TEMPO E CONTROLE
                timer_controle inst4(keypad, enablen, clk, D, loadn, pgt_1Hz);
                
                //CONTADOR DE MINUTOS/SEGUNDOS
                timer_nivel2 inst3(D, enablen, pgt_1Hz, loadn, clearn, zero, sec_ones, sec_tens, mins);

                // CONTROLE DE MAGNETRON
                nvl2_controle inst6(startn, stopn, clearn, door_closed, zero, mag_on);

                //DECODIFICADORRES/DRIVERS DE 7 SEGMENTOS 
                decoder inst(mins, sec_tens, sec_ones, min_segs, secs_tens_segs, secs_ones_segs);
endmodule