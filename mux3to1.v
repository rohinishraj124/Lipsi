`timescale 1ns / 1ps

module mux3to1 (
    input wire [7:0] in0,
    input wire [7:0] in1,
    input wire [8:0] in2,
    input wire [1:0] sel,      // 2-bit select (only 0 to 2 valid)
    output reg [8:0] out
);

    always @(*) begin
        case (sel) 
            2'b00: out = {1'b0,in0};
            2'b01: out = {1'b0,in1};
            2'b10: out = in2;
            default: out = 9'b000000000; // Default value or can hold previous value
        endcase
    end

endmodule
