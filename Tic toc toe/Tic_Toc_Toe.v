module tic_tac_toe_game(
     input clock, 
     input reset,
     input [3:0] players_position, 

     output wire [1:0] pos1,pos2,pos3,
                       pos4,pos5,pos6,pos7,pos8,pos9,
     output wire[1:0]who ,
     output win
     );

wire XO_turn = 1'b0;
wire pl_X_play; // computer enabling signal 
wire pl_O_play;

     // 01: Player X
     // 10: Player O
     
//  plO_turn = 1
//  PlX_turn = 0

wire [15:0] ply_En_pos;
wire no_space;
wire illegal_move;

 position_decoder pos_decoder( 
      players_position ,
      XO_turn ,
      ply_En_pos); 

 position_registers position_reg_unit(
      clock,                                                                                      // clock of the game 
      reset,                                                                                          // reset the game 
      illegal_move,
      XO_turn,                                                                                   // disable writing when an illegal move is detected 
      ply_En_pos[8:0],                                                        // Computer enable signals 
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9                                // positions stored
      );
 // winner detector 

 winner_detector win_detect_unit(
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
      win,
      who);


 // illegal move detector

  illegal_move_detector imd_unit(
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
      ply_En_pos[8:0], 
      illegal_move
      );


 // no space detector 

 nospace_detector nsd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   no_space
    ); 
 /*fsm_controller tic_tac_toe_controller(
     clock,// clock of the circuit 
     reset,// reset 
     XO_turn,  
     illegal_move,// illegal move detected 
     no_space, // no_space detected 
     win, // winner detected
     pl_X_play, // computer enabling signal 
     pl_O_play,
     );*/   
endmodule;