`timescale 1ns / 1ps

module lipsi_fsm(
    input clk,
    input [7:0] in,
    input reset,                // active-low reset
    input zero_flag,
    output reg pcen1,
    output reg [1:0] sel,
    output reg sel1,
    output reg sel2,
    output reg alu_en,
    output reg write_en,
    output reg shift_en,
    output reg acc_en,
    output reg [2:0] opp,
    output reg [8:0] r
//    output reg [3:0] current_state,
//    output reg [3:0] next_state
);
    reg [2:0] op;
    reg [3:0] current_state;
    reg [3:0] next_state;
    parameter INSTRUCTION = 4'd0,
              ALU         = 4'd1,
              IO          = 4'd2,
              BRANCHN     = 4'd3,
              STORE       = 4'd4,
              BRANCH      = 4'd5,
              LOAD        = 4'd6,
              BRANCHZ     = 4'd7;

    // State update (async reset)
    always @(posedge clk) begin
        if (reset)
            current_state <= INSTRUCTION;
        else
            current_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            INSTRUCTION: case (in[7:4])
                4'b0000, 4'b0001, 4'b0010, 4'b0011,
                4'b0100, 4'b0101, 4'b0110, 4'b0111: next_state = ALU;
                4'b1000: next_state = INSTRUCTION;
                4'b1001: next_state = INSTRUCTION;
                4'b1010: next_state = LOAD;
                4'b1011: next_state = STORE;
                4'b1100: next_state = ALU;
                4'b1101: begin
                        case(in[1:0])
                        2'b00,2'b01 : next_state = BRANCH;
                        2'b10 : next_state = BRANCHN;
                        2'b11 : next_state = BRANCHZ;
                        endcase 
                end
                4'b1110: next_state = ALU;
                4'b1111: next_state = IO;
                default: next_state = INSTRUCTION;
            endcase

//            ALU, HALT, STORE, BRANCH, LOAD, LINK, IO: next_state = INSTRUCTION;
 //               HALT : next_state = ALU;
                ALU : next_state = INSTRUCTION;
                LOAD : next_state = ALU;
                STORE : next_state = INSTRUCTION;
                BRANCH : next_state = INSTRUCTION;
                BRANCHN : next_state = INSTRUCTION;
                BRANCHZ : next_state = INSTRUCTION;
                IO : next_state = IO;

            default: next_state = INSTRUCTION;
        endcase
    end

    // Output logic (with reset)
    always @(*) begin
            pcen1     = 1;
            sel       = 2'b01;
            sel1      = 0;
            sel2      = 0;
            alu_en    = 1;
            write_en  = 0;
            acc_en    = 0;
            op        = 3'b000;
            shift_en = 0;
            r         = 8'b000000000;
        if (reset) begin
            // Clear all outputs on reset
            pcen1     = 1;
            sel       = 2'b01;
            sel1      = 0;
            sel2      = 0;
            alu_en    = 1;
            write_en  = 0;
            acc_en    = 0;
            op        = 3'b000;
            shift_en = 0;
            r         = 8'b000000000;
        end else begin
//            pcen1     = 0;
//            sel       = 2'b00;
//            sel1      = 0;
//            sel2      = 0;
//            alu_en    = 1;
//            write_en  = 0;
//            acc_en    = 0;
//            op        = 3'b000;
//            shift_en = 0;
//            r         = 8'b000000000;

            case (current_state)
                INSTRUCTION: case (in[7:4])
                    4'b0000,4'b0001,4'b0010,4'b0011,
                    4'b0100,4'b0101,4'b0110,4'b0111: begin
                        op        = in[6:4];
                        r         = {5'b10000, in[3:0]};
                        shift_en = 0;
                        write_en = 0;
                        sel1 = 1;
                        sel2 = 1;
                        sel = 2'b10;
                        acc_en = 0;
                        pcen1     = 0;
                        alu_en = 1;
                        
                    end
                    4'b1000: begin
                        r         = {5'b10000, in[3:0]};
                        sel = 2'b00;
                        shift_en = 0;
                        op = in[2:0];
                        alu_en = 1;
                        write_en = 1;
                        sel1 = 1;
                        sel2 = 1;
                        acc_en = 0;
                        pcen1     = 1;
                    end
                    4'b1001: begin
                        write_en = 1;
                        sel1 = 1;
                        sel2 = 0;
                        sel       = 2'b01;
                        shift_en = 0;
                        alu_en = 1;
                        op = in[2:0];
                        r         = {5'b10000, in[3:0]};
                        pcen1     = 1;
                        acc_en = 0;
                    end
                    4'b1010 : begin
                        r = {5'b10000,in[3:0]};
                        pcen1 = 0;
                        alu_en = 1;
                        shift_en = 0;
                        op = in[2:0];
                        sel1 = 0;
                        sel2 = 0;
                        acc_en = 0;
                        sel = 2'b10;
                        write_en = 0;
                    end
                    4'b1011 : begin
                        r = {5'b10000,in[3:0]};
                        pcen1 = 0;
                        sel = 2'b10;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        acc_en = 0;
                        alu_en = 1;
                        shift_en = 0;
                        op = in[2:0];
                    end
                    4'b1100: begin
                        sel       = 2'b00;
                        op        = in[2:0];
                        alu_en = 1;
                        acc_en = 0;
                        pcen1     = 1;
                        write_en = 0;
                        sel1 = 0;
                        sel2 = 0;
                        shift_en = 0;
                        r = {1'b1,in};
                    end
                    4'b1101 : begin
                            pcen1 = 1;
                            sel = 2'b00;
                            sel1 =0;
                            sel2 = 0;
                            acc_en = 0;
                            write_en = 0;
                            r = {1'b0,in};
                            op = in[2:0];
                            shift_en = 0;
                            alu_en = 1;
                    end
                    4'b1110 : begin
                            pcen1 = 0;
                            shift_en = 1;
                            op = {1'b0,in[1:0]};
                            acc_en = 0;
                            sel1 = 0;
                            sel2 = 0;
                            sel = 2'b00;
                            write_en = 0;
                            r = {1'b1,in};
                            alu_en = 1;
                    end
                    4'b1111 : begin
                    sel = 2'b00;
                    sel1 =0;
                    sel2 = 0;
                    acc_en = 0;
                    pcen1 = 0;
                    op = 0;
                    alu_en = 0;
                    shift_en = 0;
                    write_en = 0;
                    r = {1'b1,in};
                    end
                    
                    // TODO: Add logic for 1010, 1011, 1101, 1110, 1111
                endcase

                ALU: begin
                    pcen1    = 1;
                    acc_en = 1;
                    shift_en = 0;
                    alu_en = 1;
                    r = {1'b1,in};
                    sel = 2'b00;
                    sel1 = 1'b0;
                    sel2 = 1'b0;
//                    op = op;
                    op = in[2:0];
                    write_en = 0;
                    
                    
                end
                LOAD :begin
                    write_en = 0;
                    sel1 = 0;
                    sel2 = 0;
                    sel = 2'b10;
                    pcen1 = 0;
                    op = 3'b111;
                    r = {1'b1,in};
                    shift_en = 0;
                    alu_en = 1;
                    acc_en = 0;
                    
                end
                STORE: begin
                        r = {1'b1,in};
                        write_en = 1;
                        sel1 = 1;
                        sel2 = 1;
                        sel = 2'b00;
                        acc_en = 0;
                        pcen1     = 1;
                        shift_en = 0;
                        op = in[2:0];
                        alu_en = 1;
                        
                end
                BRANCH: begin
                    sel = 2'b10;
                    r = {1'b0,in};
                    sel1 = 0;
                    sel2 = 0;
                    pcen1 = 1;
                    acc_en = 0;
                    alu_en = 1;
                    shift_en = 0;
                    op = in[2:0];
                end
                BRANCHN: begin
                    if(zero_flag)begin
                        sel = 2'b10;
                        r = {1'b0,in};
                        op = in[2:0];
                        pcen1 = 1;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        shift_en = 0;
                        acc_en = 0;
                        alu_en = 1;
                    end
                    else begin
                        sel = 2'b00;
                        r = {1'b0,in};
                        op = in[2:0];
                        pcen1 = 1;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        shift_en = 0;
                        acc_en = 0;
                        alu_en = 1;
                    end
                end
                BRANCHZ: begin
                    if(!zero_flag)begin
                        sel = 2'b10;
                        r = {1'b0,in};
                        op = in[2:0];
                        pcen1 = 1;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        shift_en = 0;
                        acc_en = 0;
                        alu_en = 1;
                    end
                    else begin
                        sel = 2'b00;
                        r = {1'b0,in};
                        op = in[2:0];
                        pcen1 = 1;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        shift_en = 0;
                        acc_en = 0;
                        alu_en = 1;
                    end
                
                end
                IO : begin
                    sel = 2'b00;
                    sel1 =0;
                    sel2 = 0;
                    acc_en = 0;
                    pcen1 = 0;
                    op = 0;
                    alu_en = 0;
                    shift_en = 0;
                    write_en = 0;
                    r = {1'b1,in};
                    end
                    
//                
            endcase
        end
        
        
    end
    always @(posedge clk)
        begin
        opp <= op;
        end

endmodule


/*
`timescale 1ns / 1ps

