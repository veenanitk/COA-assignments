// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
// 14 oct 2018

module dflipflop(Q,Qn,C,D);
   output Q,Qn;
   input C,D;
  
   wire Cn;   // Control input to the D latch.
   wire DQ;   
   wire DQn;  
   
   not(Cn,C);
   d_latch dl(DQ,DQn,Cn,D);
endmodule 

// D-Latch
module d_latch(Q,Qn,G,D);
   output Q,Qn;
   input G,D;   
   
   wire Dn,D1,Dn1; 
   
   not(Dn,D);   
   and(D1,G, D);
   and(Dn1,G, Dn);   
   nor(Qn,D1,Q);
   nor(Q,Dn1,Qn);
endmodule

