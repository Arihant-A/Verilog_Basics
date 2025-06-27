`timescale 1ns / 1ps

module Full_add_1bit(input a, b, cin, output sum, cout);
  assign sum  = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
