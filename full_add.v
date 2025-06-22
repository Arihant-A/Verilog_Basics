`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2025 22:48:00
// Design Name: 
// Module Name: full_add
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


module full_add(
    input wire a,b,c,
    output wire carry,sum
    );
    wire s1,c1,c2;
    half_add x1(.a(a),.b(b),.sum(s1),.carry(c1));
    half_add x2(.a(s1),.b(c),.sum(sum),.carry(c2));
    assign carry = c1 | c2;
endmodule
