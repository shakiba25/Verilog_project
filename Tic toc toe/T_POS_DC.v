`timescale 1ns / 1ps

module T_POS_DC;

      reg [3:0] in_pos ;
     // reg turn_enable;
      wire [15:0] temp1 ;

position_decoder dc(
     .in_pos(in_pos),    
     //.turn_enable(turn_enable),
     .temp1(temp1)
          );
 initial 
   begin
//  Initialize Inputs

  #100;
  in_pos = 1;
  #100;

  in_pos = 2;
  #100;
  in_pos = 3;
  #100;
  in_pos = 4;
  #100;

  in_pos = 5;
  #100;
  in_pos = 6;
  #100;
  in_pos = 7;
  #100;

  in_pos = 8;
 #100;

  in_pos = 9;
end
endmodule;
