
module illegal_move_detector(
   input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   input [8:0] ply_En_pos, 
   output wire illegal_move
   );
wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
wire temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19;
wire temp21,temp22;
// player : illegal moving    
assign temp1 = (pos1[1] | pos1[0]) & ply_En_pos[0];
assign temp2 = (pos2[1] | pos2[0]) & ply_En_pos[1];
assign temp3 = (pos3[1] | pos3[0]) & ply_En_pos[2];
assign temp4 = (pos4[1] | pos4[0]) & ply_En_pos[3];
assign temp5 = (pos5[1] | pos5[0]) & ply_En_pos[4];
assign temp6 = (pos6[1] | pos6[0]) & ply_En_pos[5];
assign temp7 = (pos7[1] | pos7[0]) & ply_En_pos[6];
assign temp8 = (pos8[1] | pos8[0]) & ply_En_pos[7];
assign temp9 = (pos9[1] | pos9[0]) & ply_En_pos[8];

// intermediate signals 
assign illegal_move =((((((((temp1 | temp2) | temp3) | temp4) | temp5) | temp6) | temp7) | temp8) | temp9);
// output illegal move 
endmodule 
