module fsm_controller(
     input clock,                                                     // clock of the circuit 
     input reset,                                                     // reset 
     turn_XO,
     illegal_move,                                                    // illegal move detected 
     no_space,                                                        // no_space detected 
     win,                                                              // winner detected 
     output reg player_O_play, // enable computer to play 
     player_X_play // enable player to play 
     );

// FSM States 
parameter IDLE=2'b00;
parameter PLAYER_X=2'b01;
parameter PLAYER_O=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
// current state registers 
always @(posedge clock or posedge reset) 
begin 
 if(reset)
  current_state <= IDLE;
 else 
  current_state <= next_state;
end 
 // next state 
always @(*)
 begin
 case(current_state)
 

IDLE: begin 
  if(reset==1'b0 && turn_XO == 1'b1)
   next_state <= PLAYER_O; // player O to play 
  else 
   next_state <= IDLE;
  player_O_play <= 1'b0;
  player_X_play <= 1'b0;
 end 
 

PLAYER_O:begin 
  player_O_play <= 1'b1;
  player_X_play <= 1'b0;
  if(illegal_move==1'b0)
   next_state <= PLAYER_X; // computer to play 
  else 
   next_state <= IDLE;
 end 
 

PLAYER_X:begin 
  player_O_play <= 1'b0;
  if(turn_XO==1'b0) begin 
   next_state <= PLAYER_X;
   player_X_play  <= 1'b1;
  end
  else if(win==1'b0 && no_space == 1'b0)
  begin 
   next_state <= IDLE;
   player_X_play  <= 1'b1;// computer to play when PC=1
  end 
  else if(no_space == 1'b1 || win ==1'b1)
  begin 
   next_state <= GAME_DONE; // game done 
   player_X_play <= 1'b1;// computer to play when PC=1
  end  
 end 
 

GAME_DONE:begin // game done
  player_O_play <= 1'b0;
  player_X_play <= 1'b0; 
 // turn_XO <= 1'b0; 
  if(reset==1'b1) 
   next_state <= IDLE;// reset the game to IDLE 
  else 
   next_state <= GAME_DONE;  
 end 
 default: next_state <= IDLE; 
 endcase
 end
endmodule 