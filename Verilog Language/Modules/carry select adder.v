module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] l_sum,sum1,sum2,u_sum;
    wire cout1,cout2,cout3;
    add16 a1 (a[15:0],b[15:0],0,l_sum,cout1);
    add16 a2 (a[31:16],b[31:16],0,sum1,cout2);
    add16 a3 (a[31:16],b[31:16],1,sum2,cout3);
    assign u_sum = cout1 ? sum2 : sum1;
    assign sum = {u_sum,l_sum};

endmodule
