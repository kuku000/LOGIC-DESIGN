  

 module Dff(clk,niceplay,rst,climax,count,contents);

    output climax;

    output reg [7:0] count;
    
    output reg[2:0]  contents;
     
    input clk,niceplay,rst;
 
    reg climax;

    wire o;

    always@(posedge clk,posedge rst) begin

       if(rst) begin

         climax<=1'b0;

       end

       else begin

         climax<= niceplay;

       end
   end

   assign o=climax;

   always@(posedge clk,posedge rst) begin

      if(rst) begin

        count<=8'b0;

      end

      else begin

        if(o==1) begin
          count<=count+1;
         end
      end
   end


   always @(count) begin
        case(count)
            8'b00000001 :   contents <= 3'b000;

            8'b00000010 :   contents <= 3'b001;

            8'b00000100 :   contents <= 3'b010;

            8'b00001000 :   contents <= 3'b011;

            8'b00010000 :   contents <= 3'b100;

            8'b00100000 :   contents <= 3'b101;

            8'b01000000 :   contents <= 3'b110;

            8'b10000000 :   contents <= 3'b111;

            default:        contents <= 3'bxxx;

        endcase
   end
endmodule
 

 











