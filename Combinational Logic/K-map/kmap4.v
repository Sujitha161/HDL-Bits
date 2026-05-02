module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    wire out1,out2;
    assign out1 = a^b;
    assign out2=c^d;
    assign out=out1^out2;
endmodule
