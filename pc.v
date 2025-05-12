`timescale 1ns / 1ps

module pc_register (
    input wire clk,
    input wire pc_en,
    input wire reset,           // Enable signal
    input wire [7:0] pc_in,     // Input vector (new PC value)
    output reg [7:0] pc_out     // Output vector (current PC value)
);

    always @(posedge clk) begin
        if(reset)
            pc_out <= 0;
        else if (pc_en) begin
            pc_out <= pc_in;
        end
    end

endmodule
