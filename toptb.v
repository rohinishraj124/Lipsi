`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 18:00:09
// Design Name: 
// Module Name: toptb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module toptb;

    // Testbench signals
    reg [7:0] io_in;
    reg clk;
    reg reset;
    wire [7:0] io_out;

   
//module top(
//    input [7:0] io_in,
//    input reset,
//    input clk,
//    output reg [7:0] io_out,
//    output curr,
//    output nxt,
//    output read_addr,
//    output pcout,
//    output pcen2,
//    output alu_en
//); // Instantiate the Unit Under Test (UUT)

//wire [3:0] currr, nxtt;
//wire [8:0] read;
//wire [7:0] pcoutt;
//wire pcenn;
//wire alu_enn;
//wire [7:0] readd;
//wire [7:0] a;
//wire [2:0] opp;
//wire acc_enn;

    top uut (
        .io_in(io_in),
        .clk(clk),
        .reset1(reset),
        .io_out(io_out)
//        .curr(currr),
//        .nxt(nxtt),
//        .read_addr(read),
//        .pcout(pcoutt),
//        .pcen2(pcenn),
//        .alu_en1(alu_enn),
//        .acc_en1(acc_enn),
//        .read_data(readd),
//        .op(opp),
//        .A_out1(a)
    );


    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
    
    end

    // Stimulus block
    initial begin
//        // Dumping waveform if needed
//        $dumpfile("top_tb.vcd");
//        $dumpvars(0, top_tb);

        // Initialize inputs
        io_in = 8'b00000000;
        reset = 1;

        // Hold reset for a few cycles
        #10;
        reset = 0;

        // Provide some input data
        #10 io_in = 8'hA5;
        #10 io_in = 8'h3C;
        #10 io_in = 8'hF0;

        // Wait and finish
        #10000;

//        $display("Test finished.");
        $finish;
    end
endmodule
