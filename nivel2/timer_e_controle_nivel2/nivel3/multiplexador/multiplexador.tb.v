`timescale 1ns/1ns

module test_mux;

    reg sel, saida_atraso, hz_clock;
  	wire  Q;

  	mux DUT(sel, saida_atraso, hz_clock, Q);

    initial
        begin

            $dumpfile("test_mux.vcd");
            $dumpvars(0, test_mux);

                sel=1; saida_atraso=0; hz_clock=1;
            #5  sel=0; saida_atraso=0; hz_clock=1;
         	  #5  sel=1; saida_atraso=1; hz_clock=0;
          	#5  sel=0; saida_atraso=1; hz_clock=0;
            #5  sel=1; saida_atraso=1; hz_clock=1;
          	#5  sel=0; saida_atraso=1; hz_clock=1;
            #5  sel=1; saida_atraso=0; hz_clock=0;
          	#5  sel=0; saida_atraso=0; hz_clock=0;
          
        end
endmodule