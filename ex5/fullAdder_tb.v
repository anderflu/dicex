`timescale 1ns / 1ps

module fullAdder_tb;

//Inputs
logic A;
logic B;
logic Ci;

//Outputs
logic S;
logic Co;

fullAdder dut(S, Co, A, B, Ci);

    initial begin
        $dumpfile("fullAdder.vcd");
        $dumpvars(0, fullAdder_tb);

        A=0; B=0; Ci=0;
        #1 A=0; B=0; Ci=1;
        #1 A=0; B=1; Ci=0;
        #1 A=0; B=1; Ci=1;
        #1 A=1; B=0; Ci=0;
        #1 A=1; B=0; Ci=1;
        #1 A=1; B=1; Ci=0;
        #1 A=1; B=1; Ci=1;
        #1
        $stop;
    end
endmodule 