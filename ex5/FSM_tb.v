`timescale 1ns / 1ps

module FSM_tb;
    logic reset, clk, w, out;
    FSM fsm(reset, clk, w, out);

    always begin
        clk = 0; #5;
        clk = 1; #5;
    end

    initial begin
       #30 
       reset = 1; w=0; #10; //Starts at A
       reset = 0; w=1; #10; //B
       reset = 0; w=0; #10; //A
       reset = 0; w=1; #10; //B
       reset = 0; w=1; #10; //C
       reset = 0; w=0; #10; //A
       reset = 0; w=1; #10; //B
       reset = 0; w=1; #10; //C
       reset = 0; w=1; #10; //D
       reset = 0; w=0; #10; //A
       reset = 0; w=1; #10; //B
       reset = 0; w=1; #10; //C
       reset = 0; w=1; #10; //D
       reset = 0; w=1; #10; //E
       reset = 0; w=0; #10; //A
       $stop;
    end
endmodule