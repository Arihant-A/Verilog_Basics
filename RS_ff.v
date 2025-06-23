module sr_ff (
    input wire s,       // Set input
    input wire r,       // Reset input
    input wire clk,     // Clock input
    output reg q,       // Output
    output reg qbar     // Inverted output
);
    always @(posedge clk) begin
        if (r && ~s) begin
            q <= 0;
            qbar <= 1;
        end
        else if (~r && s) begin
            q <= 1;
            qbar <= 0;
        end
        else if (~r && ~s) begin
            q <= q;
            qbar <= qbar;
        end
        else begin // r == 1 && s == 1 (invalid)
            q <= 0;
            qbar <= 0;
        end
    end
endmodule
