`include "./nivel_2/timer_e_controle/entrada_timer.v"
`include "./nivel_2/minutos_segundos/timer.v"
`include "./nivel_2/controle_magnetron/nivel2_magnetron.v"
`include "./nivel_2/decoder/decoder_7seg.v"

module microwave(
    input wire [9:0]keypad,
    input wire clock, startn, stopn, clearn, door_closed,
    output wire [6:0] min_segs, 
    output wire [6:0] secs_tens_segs, 
    output wire [6:0] secs_ones_segs,
    output wire mag_on);

wire enablen;
wire [3:0] D;
wire loadn;
wire pgt_1Hz;
wire zero;

assign mag_on = enablen;

wire [3:0] sec_ones, sec_tens, mins; 

timer_controle inst4(keypad, enablen, clock, D, loadn, pgt_1Hz);


timer_nivel2 inst3(D,enablen, pgt_1Hz, loadn, clearn, zero, sec_ones, sec_tens, mins);


nvl2_controle inst6(startn, stopn, clearn, door_closed, zero, enablen);


decoder inst(mins, sec_tens, sec_ones, min_segs, secs_tens_segs, secs_ones_segs);

endmodule