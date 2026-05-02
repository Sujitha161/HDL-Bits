module top_module( 
    input a, b, cin,
    output cout, sum );
    assign sum = a^b^cin;
    assign cout= a&cin|cin&b|a&b;
endmodule
