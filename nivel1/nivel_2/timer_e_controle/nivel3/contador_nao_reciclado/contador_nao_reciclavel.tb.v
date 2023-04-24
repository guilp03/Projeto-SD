`timescale 1ns/1ns

module test_contador;

    reg clock, clear, contador;
  	wire  Q;

  	counter dut(clock, clear, Q);

    initial
        begin

            $dumpfile("test_contador.vcd");
            $dumpvars(0, test_contador);

                clock = 1; clear=1; contador = 0;
            #5   contador = 3;
            #5   clear = 0; 
          
            repeat(16)
                begin
                    #10 clock = ~clock;
                end

        end
endmodule