`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2025 21:50:02
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(
    input wire [2:0]a,
    input wire en,
    output reg [7:0]y
    );

always @(*) begin
    y[0] = en & (~a[2]) & (~a[1]) & (~a[0]);
    y[1] = en & (~a[2]) & (~a[1]) &  a[0];
    y[2] = en & (~a[2]) &  a[1]  & (~a[0]);
    y[3] = en & (~a[2]) &  a[1]  &  a[0];
    y[4] = en &  a[2]  & (~a[1]) & (~a[0]);
    y[5] = en &  a[2]  & (~a[1]) &  a[0];
    y[6] = en &  a[2]  &  a[1]  & (~a[0]);
    y[7] = en &  a[2]  &  a[1]  &  a[0];
end

endmodule
