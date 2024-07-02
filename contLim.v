module contLim(clk, p, q1, q2, q3, q4);
	input clk, p;
	output q1, q2, q3, q4;
	
	
	//ff para as unidades	
	dFlipFlop(q1_, p, clk, 1'b0, q1, q1_);
	
	xor(w1, q1_, q2);
	dFlipFlop(w1, 1'b0, clk, p, q2, q2_);
	
	and(w2, q2_, q1_);
	xor(w3, w3, q3);
	dFlipFlop(w3, p, clk, 1'b0, q3, q3_);
	
	and(w4, w2, q3_);
	xor(w5, w4, q4);
	dFlipFlop(w5, 1'b0, clk, p, q4, q4_);

	endmodule
	