module lipsi_fsm(
    input clk,
    input [7:0] in,
    input reset,                // active-low reset
    input zero_flag,
    output reg pcen1,
    output reg [1:0] sel,
    output reg sel1,
    output reg sel2,
    output reg alu_en,
    output reg write_en,
    output reg shift_en,
    output reg acc_en,
    output reg [2:0] op,
    output reg [8:0] r
//    output reg [3:0] current_state,
//    output reg [3:0] next_state
);

    reg [3:0] current_state;
    reg [3:0] next_state;
    parameter INSTRUCTION = 4'd0,
              ALU         = 4'd1,
              IO          = 4'd2,
              BRANCHN     = 4'd3,
              STORE       = 4'd4,
              BRANCH      = 4'd5,
              LOAD        = 4'd6,
              BRANCHZ     = 4'd7;

    // State update (async reset)
    always @(posedge clk or negedge reset) begin
        if (!reset)
            current_state <= INSTRUCTION;
        else
            current_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            INSTRUCTION: case (in[7:4])
                4'b0000, 4'b0001, 4'b0010, 4'b0011,
                4'b0100, 4'b0101, 4'b0110, 4'b0111: next_state = ALU;
                4'b1000: next_state = INSTRUCTION;
                4'b1001: next_state = INSTRUCTION;
                4'b1010: next_state = LOAD;
                4'b1011: next_state = STORE;
                4'b1100: next_state = ALU;
                4'b1101: begin
                        case(in[1:0])
                        2'b00,2'b01 : next_state = BRANCH;
                        2'b10 : next_state = BRANCHN;
                        2'b11 : next_state = BRANCHZ;
                        endcase 
                end
                4'b1110: next_state = ALU;
                4'b1111: next_state = IO;
                default: next_state = INSTRUCTION;
            endcase

