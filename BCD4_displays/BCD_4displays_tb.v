module BCD_4displays_tb(); 

reg [9:0] bcd_in;
wire [6:0] D_un, D_de, D_ce, D_mi; 


BCD_4displays DUT(.bcd_in(bcd_in),.D_un(D_un),.D_de(D_de),.D_ce(D_ce),.D_mi(D_mi));

initial begin  

$display("Simulacion");
repeat(20) 
begin 
	$display("Simulación iniciada");
	bcd_in=$random%1023; 
	#10; 
end
$display("Simulación finalizada"); 	 	
$stop; 
$finish; 
		
end
initial begin 
	$monitor("bcd_in=%b, D_un= %b, D_de=%b, D_ce= %b, D_mi= %b",bcd_in,D_un,D_de,D_ce,D_mi);
end
endmodule 