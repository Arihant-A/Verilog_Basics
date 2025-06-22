`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2025 20:23:56
// Design Name: 
// Module Name: mux2x1b
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


module mux2x1b(
    input wire x,
    input wire y,
    input wire s,
    output reg f
    );
    always @(*) begin
        if (s == 1'b0)
            f=x;
        else
            f=y;
     end
endmodule
