`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2025 18:13:34
// Design Name: 
// Module Name: top
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


module top(
    input [7:0] io_in,
    input reset1,
    input clk,
    output reg [7:0] io_out,
    output [6:0] seg,
    output [3:0] an,
    output dp

);

wire [8:0] r0;


    wire [8:0]read_addr1;
    wire [7:0] pcout;
    wire pcen2;
    wire alu_en1;
    wire acc_en1;
    wire [7:0] read_data1;
    wire [2:0] op1;
    wire [7:0] A_out1;

wire wr_en;
wire [8:0] wr_add;
wire [7:0] wr_data;

wire shift_en1,carry_out;

wire [7:0] acc_out;

reg c;
always @(posedge clk)
    c <= carry_out;
    

wire [1:0] sell0;


// 7 segment display

reg [3:0] hundreds, tens, units;
integer temp;
always @(*) begin
    temp = acc_out;
    hundreds = temp / 100;
    temp = temp % 100;
    tens = temp / 10;
    units = temp % 10;
end


seven_segment_display disp(
    .clk(clk),
    .value({4'd0, hundreds, tens, units}),
    .an(an),
    .seg(seg),
    .dp(dp)
);

// 7 segment display



memory_block m1(
     .clk(clk),
     .write_en(wr_en),
     .write_addr(wr_add),    // 512-byte address space
     .write_data(wr_data),

     .read_addr(read_addr1), // readaddr change
     .read_data(read_data1)
);

    alu a (
     .alu_en(alu_en1),
     .shift_en(shift_en1),
     .alu_op(op1),      // Operation selector
     .A_in(acc_out),        // Input A
     .op(read_data1),          // Operand
     .c(c),                 // Carry input

     .A_out(A_out1),       // Result
     .carry_out(carry_out)          // Carry/Borrow flag
);

wire [7:0] incr_out;

    incrementer inn(
     .in(pcout),       // Input value
     .out(incr_out)       // Incremented output
);

accumulator acc (
     .clk(clk),
     .acc_en(acc_en1),           // Enable input
     .reset(reset1),
     .acc_in(A_out1),     // 8-bit input to store
     .acc_out(acc_out)     // 8-bit output
);

mux3to1 m3(
     .in0(incr_out),
     .in1(acc_out),
     .in2(r0),
     .sel(sell0),      // 2-bit select (only 0 to 2 valid)
     .out(read_addr1)
);

pc_register p(
    .clk(clk),
    .pc_en(pcen2),
    .reset(reset1),           // Enable signal
    .pc_in(read_addr1[7:0]),     // Input vector (new PC value)
    .pc_out (pcout)    // Output vector (current PC value)
);




wire sel1,sel2;

reg z;

always @(*)begin
    case(acc_out)
    8'b00000000 : z = 1;
    default : z = 0;
    endcase
end

lipsi_fsm l(
    .clk(clk),
    .in(read_data1),
    .reset(reset1),
    .pcen1(pcen2),
    .sel(sell0),
    .sel1(sel1),
    .sel2(sel2),
    .alu_en(alu_en1),
    .write_en(wr_en),
    .acc_en(acc_en1),
    .opp(op1),
    .r(r0),
    .shift_en(shift_en1),
    .zero_flag(z)
);




reg [8:0] out ;
reg [7:0] out2;
//mux 1
always @(*)begin
    out = (sel1)?r0:{1'b1,read_data1};
    out2 = (sel2)?acc_out:pcout;
end

assign wr_data = out2;
assign wr_add = out;

always @(posedge clk)begin
    io_out <= acc_out;
end


endmodule