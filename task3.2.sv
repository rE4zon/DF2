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


module RCA(input  logic [3:0] A,
           input  logic [3:0] B,
                      input  logic cin,
                      output logic cout, 
                      output logic [3:0] sum);
  wire C1,C2,C3; 
  
   full_adder U0 (
        .sum(sum[0]),
     	.A(A[0]),
     	.B(B[0]),
        .cout(C1),
        .cin(cin)
    );

    full_adder U1 (
        .sum(sum[1]),
      	.A(A[1]),
      	.B(B[1]),
        .cout(C2),
        .cin(C1)
    );

    full_adder U2 (
        .sum(sum[2]),
      	.A(A[2]),
      	.B(B[2]),
        .cout(C3),
        .cin(C2)
    );

    full_adder U3 (
        .sum(sum[3]),
      	.A(A[3]),
      	.B(B[3]),
        .cout(cout),
        .cin(C3)
    );

endmodule