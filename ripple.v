`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2025 00:52:37
// Design Name: 
// Module Name: ripple
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


module ripple(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire m,
    output wire [3:0] sum,
    output wire carry
    );
    wire q0,q1,q2,q3,c0,c1,c2;
    assign q0 = a[0] ^ m;
    assign q1 = a[1] ^ m;
    assign q2 = a[2] ^ m;
    assign q3 = a[3] ^ m;
    
    full_add x1(.a(q0),.b(b[0]),.c(m),.carry(c0),.sum(sum[0]));
    full_add x2(.a(q1),.b(b[1]),.c(c0),.carry(c1),.sum(sum[1]));
    full_add x3(.a(q2),.b(b[2]),.c(c1),.carry(c2),.sum(sum[2]));
    full_add x4(.a(q3),.b(b[3]),.c(c2),.carry(carry),.sum(sum[3]));
endmodule
