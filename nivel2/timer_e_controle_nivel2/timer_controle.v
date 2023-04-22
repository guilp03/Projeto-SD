module timer_controle(keypad, clk, startn, stopn, clearn, door_closed, 
                      blank_digit, sec_ones_segs, sec_tens_segs, min_segs);
    
    input wire [9:0] keypad;
    input wire clk, startn, stopn, clearn, door_closed;
    output wire [3:0] 