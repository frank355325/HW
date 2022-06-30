module bcdtobinary_tb;
reg clk_tb;
reg load_tb;
reg reset_tb;
reg[3:0] in_tb;
wire[7:0] out_tb;
bcdtobinary bla(.clk(clk_tb),.load(load_tb),.reset(reset_tb),.in(in_tb),.out(out_tb));
initial
begin
    clk_tb = 0;
    #10 in_tb = 4'b0000;
    #10 in_tb = 4'b0001;
    #10 in_tb = 4'b0010;
    #10 in_tb = 4'b0011;
    #10 in_tb = 4'b0100;
    #10 in_tb = 4'b0101;
    #10 in_tb = 4'b0110;
    #10 in_tb = 4'b0111;
    #10 in_tb = 4'b1000;
    #10 in_tb = 4'b1001;
    #10 in_tb = 4'b1010;
    #10 in_tb = 4'b1011;
    #10 in_tb = 4'b1100;
    #10 in_tb = 4'b1101;
    #10 in_tb = 4'b1110;
    #10 in_tb = 4'b1111;
    #10 load_tb = 1'b1;
    #10 load_tb = 1'b0;
    #10 reset_tb = 1'b1;
    #10 reset_tb = 1'b0;
    $finish;
end
always #5 clk_tb = ~clk_tb;
initial
begin
    $dumpfile("bcdtobinary.vcd");
    $dumpvars(0, bcdtobinary_tb);
end
endmodule
