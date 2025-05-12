`timescale 1ns / 1ps

module memory_block (
    input wire clk,
    input wire write_en,
    input wire [8:0] write_addr,    // 512-byte address space
    input wire [7:0] write_data,

    input wire [8:0] read_addr,
    output reg [7:0] read_data
);
//C0
//02
//C0
//03
//F0

    // 512 x 8-bit memory
    reg [7:0] mem [0:511];
    initial begin


    // Load indirect
    // mem[0] = 8'hc7;
    // mem[1] = 8'h0A; // A = 10
    // mem[2] = 8'h82; //m[2] = 10
    // mem[3] = 8'hC7;  
    // mem[4] = 8'h02; // A = 2
    // mem[5] = 8'h81; //M[1] = 2
    // mem[6] = 8'hA1; // A = M[M[1]] = M[2] = 10
    // mem[7] = 8'hFF; 


    // Store indirect
    // mem[0] = 8'hc7;
    // mem[1] = 8'h02; // A = 2
    // mem[2] = 8'h81; //m[1] = 2
    // mem[3] = 8'hC7;  
    // mem[4] = 8'h01; // A = 1
    // mem[5] = 8'hC7; 
    // mem[6] = 8'h0F;  // A = F
    // mem[7] = 8'hB1; //M[M[1]] = M[2] = F
    // mem[8] = 8'h82;
    // mem[9] = 8'hFF;
    

    // Sum of n natural number (n = 12)
    mem[0] = 8'hc7;
    mem[1] = 8'h0a;
    mem[2] = 8'h81;
    mem[3] = 8'h82;
    mem[4] = 8'hc1;
    mem[5] = 8'h01;
    mem[6] = 8'h81;
    mem[7] = 8'h02;
    mem[8] = 8'h82;
    mem[9] = 8'h71;
    mem[10] = 8'hd3;
    mem[11] = 8'h04;
    mem[12] = 8'h72;
    mem[13] = 8'hff;


    // multiplication (13*7)
    //  mem[0] = 8'hc7;
    //  mem[1] = 8'h0D;
    //  mem[2] = 8'h81;
    //  mem[3] = 8'h83;
    //  mem[4] = 8'hC7;
    //  mem[5] = 8'h07;
    //  mem[6] = 8'h82;
    //  mem[7] = 8'h71;
    //  mem[8] = 8'h03;
    //  mem[9] = 8'h83;
    //  mem[10] = 8'h72;
    //  mem[11] = 8'hC1;
    //  mem[12] = 8'h01;
    //  mem[13] = 8'h82;
    //  mem[14] = 8'hD3;
    //  mem[15] = 8'h07;
    //  mem[16] = 8'h73;
    //  mem[17] = 8'h11;
    //  mem[18] = 8'hFF;


    // n factorial (n = 4)
    // mem[0] = 8'hc7;
    // mem[1] = 8'h04;
    // mem[2] = 8'h81;
    // mem[3] = 8'hc7;
    // mem[4] = 8'h01;
    // mem[5] = 8'h84;
    // mem[6] = 8'h71;
    // mem[7] = 8'h82;
    // mem[8] = 8'h74;
    // mem[9] = 8'h83;
    // mem[10] = 8'hc7;
    // mem[11] = 8'h00;
    // mem[12] = 8'h75;
    // mem[13] = 8'h03;
    // mem[14] = 8'h85;
    // mem[15] = 8'h72;
    // mem[16] = 8'hc1;
    // mem[17] = 8'h01;
    // mem[18] = 8'h82;
    // mem[19] = 8'hd3;
    // mem[20] = 8'h0c;
    // mem[21] = 8'h75;
    // mem[22] = 8'h84;
    // mem[23] = 8'h71;
    // mem[24] = 8'hc1;
    // mem[25] = 8'h01;
    // mem[26] = 8'h81;
    // mem[27] = 8'hc1;
    // mem[28] = 8'h01;
    // mem[29] = 8'hd3;
    // mem[30] = 8'h07;
    // mem[31] = 8'h74;
    // mem[32] = 8'hff;

    
    // Fibonacci (input n = 14 ==== output 233)
    //mem[0] = 8'hc7;         
    //mem[1] = 8'h00;
    //mem[2] = 8'h81;
    //mem[3] = 8'hc7;
    //mem[4] = 8'h01;
    //mem[5] = 8'h82;
    //mem[6] = 8'hc7;
    //mem[7] = 8'h0e;          
    //mem[8] = 8'hc1;
    //mem[9] = 8'h02;
    //mem[10] = 8'h80;
    //mem[11] = 8'h71;
    //mem[12] = 8'h02;
    //mem[13] = 8'h83;
    //mem[14] = 8'h72;
    //mem[15] = 8'h81;
    //mem[16] = 8'h73;
    //mem[17] = 8'h82;
    //mem[18] = 8'h70;
    //mem[19] = 8'hc1;
    //mem[20] = 8'h01;
    //mem[21] = 8'h80;
    //mem[22] = 8'hd3;
    //mem[23] = 8'h0b;
    //mem[24] = 8'h72;
    //mem[25] = 8'hff;


    // sum of sqaures of n natural number
    //  mem[0] = 8'hc7;
    //  mem[1] = 8'h06;
    //  mem[2] = 8'h80;
    //  mem[3] = 8'h81;
    //  mem[4] = 8'h71;
    //  mem[5] = 8'h02;
    //  mem[6] = 8'h82;
    //  mem[7] = 8'h70;
    //  mem[8] = 8'hC1;
    //  mem[9] = 8'h01;
    //  mem[10] = 8'h80;
    //  mem[11] = 8'hD3;
    //  mem[12] = 8'h04;
    //  mem[13] = 8'h71;
    //  mem[14] = 8'hc1;
    //  mem[15] = 8'h01;
    //  mem[16] = 8'h81;
    //  mem[17] = 8'h80;
    //  mem[18] = 8'hD3;
    //  mem[19] = 8'h05;
    //  mem[20] = 8'h72;
    //  mem[21] = 8'hff;





    // register initialize
    mem[256] = 0;
    mem[257] = 0;
    mem[258] = 0;
    mem[259] = 0;
    mem[260] = 0;
    mem[261] = 0;
    mem[262] = 0;
    mem[263] = 0;
    mem[264] = 0;
    mem[265] = 0;
    mem[266] = 0;
    mem[267] = 0;
    mem[268] = 0;
    mem[269] = 0;
    mem[270] = 0;
    mem[271] = 0;
    mem[272] = 0;
    
    end
    

    always @(posedge clk) begin
        // Write operation
        if (write_en) begin
            mem[write_addr] <= write_data;
        end

        read_data <= mem[read_addr];
    end

endmodule
