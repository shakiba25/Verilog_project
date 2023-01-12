module winner_detector(
            input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
            output reg win,
            output reg [1:0]who);
reg [1:0]X  ;
reg [1:0]O  ;

      always @(*)
      begin
      X <= 2'b10;
      O <= 2'b01;


       if(pos1==X && pos2==X && pos3==X )                  /////////// X Winner
          begin
              win <= 1'b1;
              who <= 2'b01;
           end 
       
       else if(pos4==X && pos5==X && pos6==X )
          begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos7==X && pos8==X && pos9==X )
           begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos1==X && pos4==X && pos7==X )
          begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos2==X && pos5==X && pos8==X )
           begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos3==X && pos6==X && pos9==X )
           begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos1==X && pos5==X && pos9==X )
           begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else if(pos3==X && pos5==X && pos7==X )
           begin
              win <= 1'b1;
              who <= 2'b01;
           end

       else
           begin
              win <= 1'b0;
              who <= 2'b00;
           end

       if(pos1==O && pos2==O && pos3==O )                 // o winner
           begin
              win <= 1'b1;
              who <= 2'b10;
           end
       else if(pos4==O && pos5==O && pos6==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end 
       else if(pos7==O && pos8==O && pos9==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end 
       else if(pos1==O && pos4==O && pos7==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end 
       else if(pos2==O && pos5==O && pos8==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end 
       else if(pos3==O && pos6==O && pos9==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end     
      else if(pos1==O && pos5==O && pos9==O )
          begin
              win <= 1'b1;
              who <= 2'b10;
           end
       else if(pos3==O && pos5==O && pos7==O )
           begin
              win <= 1'b1;
              who <= 2'b10;
           end
       else
           begin
              win <= 1'b0;
              who <= 2'b00;
           end
     end

endmodule;