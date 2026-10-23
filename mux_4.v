
module mux_4(

input [3:0] in_ceo, in_you, in_fred, in_jill,
input [1:0] sel,
input enable,
output[3:0] y

    );
    
    
   assign y = !enable ? 4'b0000 :
   sel == 2'b00 ? in_ceo :
   sel == 2'b01 ? in_you :
   sel == 2'b10 ? in_fred : in_jill ;
   
endmodule
