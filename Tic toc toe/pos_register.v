module position_registers(
      input clock,                                                          // clock of the game 
      input reset,                                                          // reset the game 
      input illegal_move,
      input XO_turn,                                                   // disable writing when an illegal move is detected 
      input [8:0] ply_En_pos,                                                     // Computer enable signals 
     // input [8:0] ply_En_pos,                                                    // Player enable signals 
      output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9          // positions stored
      );
//pos 1
always @(*)
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos1 <= pos1;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos1 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos1 <= 2'b01;                                                             // store player data 
   else 
    pos1 <= pos1;                                                            // keep previous position
  end 
 end 

//pos 2
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos2 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos2 <= pos1;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos2 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos2 <= 2'b01;                                                             // store player data 
   else 
    pos2 <= pos2;                                                            // keep previous position
  end 
 end 

//pos 3
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos3 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos3 <= pos3;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos3 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos3 <= 2'b01;                                                             // store player data 
   else 
    pos3 <= pos3;                                                            // keep previous position
  end 
 end 

//pos 4
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos4 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos4 <= pos4;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos4 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos4 <= 2'b01;                                                             // store player data 
   else 
    pos4 <= pos4;                                                            // keep previous position
  end 
 end 

//pos 5
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos5 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos5 <= pos1;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos5 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos5 <= 2'b01;                                                             // store player data 
   else 
    pos5 <= pos5;                                                            // keep previous position
  end 
 end 

//pos 6
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos6 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos6 <= pos1;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos6 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos6 <= 2'b01;                                                             // store player data 
   else 
    pos6 <= pos6;                                                            // keep previous position
  end 
 end 

//pos 7
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos7 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos7 <= pos7;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos7 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos7 <= 2'b01;                                                             // store player data 
   else 
    pos7 <= pos7;                                                            // keep previous position
  end 
 end 

//pos 8

always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos8 <= pos1;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos8 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos8 <= 2'b01;                                                             // store player data 
   else 
    pos8 <= pos8;                                                            // keep previous position
  end 
 end 
//pos 9
always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos9 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos9 <= pos9;                                                            // keep previous position
   else if(ply_En_pos[0]==1'b1&&XO_turn==1'b0)
    pos9 <= 2'b10;                                                           // store computer data 
   else if (ply_En_pos[0]==1'b1&&XO_turn==1'b1)
    pos9 <= 2'b01;                                                             // store player data 
   else 
    pos9 <= pos9;                                                            // keep previous position
  end 
 end 
endmodule

