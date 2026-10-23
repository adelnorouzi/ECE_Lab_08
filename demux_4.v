
module demux_4(


input[3:0] in, 
input [1:0] sel,
input enable,
output[3:0] out_library, out_fire,out_school,out_rib

    );
    
    
   assign out_library = enable ? (sel == 2'b00 ? in : 4'b0000) : 4'b0000;
   assign out_fire = enable ? (sel == 2'b01 ? in : 4'b0000) : 4'b0000;
   assign out_school = enable ? (sel == 2'b10 ? in : 4'b0000) : 4'b0000;
   assign out_rib = enable ? (sel == 2'b11 ? in : 4'b0000) : 4'b0000;
   
       
endmodule
