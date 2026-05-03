module top_module (
	input clk,
	input L,
    input r_in,
    input q_in,
	output reg Q);
        always@(posedge clk)begin
        Q <= L ? r_in : q_in;
    end
endmodule
/*module block(input clk,L,
             input [2:0]r_in,
             output reg[2:0] Q);
    wire q_in2;
    assign q_in2 = Q[2]^Q[1];
    top_module  b1 (.clk(clk),.L(L),.r_in(r_in[0]),.q_in(Q[2]),.Q(Q[0]));
    top_module  b2 (.clk(clk),.L(L),.r_in(r_in[1]),.q_in(Q[0]),.Q(Q[1])); 
    top_module  b3 (.clk(clk),.L(L),.r_in(r_in[2]),.q_in(q_in2),.Q(Q[2]));
endmodule */
