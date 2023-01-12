`timescale 1ns / 1ps
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog testbench code for TIC TAC TOE GAME 

module tb_tic_tac_toe;

 // Inputs
     reg clock; 
     reg reset;
     reg [3:0] players_position; 
 // Outputs
 
     wire [1:0] pos1,
                 pos2,
                 pos3,
                 pos4,
                 pos5,
                 pos6,
                 pos7,
                 pos8,
                 pos9;
    wire win; 
    wire[1:0]who ;
 // Instantiate the Unit Under Test (UUT)
 tic_tac_toe_game uut (
  .clock(clock), 
  .reset(reset), 
  .players_position( players_position),  
  .pos1(pos1), 
  .pos2(pos2), 
  .pos3(pos3), 
  .pos4(pos4), 
  .pos5(pos5), 
  .pos6(pos6), 
  .pos7(pos7), 
  .pos8(pos8), 
  .pos9(pos9), 
  .who(who),
  .win(win)
 );
 
 initial 
   begin
//  Initialize Inputs
  reset = 1;
  clock = 1;
  #100;
  reset = 0;
  #100;

 players_position= 4;


  #50;
 players_position = 0;

  #100;

 players_position = 5;

  #50;

players_position = 1;

  #100;

 players_position = 6;

  #50;
players_position = 2;

  end
      
endmodule
