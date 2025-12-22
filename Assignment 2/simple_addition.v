module simple_adder(
    input [3:0] a, b,     
    output reg [4:0] sum );

always @(*)
begin
$display("Simulation started for the adder module");
    sum = a + b; 
end

endmodule
