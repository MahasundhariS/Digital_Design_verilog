 module dff (
    input d,
    input clk,
    input rst,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b1;   // For down counter, start from 1
    else
        q <= d;
end

endmodule
module sync_down_counter_4bit (
    input clk,
    input rst,
    output [3:0] q
);

wire d0, d1, d2, d3;

// Next-state logic
assign d0 = ~q[0];
assign d1 = q[1] ^ (~q[0]);
assign d2 = q[2] ^ (~q[1] & ~q[0]);
assign d3 = q[3] ^ (~q[2] & ~q[1] & ~q[0]);

// D Flip-Flops (same clock → synchronous)
dff ff0 (.d(d0), .clk(clk), .rst(rst), .q(q[0]));
dff ff1 (.d(d1), .clk(clk), .rst(rst), .q(q[1]));
dff ff2 (.d(d2), .clk(clk), .rst(rst), .q(q[2]));
dff ff3 (.d(d3), .clk(clk), .rst(rst), .q(q[3]));

endmodule
