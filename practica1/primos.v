/* 
En este código se declaran las condiciones para que los números primos del 0 al 15 
tengan el valor de 1 (TRUE), de manera que se mande la indicación a la tarjeta 
y al poner esos numeros se prenda el LED. Se usa default para indicar que todos los 
otros números tengan el valor de 0. Es decir que no encienda el LED. 
*/

module primos( 
	input[3:0] N, //declaración del vector de 4 bits para los numeros
	output reg out
	);
	always@(*) //lista de sensivilidad
	
	begin 
		case(N)
			2: out= 1;
			3: out= 1;
			5: out= 1;
			7: out= 1;
			11: out= 1;
			13: out= 1;
			default:out=0;
			endcase 
	end			

endmodule 
