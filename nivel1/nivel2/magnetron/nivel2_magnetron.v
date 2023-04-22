`include "./latch_sr/latch_sr.v"
`include "./bloco_logico/bloco_logico.v"

module startn(stopn, clearn, door_closed, timer_done, mag_on);
  input wire startn, stopn, clearn, door_closed, timer_done;
  output wire mag_on;

  wire set;
  wire reset;

  bloco_logico controle(startn, stopn, clearn, door_closed, timer_done, set, reset);
  latch_sr latch_sr(set, reset, mag_on);

endmodule
