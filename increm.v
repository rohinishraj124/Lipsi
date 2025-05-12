`timescale 1ns / 1ps

module incrementer (
    input wire [7:0] in,       // Input value
    output wire [7:0] out       // Incremented output
);

    assign out = in + 1;

endmodule
