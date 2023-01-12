module position_decoder(
     
      input[3:0] in_pos ,
    //  input turn_enable,
      output reg [15:0] temp1 );
 
 always @(*)
 begin
 case(in_pos)

 4'd1: temp1 <= 16'b0000000000000001; //1    
 4'd2: temp1 <= 16'b0000000000000010; //2 
 4'd3: temp1 <= 16'b0000000000000100; //4
 4'd4: temp1 <= 16'b0000000000001000; //8
 4'd5: temp1 <= 16'b0000000000010000; //16
 4'd6: temp1 <= 16'b0000000000100000; //32
 4'd7: temp1 <= 16'b0000000001000000; //64
 4'd8: temp1 <= 16'b0000000010000000; //128
 4'd9: temp1 <= 16'b0000000100000000; //256

 default: temp1 <= 16'b0000000000000000;  
 endcase 
end 
endmodule 




 /*4'd0: temp1 <= 16'b0000000000000001;
 4'd1: temp1 <= 16'b0000000000000010; 
 4'd2: temp1 <= 16'b0000000000000100;
 4'd3: temp1 <= 16'b0000000000001000;
 4'd4: temp1 <= 16'b0000000000010000;
 4'd5: temp1 <= 16'b0000000000100000;
 4'd6: temp1 <= 16'b0000000001000000;
 4'd7: temp1 <= 16'b0000000010000000;
 4'd8: temp1 <= 16'b0000000100000000;
 4'd9: temp1 <= 16'b0000001000000000;
 4'd10: temp1 <= 16'b0000010000000000;
 4'd11: temp1 <= 16'b0000100000000000;
 4'd12: temp1 <= 16'b0001000000000000;
 4'd13: temp1 <= 16'b0010000000000000;
 4'd14: temp1 <= 16'b0100000000000000;
 4'd15: temp1 <= 16'b1000000000000000;
 default: temp1 <= 16'b0000000000000000;*/
