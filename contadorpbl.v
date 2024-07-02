module contadorpbl(clk, ff1, ff2, q1, q2, q3, q4, Q1, Q2);
	input clk, ff1, ff2;
	output q1, q2, q3, q4, Q1, Q2;
	
	
	//dFlipFlop(
	//dFlipFlop(
	//os dois flipflops dos estados vão aqui, por enquanto eles são inputs
	
	//enchimento 00
	and(w00, !ff1, !ff2);
	and(w00clk, w00, clk);
	
	Levl_to_pulse(w00, clk, p00);
	
	contEnch(w00clk, p00, eq1, eq2, eq3, eq4, eQ1);
	
	
	//gotejamento 01
	and(w01, ff1, !ff2);
	and(w01clk, w01, clk);
	
	Levl_to_pulse(w01, clk, p01);
	
	contGot(w01clk, p01, gq1, gq2, gq3, gq4, gQ1, gQ2);
	
	
	//aspersão 10
	and(w10, !ff1, ff2);
	and(w10clk, w10, clk);
	
	Levl_to_pulse(w10, clk, p10);
	
	contAs(w10clk, p10, aq1, aq2, aq3, aq4, aQ1, aQ2);
	
	
	//lempeza 11
	and(w11, ff1, ff2);
	and(w11clk, w11, clk);
	
	Levl_to_pulse(w11, clk, p11);
	
	contAs(w11clk, p11, lq1, lq2, lq3, lq4, lQ1, lQ2);
	
	
	//tem q multiplexar as saidas q1, q2, q3, q4, Q1, Q2!
	
	endmodule
	