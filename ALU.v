
`timescale 1ns / 1ps

module alu (
    input  wire        alu_en,
    input  wire        shift_en,
    input  wire [2:0]  alu_op,      // Operation selector
    input  wire [7:0]  A_in,        // Input A
    input  wire [7:0]  op,          // Operand
    input  wire        c,           // Carry input

    output reg  [7:0]  A_out,       // Result
    output reg         carry_out    // Carry/Borrow flag
);

    reg [7:0] alu_result;
    reg [7:0] shift_result;
    reg [8:0] temp_result; // For carry/borrow detection

    // ALU Operation Logic
    always @(*) begin
        carry_out = 1'b0; // Default value

        case (alu_op)
            3'b000: begin // ADD
                temp_result = A_in + op;
                alu_result  = temp_result[7:0];
                carry_out   = temp_result[8];
            end
            3'b001: begin // SUB
                temp_result = {1'b0, A_in} - {1'b0, op};
                alu_result  = temp_result[7:0];
                carry_out   = ~temp_result[8]; // Borrow as inverted carry
            end
            3'b010: begin // ADC
                temp_result = A_in + op + c;
                alu_result  = temp_result[7:0];
                carry_out   = temp_result[8];
            end
            3'b011: begin // SBB
                temp_result = {1'b0, A_in} - {1'b0, op} - c;
                alu_result  = temp_result[7:0];
                carry_out   = ~temp_result[8];
            end
            3'b100: begin // AND
                alu_result  = A_in & op;
                carry_out   = 1'b0;
            end
            3'b101: begin // OR
                alu_result  = A_in | op;
                carry_out   = 1'b0;
            end
            3'b110: begin // XOR
                alu_result  = A_in ^ op;
                carry_out   = 1'b0;
            end
            3'b111: begin // LD
                alu_result  = op;
                carry_out   = 1'b0;
            end
            default: begin
                alu_result  = 8'h00;
                carry_out   = 1'b0;
            end
        endcase
    end

    // Shift Operation Logic (4 types based on op[1:0]) have to add shift with carry here
    always @(*) begin
        case (op[1:0])
            2'b00: shift_result = A_in << 1;               // Logical Left Shift
            2'b01: shift_result = A_in >> 1;               // Logical Right Shift
            2'b10: shift_result = {A_in[7], A_in[7:1]};     // Arithmetic Right Shift
            2'b11: shift_result = {A_in[6:0], A_in[7]};     // Rotate Left
            default: shift_result = A_in;
        endcase                                                     // have to check fo optimization
    end
        // have to remove aluen doesn't make any sense
    // Final Result Selection
    always @(*) begin
        if (alu_en) begin
            if (shift_en) begin
                A_out     = shift_result;
//                carry_out = 1'b0;
            end else begin
                A_out = alu_result;
                // carry_out already set in ALU block
            end
        end else begin
            A_out     = 8'h00;
//            carry_out = 1'b0;
        end
    end

endmodule
