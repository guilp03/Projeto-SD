module microwaves(keypad, clk, startn, stopn, clearn, door_closed,
                  blank_digit, secs_ones_segs, secs_tens_segs, min_segs, mag_on)

                input wire [9:0] keypad;
                input wire clk, startn, stopn, clearn, door_closed;
                output reg [6:0] blank_digit, secs_ones_segs, secs_tens_segs, min_segs;
                output wire mag_on;
                
                wire enablen, pgt_1Hz, loadn;
                wire [3:0] D;

                assign mag_on = enablen;

                // ENTRADA DE TEMPO E CONTROLE
                timer_controle inst4(keypad, enablen, clk, D, loadn, pgt_1Hz);
                
                // CONTROLE DE MAGNETRON
                
endmodule