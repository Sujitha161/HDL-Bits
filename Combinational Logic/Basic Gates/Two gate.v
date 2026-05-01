module top_module (
    input in1,
    input in2,
    input in3,
    output out);
wire q;
    assign q= ~(in1^in2);
    assign out = q^in3;
endmodule
