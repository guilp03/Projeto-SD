`timescale 1ns/1ns

module test_control_nvl2;

    reg startn, stopn, clearn, door_closed, timer_done;
  	wire  mag_on;
  	nvl2_controle dut(startn, stopn, clearn, door_closed, timer_done, mag_on);

    initial
        begin

            $dumpfile("teste_magnetron_nvl2.vcd");
            $dumpvars(0, test_control_nvl2);

                startn=1; stopn=0; clearn=0; door_closed=0; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
         	  #5  startn=1; stopn=1; clearn=0; door_closed=1; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=0; timer_done=0;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=1;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
          	#5  startn=1; stopn=0; clearn=1; door_closed=1; timer_done=1;
            #5  startn=1; stopn=0; clearn=0; door_closed=1; timer_done=0;
          	#5  startn=1; stopn=1; clearn=1; door_closed=1; timer_done=1;
            #5  startn=0; stopn=1; clearn=1; door_closed=1; timer_done=1;
            #5  startn=0; stopn=0; clearn=0; door_closed=0; timer_done=0;
          
        end
endmodule