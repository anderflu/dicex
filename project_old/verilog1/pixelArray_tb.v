`timescale 1 ns / 1 ps


module pixelArray_tb;

    //------------------------------------------------------------
    // Testbench clock
    //------------------------------------------------------------
    logic clk =0;
    logic reset =0;
    parameter integer clk_period = 500;
    parameter integer sim_end = clk_period*2400;
    always #clk_period clk=~clk;


    input logic      VBN1,
    input logic      RAMP,
    input logic      RESET,
    input logic      ERASE,
    input logic      EXPOSE,
    input logic      READ1,
    input logic      READ2,
    input logic      READ3,
    input logic      READ4,
    inout [7:0]      DATA;






endmodule