
`timescale 1ns / 1ps
module t_pos_registr;

     reg clock;                                           
     reg reset;                                                           
     reg  illegal_move;
     reg  XO_turn;                                                   
     reg  [8:0] ply_En_pos;                                                    
     // input [8:0] ply_En_pos,                                                 
     wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;

position_registers T_p_r(
      .clock(clock),
      .reset(reset),
      .XO_turn(XO_turn),
      .illegal_move(illegal_move),
      .ply_En_pos(ply_En_pos),
  .pos1(pos1), 
  .pos2(pos2), 
  .pos3(pos3), 
  .pos4(pos4), 
  .pos5(pos5), 
  .pos6(pos6), 
  .pos7(pos7), 
  .pos8(pos8), 
  .pos9(pos9)

);        
initial 
   begin
//  Initialize Inputs
  reset = 1;
  clock = 1;
  XO_turn = 2'b10;
  illegal_move = 0;
  #100;
  reset = 0;
  #100;
  ply_En_pos = 1'b1;
  #100;
  ply_En_pos = 2'b10;
  #100;
  ply_En_pos = 3'b100;
  #100;
  ply_En_pos = 4'b1000;
end 
endmodule;