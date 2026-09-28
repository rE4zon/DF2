module full_adder(input  logic A,
                  input  logic B,
                  input  logic cin,
                  output logic sum, 
                  output logic cout);
  
logic xor1,and1,and2;
  
  assign xor1 = A ^ B;
  assign and1 = A & B;
  assign and2 = xor1 & cin;
  
  assign sum  = xor1 ^ cin;
  assign cout = and1 | and2;
  
endmodule