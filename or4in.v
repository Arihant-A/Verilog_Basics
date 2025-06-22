`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 18:26:31
// Design Name: 
// Module Name: or4in
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


module or4in(
    input wire a,b,c,d,
    output wire y
    );
    or (y, a, b, c, d); //assign y = a | b | c | d;

endmodule
