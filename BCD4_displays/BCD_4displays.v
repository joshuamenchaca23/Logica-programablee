module BCD_4displays #(parameter N_in=10, N_out=7)( 
	input[N_in-1:0] bcd_in, //cuando se haga el wrap va a ir al swich  
	output[N_out-1:0] D_un, D_de, D_ce, D_mi); 
	
	wire[3:0]unidades, decenas, centenas, millares; 
		
		assign unidades = bcd_in%10; 
		
		assign decenas= (bcd_in/10)%10; 
		
		assign centenas= (bcd_in/100)%10; 
		
		assign millares= (bcd_in/1000)%10;
		
		//dividir entre 10, y le sacas el module
		
	BCD_module un( 
		.bcd_in(unidades), //ponerle decenas 
		.bcd_out(D_un)); 

	BCD_module dec( 
		.bcd_in(decenas),
		.bcd_out(D_de)); 
		
	BCD_module cent( 
		.bcd_in(centenas),
		.bcd_out(D_ce));
		
	BCD_module un_mill( 
		.bcd_in(millares),
		.bcd_out(D_mi));
		
endmodule 