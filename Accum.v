`timescale 1ns / 1ps

module accumulator (
    input wire clk,
    input wire acc_en,           // Enable input
    input wire reset,
    input wire [7:0] acc_in,     // 8-bit input to store
    output reg [7:0] acc_out     // 8-bit output
);

    always @(posedge clk) begin
        if(reset)
            acc_out <= 0;
        else if (acc_en) begin
            acc_out <= acc_in;
        end
    end

endmodule
