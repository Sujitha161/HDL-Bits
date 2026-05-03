module top_module (
    input clk,
    input j,
    input k,
    output Q); 
    always@(posedge clk)begin
        case(j)
            0: begin
                case(k) 
                    0: Q<=Q;
                    1: Q<=0;
                endcase
            end
            1: begin
                case(k) 
                    0: Q<=1;
                    1: Q<=~Q;
                endcase
            end
        endcase
    end
endmodule
