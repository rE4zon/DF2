module mux2to1 (input logic A,
                input logic B,
                input logic sel,
               	output logic y);
  
  assign y = sel ? B : A;
  
endmodule