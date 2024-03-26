`timescale 1ns / 1ps

module ALU_1 (A, B, Op, e, R);
 //inputs, outputs and internal variables declared here
 input [7:0] A, B;
 input [3:0] Op;
 output reg [7:0] R;
 output reg e;
 
 always @ (*)
 begin
 case(Op)
 0 : begin {e,R} <= A + B; $display("Addition:");  end  
 1 : begin {e,R} <= A - B; $display("Subtraction:");  end  
 2 : begin R <= A * B; $display("Multiplication:");  end  
 3 : begin R <= A / B; $display("Division:");  end  
 4 : begin R <= A << 1; $display("Left Shift:");  end  
 5 : begin R <= A >> 1; $display("Right Shift");  end  
 6 : begin R <= A<<1; e <= A[7]; R[0] <= e; $display("Left Rotate:");  end
 7 : begin R <= A>>1; e <= A[0]; R[7] <= e; $display("Right Rotate:");  end
 8 : begin R <= A & B; $display("AND:");  end
 9 : begin R <= A | B; $display("OR:");  end
 10 : begin R <= A ^ B; $display("XOR:");  end
 11 : begin R <= ~(A & B); $display("NAND:");  end
 12 : begin R <= ~(A | B); $display("NOR:");  end
 13 : begin R <= ~A ; $display("NOT:");  end
 14 : begin R <= ~A + 8'b00000001 ; $display("2's Complement:");  end
 15 : begin R <= (A == B) ? 1'b1 : 1'b0 ;  $display("Equal or not:");  end
 endcase
 end
endmodule