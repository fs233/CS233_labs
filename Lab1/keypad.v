module keypad(valid, number, a, b, c, d, e, f, g);
   output 	valid;
   output [3:0] number;
   input 	a, b, c, d, e, f, g;
   wire     w0, w00, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14;
   or       o1(w0, a, b, c);
   or       o2(w00, d, e, f, g);
   and      a1(valid, w0, w00);
   and      a3(w1, a, d);
   and      a4(w2, b, d);
   and      a5(w3, c, d);
   and      a6(w4, a, e);
   and      a7(w5, b, e);
   and      a8(w6, c, e);
   and      a9(w7, a, f);
   and      a10(w8, b, f);
   and      a11(w9, c, f);
   and      a12(w10, b, g);
   or       o3(w11, w1, w3, w5, w7, w9);
   or       o4(w12, w2, w3, w6, w7);
   or       o5(w13, w4, w5, w6, w7);
   or       o6(w14, w8, w9);
   assign   number[0]=w11;
   assign   number[1]=w12;
   assign   number[2]=w13;
   assign   number[3]=w14;
endmodule // keypad