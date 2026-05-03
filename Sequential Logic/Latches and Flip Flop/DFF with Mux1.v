module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    wire q;
    assign q = E ? w : Q;
    always@(posedge clk)begin
        Q <= L ? R : q;
    end
endmodule
