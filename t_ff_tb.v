`timescale 1ns / 1ps



module t_ff_tb;
reg t,clc,rst;
wire q;
t_ff uut(q,t,clc,rst);
always #10 clc=~clc;
initial begin
t=1; clc=1; rst=1;
#100
#40 t=0; rst=0;
#60 t=1;
#80 t=0;
 
 end
endmodule
