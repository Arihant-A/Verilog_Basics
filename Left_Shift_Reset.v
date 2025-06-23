`timescale 1ns / 1ps

module shift_register_8bit (
    input wire clk,
    input wire rst,
    input wire en,
    input wire serial_in,
    output wire q,         // MSB output
    output wire qbar       // Complement of MSB
);

    wire [7:0] d;
    wire [7:0] q_internal;

    // D input connections for shift-left behavior
    assign d[0] = serial_in;
    assign d[1] = q_internal[0];
    assign d[2] = q_internal[1];
    assign d[3] = q_internal[2];
    assign d[4] = q_internal[3];
    assign d[5] = q_internal[4];
    assign d[6] = q_internal[5];
    assign d[7] = q_internal[6];

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : dffs
            wire d_in = en ? d[i] : q_internal[i];  // hold if not enabled
            d_ff dff_inst (
                .d(d_in),
                .clk(clk),
                .rst(rst),
                .q(q_internal[i]),
                .qbar()       // Not used for internal stages
            );
        end
    endgenerate

    assign q = q_internal[7];     // MSB
    assign qbar = ~q_internal[7];

endmodule
