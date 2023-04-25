`timescale 1ns/1ns

module test_bloco_logico;

    reg startn, stopn, clearn, door_closed, timer_done;
  	wire  set, reset;

  	controle dut(startn, stopn, clearn, door_closed, timer_done, set, reset);

    initial
        begin

            $dumpfile("test_bloco_logico.vcd");
            $dumpvars(0, test_bloco_logico);

                startn=1; stopn=0; clearn=0; door_closed=0; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
         	  #5  startn=1; stopn=1; clearn=0; door_closed=1; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=1;
            #5  startn=1; stopn=0; clearn=0; door_closed=0; timer_done=0;
          	#5  startn=1; stopn=0; clearn=1; door_closed=1; timer_done=1;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
          	#5  startn=1; stopn=1; clearn=1; door_closed=1; timer_done=1;
            #5  startn=0; stopn=1; clearn=1; door_closed=1; timer_done=1;
            #5  startn=0; stopn=0; clearn=0; door_closed=0; timer_done=0;
            #5  startn=0; stopn=1; clearn=1; door_closed=1; timer_done=0;
          
        end
endmodule