//            ALU, HALT, STORE, BRANCH, LOAD, LINK, IO: next_state = INSTRUCTION;
 //               HALT : next_state = ALU;
                ALU : next_state = INSTRUCTION;
                LOAD : next_state = ALU;
                STORE : next_state = INSTRUCTION;
                BRANCH : next_state = INSTRUCTION;
                BRANCHN : next_state = INSTRUCTION;
                BRANCHZ : next_state = INSTRUCTION;

            default: next_state = INSTRUCTION;
        endcase
    end

    // Output logic (with reset)
    always @(*) begin
        if (!reset) begin
            // Clear all outputs on reset
            pcen1     = 1;
            sel       = 2'b00;
            sel1      = 0;
            sel2      = 0;
            alu_en    = 1;
            write_en  = 0;
            acc_en    = 0;
            op        = 3'b000;
            r         = 9'b000000000;
        end else begin
            // Default values each cycle
            pcen1     = 1;
            sel       = 2'b00;
            sel1      = 0;
            sel2      = 0;
            alu_en    = 1;
            write_en  = 0;
            acc_en    = 0;
            r         = 9'b000000000;

            case (current_state)
                INSTRUCTION: case (in[7:4])
                    4'b0000,4'b0001,4'b0010,4'b0011,
                    4'b0100,4'b0101,4'b0110,4'b0111: begin
                        op        = in[6:4];
                        r         = {5'b10000, in[3:0]};
//                        write_en  <= 1;
//                        sel1      <= 0;
//                        sel2      <= 1;
                        write_en = 0;
                        sel1 = 1;
                        sel2 = 1;
                        sel = 2'b10;
                        acc_en = 0;
                        pcen1     = 0;
                    end
                    4'b1000: begin
                        r         = {5'b10000, in[3:0]};
//                        sel       <= 2'b10;
                        write_en = 1;
                        sel1 = 1;
                        sel2 = 1;
                        acc_en = 0;
                        pcen1     = 1;
                    end
                    4'b1001: begin
                        write_en = 1;
                        sel1 = 1;
                        sel2 = 0;
                        sel       = 2'b01;
                        r         = {5'b10000, in[3:0]};
                        pcen1     = 1;
                        acc_en = 0;
                    end
                    4'b1010 : begin
                        r = {5'b10000,in[3:0]};
                        pcen1 = 0;
                        sel1 = 0;
                        sel2 = 0;
                        acc_en = 0;
                        sel = 2'b10;
                        write_en = 0;
                    end
                    4'b1011 : begin
                        r = {5'b10000,in[3:0]};
                        pcen1 = 0;
                        sel = 2'b10;
                        sel1 = 0;
                        sel2 = 0;
                        write_en = 0;
                        acc_en = 0;
//                        op = 3'b111;
                    end
                    4'b1100: begin
                        sel       = 2'b00;
                        op        = in[2:0];
                        alu_en = 1;
                        acc_en = 0;
                        pcen1     = 1;
                        write_en = 0;
                        sel1 = 0;
                        sel2 = 0;
                    
                    end
                    4'b1101 : begin
                            pcen1 = 1;
                            sel = 2'b00;
                            sel1 =0;
                            sel2 = 0;
                            acc_en = 0;
                            write_en = 0;
                    end
                    4'b1110 : begin
                            pcen1 = 0;
                            shift_en = 1;
                            op = {1'b0,in[1:0]};
                            acc_en = 0;
                            sel1 = 0;
                            sel2 = 0;
                            sel = 2'b00;
                            write_en = 0;
                    end
                    4'b1111 : begin
                    sel = 2'b00;
                    sel1 =0;
                    sel2 = 0;
                    acc_en = 0;
                    pcen1 = 0;
                    op = 0;
                    alu_en = 0;
                    end
                    
                    // TODO: Add logic for 1010, 1011, 1101, 1110, 1111
                endcase

                ALU: begin
                    pcen1    = 1;
                    acc_en = 1;
                end
                LOAD :begin
                    write_en = 0;
                    sel1 = 0;
                    sel2 = 0;
                    sel = 2'b10;
                    pcen1 = 0;
                    op = 3'b111;
                    r = {1'b1,in};
                end
                STORE: begin
                    r = {1'b1,in};
                    write_en = 1;
                        sel1 = 1;
                        sel2 = 1;
                        sel = 2'b00;
                        acc_en = 0;
                        pcen1     = 1;
                end
                BRANCH: begin
                    sel = 2'b10;
                    r = {1'b1,in};
//                    sel1 = 0;
//                    sel2 = 0;
                    pcen1 = 1;
                end
                BRANCHN: begin
                    if(zero_flag)begin
                        sel = 2'b10;
                        r = {1'b1,in};
                        pcen1 = 1;
                    end
                    else begin
                        sel = 2'b00;
                        r = {1'b1,in};
                        pcen1 = 1;
                    end
                end
                BRANCHZ: begin
                    if(!zero_flag)begin
                        sel = 2'b10;
                        r = {1'b1,in};
                        pcen1 = 1;
                    end
                    else begin
                        sel = 2'b00;
                        r = {1'b1,in};
                        pcen1 = 1;
                    end
                
                end
//                IO : begin
                    
//                end
            endcase
        end
    end

endmodule  */
