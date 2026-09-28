module mux_4to1 (input logic A,B,C,D,
              	input logic [1:0]sel,
              	output logic Y);
  
  assign Y = sel[1] ? (sel[0] ? D : C) : (sel[0] ? B : A);

endmodule