`include "./nivel_2/controle_magnetron/nivel_3/latch/latch.v"
`include "./nivel_2/controle_magnetron/nivel_3/bloco_logico/bloco_logico.v"

module nvl2_controle(startn, stopn, clearn, door_closed, timer_done, mag_on);
  input wire startn, stopn, clearn, door_closed, timer_done;
  output wire mag_on;

  wire set;
  wire reset;

  controle AL0(startn, stopn, clearn, door_closed, timer_done, set, reset);
  latch_sr AL1(set, reset, mag_on);
endmodule