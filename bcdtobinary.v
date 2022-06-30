module bcdtobinary(clk,load,reset,in,out);
input clk;
input load;
input reset;
input [3:0] in;
output [7:0] out;
reg [7:0] out;
always@ (in)
begin
    case(in)
        4'b0000 :
            out = 8'b1100_0000;
        4'b0001 :
            out = 8'b1111_1001;
        4'b0010 :
            out = 8'b1010_0100;
        4'b0011 :
            out = 8'b1011_0000;
        4'b0100 :
            out = 8'b1001_1001;
        4'b0101 :
            out = 8'b1001_0010;
        4'b0110 :
            out = 8'b1000_0010;
        4'b0111 :
            out = 8'b1111_1000;
        4'b1000 :
            out = 8'b1000_0000;
        4'b1001 :
            out = 8'b1001_0000;
        4'b1010 :
            out = 8'b1010_0000;
        4'b1011 :
            out = 8'b1000_0011;
        4'b1100 :
            out = 8'b1010_0111;
        4'b1101 :
            out = 8'b1010_0001;
        4'b1110 :
            out = 8'b1000_0100;
        4'b1111 :
            out = 8'b1111_0001;
        default out = 8'b1111_1111;
    endcase
end
always@ (posedge clk or posedge load or posedge reset )
begin
    if(load == 1'b1)
    begin
        out <= 8'b1111_0001;
    end
    else if(reset == 1'b1)
    begin
        out <= 8'b1100_0000;
    end
end
endmodule
