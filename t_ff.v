`timescale 1ns / 1ps



module t_ff(q,t,clc,rst);
input t,clc,rst;
output reg q;
always @ (posedge clc or posedge rst)
begin 
if (rst)
  q=1'b0;
  else
  
  begin
   if (t)
   q=~q;
   else 
      q=q;
      end
  end     
endmodule
