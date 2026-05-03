module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg[31:0]p_in;
    always@(posedge clk)begin
        if(reset) begin
            out <= 0;
        	p_in <= 0;
        end
        else begin
            out<=(p_in & ~in)|out;
             p_in <= in;
        end
    end
endmodule
