`timescale 1ns / 1ps

module test_ofb_enc;

	// Outputs
	//wire ;
	reg [64:1] key;
	integer i;
	
	integer f;
	reg [64:1] iv;
	reg [64:1] msg[1:131072];
	reg [64:1] message;
	wire [64:1] ciphertext;

	OFB_enc e(ciphertext, message, key, iv);
	initial 
	begin
		
		#10 $readmemb("binary.txt",msg);
		//$display("f=%b",msg[1]);
		f=$fopen("ofb_enc.txt","w");
		#10
		for(i=1;i<=131072;i=i+1)
		 begin
			  #1 message=msg[i];
			  //$display("%b",msg[i]);
			  key = 64'b00010011_00110100_01010111_01111001_10011011_10111100_11011111_11110001;
				//$monitor("%d",i);  
			  //$display("%b",ciphertext);
			  //$fwrite(f,"%d",i);
				
				iv = 64'b00010011_00110100_01010111_01111001_10011011_10111100_11011111_11110001;
				
			   $fwrite(f,"%b\n",ciphertext);
		 end 
		#10 $fclose(f);
	end
      
endmodule

