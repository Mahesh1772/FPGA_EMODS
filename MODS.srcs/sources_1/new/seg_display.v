`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2024 01:02:46
// Design Name: 
// Module Name: seg_display
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


module seg_display(
    input clk,
    input is_continue,
    input [5:0] nums_gen_so_far,
    input [3:0] num,
    output reg [3:0] an,
    output reg [6:0] seg
    );
    
    reg [1:0] counter = 0;
    parameter max_no_of_random_nums = 20;
    
    wire clk_10khz;
    flexible_clock clk_10kHz (clk, 4999, clk_10khz); 
    
    always @ (clk_10khz) begin
        if (num < 10 && is_continue && nums_gen_so_far != max_no_of_random_nums) begin
            an = 4'b1110;
            case (num)
                0: seg = 7'b1000000;
                1: seg = 7'b1111001;
                2: seg = 7'b0100100;
                3: seg = 7'b0110000;
                4: seg = 7'b0011001;
                5: seg = 7'b0010010;
                6: seg = 7'b0000010;
                7: seg = 7'b1111000;
                8: seg = 7'b0000000;
                9: seg = 7'b0011000;             
            endcase
        end
        /*
        else if (num == 10 && is_continue && nums_gen_so_far != max_no_of_random_nums) begin
           case(counter)
                0: begin
                    an = 4'b1110;
                    seg = 7'b1000000; 
                end
                1: begin
                    an = 4'b1101; 
                    seg = 7'b1111001; 
                end
            endcase
        end
        
        else if (num == 11 && is_continue && nums_gen_so_far != max_no_of_random_nums) begin
           case(counter)
                0: begin
                    an = 4'b1110; 
                    seg = 7'b1111001; 
                end
                1: begin
                    an = 4'b1101;
                    seg = 7'b1111001;
                end
            endcase
        end
          
        */
        else begin
            an = 4'b1111;
            seg = 7'b1111111;
        end
        counter <= counter + 1;
        /*
        if (num == 12) begin
           case(counter)
                0: begin
                    an = 4'b1110; 
                    seg = 7'b0100100; 
                end
                1: begin
                    an = 4'b1101;
                    seg = 7'b1111001;
                end
            endcase
        end
        
        if (num == 13) begin
           case(counter)
                0: begin
                    an = 4'b1110; 
                    seg = 7'b0110000; 
                end
                1: begin
                    an = 4'b1101;
                    seg = 7'b1111001;
                end
            endcase
        end
        
        if (num == 14) begin
           case(counter)
                0: begin
                    an = 4'b1110; 
                    seg = 7'b0011001; 
                end
                1: begin
                    an = 4'b1101;
                    seg = 7'b1111001;
                end
            endcase
        end
        
        if (num == 15) begin
           case(counter)
                0: begin
                    an = 4'b1110; 
                    seg = 7'b0010010; 
                end
                1: begin
                    an = 4'b1101;
                    seg = 7'b1111001;
                end
            endcase
        end
        */
    end
endmodule