module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [4:0] c;
    assign c[0]=cin;
	genvar i;
    generate
        for(i=0;i<4;i++)begin:bcd_adder
          bcd_fadd add(.a(a[4*i+3:4*i]),.b(b[4*i+3:4*i]),.cin(c[i]),.sum(sum[4*i+3:4*i]),.cout(c[i+1]));
        end
        endgenerate
    assign cout=c[4];
endmodule
