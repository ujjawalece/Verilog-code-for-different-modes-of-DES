`timescale 1ns / 1ps

module OFB_dec(ciphertext, message, key,iv);
	output reg [64:1] ciphertext;
	input [64:1] message;
	input [64:1] key;
	input [64:1] iv;

	function [64:1] perm_IP_inverse(input [64:1] message);
	  integer IP_inverse[64:1];
     reg [64:1] temp_msg;
     integer i;
 	  begin
			IP_inverse[1] = 40;
			IP_inverse[2] = 8;
			IP_inverse[3] = 48;
			IP_inverse[4] = 16;
			IP_inverse[5] = 56;
			IP_inverse[6] = 24;
			IP_inverse[7] = 64;
			IP_inverse[8] = 32;
			IP_inverse[9] = 39;
			IP_inverse[10] = 7;
			IP_inverse[11] = 47;
			IP_inverse[12] = 15;
			IP_inverse[13] = 55;
			IP_inverse[14] = 23;
			IP_inverse[15] = 63;
			IP_inverse[16] = 31;
			IP_inverse[17] = 38;
			IP_inverse[18] = 6;
			IP_inverse[19] = 46;
			IP_inverse[20] = 14;
			IP_inverse[21] = 54;
			IP_inverse[22] = 22;
			IP_inverse[23] = 62;
			IP_inverse[24] = 30;
			IP_inverse[25] = 37;
			IP_inverse[26] = 5;
			IP_inverse[27] = 45;
			IP_inverse[28] = 13;
			IP_inverse[29] = 53;
			IP_inverse[30] = 21;
			IP_inverse[31] = 61;
			IP_inverse[32] = 29;
			IP_inverse[33] = 36;
			IP_inverse[34] = 4;
			IP_inverse[35] = 44;
			IP_inverse[36] = 12;
			IP_inverse[37] = 52;
			IP_inverse[38] = 20;
			IP_inverse[39] = 60;
			IP_inverse[40] = 28;
			IP_inverse[41] = 35;
			IP_inverse[42] = 3;
			IP_inverse[43] = 43;
			IP_inverse[44] = 11;
			IP_inverse[45] = 51;
			IP_inverse[46] = 19;
			IP_inverse[47] = 59;
			IP_inverse[48] = 27;
			IP_inverse[49] = 34;
			IP_inverse[50] = 2;
			IP_inverse[51] = 42;
			IP_inverse[52] = 10;
			IP_inverse[53] = 50;
			IP_inverse[54] = 18;
			IP_inverse[55] = 58;
			IP_inverse[56] = 26;
			IP_inverse[57] = 33;
			IP_inverse[58] = 1;
			IP_inverse[59] = 41;
			IP_inverse[60] = 9;
			IP_inverse[61] = 49;
			IP_inverse[62] = 17;
			IP_inverse[63] = 57;
			IP_inverse[64] = 25;

			for(i=1; i<=64; i=i+1)
            temp_msg[64-i+1] = message[64-IP_inverse[i]+1];
      perm_IP_inverse = temp_msg;
 	  end
  endfunction
  
  function [64:1] perm_IP(input [64:1] message);
    integer IP[64:1];
    reg [64:1] temp_msg;
    integer i;
    begin
			IP[1] = 58;
			IP[2] = 50;
			IP[3] = 42;
			IP[4] = 34;
			IP[5] = 26;
			IP[6] = 18;
			IP[7] = 10;
			IP[8] = 2;
			IP[9] = 60;
			IP[10] = 52;
			IP[11] = 44;
			IP[12] = 36;
			IP[13] = 28;
			IP[14] = 20;
			IP[15] = 12;
			IP[16] = 4;
			IP[17] = 62;
			IP[18] = 54;
			IP[19] = 46;
			IP[20] = 38;
			IP[21] = 30;
			IP[22] = 22;
			IP[23] = 14;
			IP[24] = 6;
			IP[25] = 64;
			IP[26] = 56;
			IP[27] = 48;
			IP[28] = 40;
			IP[29] = 32;
			IP[30] = 24;
			IP[31] = 16;
			IP[32] = 8;
			IP[33] = 57;
			IP[34] = 49;
			IP[35] = 41;
			IP[36] = 33;
			IP[37] = 25;
			IP[38] = 17;
			IP[39] = 9;
			IP[40] = 1;
			IP[41] = 59;
			IP[42] = 51;
			IP[43] = 43;
			IP[44] = 35;
			IP[45] = 27;
			IP[46] = 19;
			IP[47] = 11;
			IP[48] = 3;
			IP[49] = 61;
			IP[50] = 53;
			IP[51] = 45;
			IP[52] = 37;
			IP[53] = 29;
			IP[54] = 21;
			IP[55] = 13;
			IP[56] = 5;
			IP[57] = 63;
			IP[58] = 55;
			IP[59] = 47;
			IP[60] = 39;
			IP[61] = 31;
			IP[62] = 23;
			IP[63] = 15;
			IP[64] = 7;

			for(i=1; i<=64; i=i+1)
        temp_msg[64-i+1] = message[64-IP[i]+1];
      perm_IP = temp_msg;      
    end
  endfunction

  function [48:1] perm_E(input [32:1] R);
    integer E[48:1];
    reg [48:1] temp_E;
    integer i;
    begin
		
			E[1] = 32;
			E[2] = 1;
			E[3] = 2;
			E[4] = 3;
			E[5] = 4;
			E[6] = 5;
			E[7] = 4;
			E[8] = 5;
			E[9] = 6;
			E[10] = 7;
			E[11] = 8;
			E[12] = 9;
			E[13] = 8;
			E[14] = 9;
			E[15] = 10;
			E[16] = 11;
			E[17] = 12;
			E[18] = 13;
			E[19] = 12;
			E[20] = 13;
			E[21] = 14;
			E[22] = 15;
			E[23] = 16;
			E[24] = 17;
			E[25] = 16;
			E[26] = 17;
			E[27] = 18;
			E[28] = 19;
			E[29] = 20;
			E[30] = 21;
			E[31] = 20;
			E[32] = 21;
			E[33] = 22;
			E[34] = 23;
			E[35] = 24;
			E[36] = 25;
			E[37] = 24;
			E[38] = 25;
			E[39] = 26;
			E[40] = 27;
			E[41] = 28;
			E[42] = 29;
			E[43] = 28;
			E[44] = 29;
			E[45] = 30;
			E[46] = 31;
			E[47] = 32;
			E[48] = 1;

      for(i=1; i<=48; i=i+1)
        temp_E[48-i+1] = R[32-E[i]+1];

      perm_E = temp_E;
    end
  endfunction
  

  function [32:1] perm_P(input [32:1] s_res);
    integer i;
    integer P[32:1];
    reg [32:1] temp_P;
    begin
			P[1] = 16;
			P[2] = 7;
			P[3] = 20;
			P[4] = 21;
			P[5] = 29;
			P[6] = 12;
			P[7] = 28;
			P[8] = 17;
			P[9] = 1;
			P[10] = 15;
			P[11] = 23;
			P[12] = 26;
			P[13] = 5;
			P[14] = 18;
			P[15] = 31;
			P[16] = 10;
			P[17] = 2;
			P[18] = 8;
			P[19] = 24;
			P[20] = 14;
			P[21] = 32;
			P[22] = 27;
			P[23] = 3;
			P[24] = 9;
			P[25] = 19;
			P[26] = 13;
			P[27] = 30;
			P[28] = 6;
			P[29] = 22;
			P[30] = 11;
			P[31] = 4;
			P[32] = 25;

      for(i=1; i<=32; i=i+1)
        temp_P[32-i+1] = s_res[32-P[i]+1];
      perm_P = temp_P;
    end
  endfunction
    function [4:1] SBOX(input [6:1] B, input reg [4:0] s_table_id);
    reg [2:1] i;
    reg [4:1] j;
    reg [3:0] S1[3:0][15:0];
    reg [3:0] S2[3:0][15:0];
    reg [3:0] S3[3:0][15:0];
    reg [3:0] S4[3:0][15:0];
    reg [3:0] S5[3:0][15:0];
    reg [3:0] S6[3:0][15:0];
    reg [3:0] S7[3:0][15:0];
    reg [3:0] S8[3:0][15:0];
    begin
			S1[0][0] = 14;
			S1[0][1] = 4;
			S1[0][2] = 13;
			S1[0][3] = 1;
			S1[0][4] = 2;
			S1[0][5] = 15;
			S1[0][6] = 11;
			S1[0][7] = 8;
			S1[0][8] = 3;
			S1[0][9] = 10;
			S1[0][10] = 6;
			S1[0][11] = 12;
			S1[0][12] = 5;
			S1[0][13] = 9;
			S1[0][14] = 0;
			S1[0][15] = 7;
			S1[1][0] = 0;
			S1[1][1] = 15;
			S1[1][2] = 7;
			S1[1][3] = 4;
			S1[1][4] = 14;
			S1[1][5] = 2;
			S1[1][6] = 13;
			S1[1][7] = 1;
			S1[1][8] = 10;
			S1[1][9] = 6;
			S1[1][10] = 12;
			S1[1][11] = 11;
			S1[1][12] = 9;
			S1[1][13] = 5;
			S1[1][14] = 3;
			S1[1][15] = 8;
			S1[2][0] = 4;
			S1[2][1] = 1;
			S1[2][2] = 14;
			S1[2][3] = 8;
			S1[2][4] = 13;
			S1[2][5] = 6;
			S1[2][6] = 2;
			S1[2][7] = 11;
			S1[2][8] = 15;
			S1[2][9] = 12;
			S1[2][10] = 9;
			S1[2][11] = 7;
			S1[2][12] = 3;
			S1[2][13] = 10;
			S1[2][14] = 5;
			S1[2][15] = 0;
			S1[3][0] = 15;
			S1[3][1] = 12;
			S1[3][2] = 8;
			S1[3][3] = 2;
			S1[3][4] = 4;
			S1[3][5] = 9;
			S1[3][6] = 1;
			S1[3][7] = 7;
			S1[3][8] = 5;
			S1[3][9] = 11;
			S1[3][10] = 3;
			S1[3][11] = 14;
			S1[3][12] = 10;
			S1[3][13] = 0;
			S1[3][14] = 6;
			S1[3][15] = 13;
			S2[0][0] = 15;
			S2[0][1] = 1;
			S2[0][2] = 8;
			S2[0][3] = 14;
			S2[0][4] = 6;
			S2[0][5] = 11;
			S2[0][6] = 3;
			S2[0][7] = 4;
			S2[0][8] = 9;
			S2[0][9] = 7;
			S2[0][10] = 2;
			S2[0][11] = 13;
			S2[0][12] = 12;
			S2[0][13] = 0;
			S2[0][14] = 5;
			S2[0][15] = 10;
			S2[1][0] = 3;
			S2[1][1] = 13;
			S2[1][2] = 4;
			S2[1][3] = 7;
			S2[1][4] = 15;
			S2[1][5] = 2;
			S2[1][6] = 8;
			S2[1][7] = 14;
			S2[1][8] = 12;
			S2[1][9] = 0;
			S2[1][10] = 1;
			S2[1][11] = 10;
			S2[1][12] = 6;
			S2[1][13] = 9;
			S2[1][14] = 11;
			S2[1][15] = 5;
			S2[2][0] = 0;
			S2[2][1] = 14;
			S2[2][2] = 7;
			S2[2][3] = 11;
			S2[2][4] = 10;
			S2[2][5] = 4;
			S2[2][6] = 13;
			S2[2][7] = 1;
			S2[2][8] = 5;
			S2[2][9] = 8;
			S2[2][10] = 12;
			S2[2][11] = 6;
			S2[2][12] = 9;
			S2[2][13] = 3;
			S2[2][14] = 2;
			S2[2][15] = 15;
			S2[3][0] = 13;
			S2[3][1] = 8;
			S2[3][2] = 10;
			S2[3][3] = 1;
			S2[3][4] = 3;
			S2[3][5] = 15;
			S2[3][6] = 4;
			S2[3][7] = 2;
			S2[3][8] = 11;
			S2[3][9] = 6;
			S2[3][10] = 7;
			S2[3][11] = 12;
			S2[3][12] = 0;
			S2[3][13] = 5;
			S2[3][14] = 14;
			S2[3][15] = 9;
			S3[0][0] = 10;
			S3[0][1] = 0;
			S3[0][2] = 9;
			S3[0][3] = 14;
			S3[0][4] = 6;
			S3[0][5] = 3;
			S3[0][6] = 15;
			S3[0][7] = 5;
			S3[0][8] = 1;
			S3[0][9] = 13;
			S3[0][10] = 12;
			S3[0][11] = 7;
			S3[0][12] = 11;
			S3[0][13] = 4;
			S3[0][14] = 2;
			S3[0][15] = 8;
			S3[1][0] = 13;
			S3[1][1] = 7;
			S3[1][2] = 0;
			S3[1][3] = 9;
			S3[1][4] = 3;
			S3[1][5] = 4;
			S3[1][6] = 6;
			S3[1][7] = 10;
			S3[1][8] = 2;
			S3[1][9] = 8;
			S3[1][10] = 5;
			S3[1][11] = 14;
			S3[1][12] = 12;
			S3[1][13] = 11;
			S3[1][14] = 15;
			S3[1][15] = 1;
			S3[2][0] = 13;
			S3[2][1] = 6;
			S3[2][2] = 4;
			S3[2][3] = 9;
			S3[2][4] = 8;
			S3[2][5] = 15;
			S3[2][6] = 3;
			S3[2][7] = 0;
			S3[2][8] = 11;
			S3[2][9] = 1;
			S3[2][10] = 2;
			S3[2][11] = 12;
			S3[2][12] = 5;
			S3[2][13] = 10;
			S3[2][14] = 14;
			S3[2][15] = 7;
			S3[3][0] = 1;
			S3[3][1] = 10;
			S3[3][2] = 13;
			S3[3][3] = 0;
			S3[3][4] = 6;
			S3[3][5] = 9;
			S3[3][6] = 8;
			S3[3][7] = 7;
			S3[3][8] = 4;
			S3[3][9] = 15;
			S3[3][10] = 14;
			S3[3][11] = 3;
			S3[3][12] = 11;
			S3[3][13] = 5;
			S3[3][14] = 2;
			S3[3][15] = 12;
			S4[0][0] = 7;
			S4[0][1] = 13;
			S4[0][2] = 14;
			S4[0][3] = 3;
			S4[0][4] = 0;
			S4[0][5] = 6;
			S4[0][6] = 9;
			S4[0][7] = 10;
			S4[0][8] = 1;
			S4[0][9] = 2;
			S4[0][10] = 8;
			S4[0][11] = 5;
			S4[0][12] = 11;
			S4[0][13] = 12;
			S4[0][14] = 4;
			S4[0][15] = 15;
			S4[1][0] = 13;
			S4[1][1] = 8;
			S4[1][2] = 11;
			S4[1][3] = 5;
			S4[1][4] = 6;
			S4[1][5] = 15;
			S4[1][6] = 0;
			S4[1][7] = 3;
			S4[1][8] = 4;
			S4[1][9] = 7;
			S4[1][10] = 2;
			S4[1][11] = 12;
			S4[1][12] = 1;
			S4[1][13] = 10;
			S4[1][14] = 14;
			S4[1][15] = 9;
			S4[2][0] = 10;
			S4[2][1] = 6;
			S4[2][2] = 9;
			S4[2][3] = 0;
			S4[2][4] = 12;
			S4[2][5] = 11;
			S4[2][6] = 7;
			S4[2][7] = 13;
			S4[2][8] = 15;
			S4[2][9] = 1;
			S4[2][10] = 3;
			S4[2][11] = 14;
			S4[2][12] = 5;
			S4[2][13] = 2;
			S4[2][14] = 8;
			S4[2][15] = 4;
			S4[3][0] = 3;
			S4[3][1] = 15;
			S4[3][2] = 0;
			S4[3][3] = 6;
			S4[3][4] = 10;
			S4[3][5] = 1;
			S4[3][6] = 13;
			S4[3][7] = 8;
			S4[3][8] = 9;
			S4[3][9] = 4;
			S4[3][10] = 5;
			S4[3][11] = 11;
			S4[3][12] = 12;
			S4[3][13] = 7;
			S4[3][14] = 2;
			S4[3][15] = 14;
			S5[0][0] = 2;
			S5[0][1] = 12;
			S5[0][2] = 4;
			S5[0][3] = 1;
			S5[0][4] = 7;
			S5[0][5] = 10;
			S5[0][6] = 11;
			S5[0][7] = 6;
			S5[0][8] = 8;
			S5[0][9] = 5;
			S5[0][10] = 3;
			S5[0][11] = 15;
			S5[0][12] = 13;
			S5[0][13] = 0;
			S5[0][14] = 14;
			S5[0][15] = 9;
			S5[1][0] = 14;
			S5[1][1] = 11;
			S5[1][2] = 2;
			S5[1][3] = 12;
			S5[1][4] = 4;
			S5[1][5] = 7;
			S5[1][6] = 13;
			S5[1][7] = 1;
			S5[1][8] = 5;
			S5[1][9] = 0;
			S5[1][10] = 15;
			S5[1][11] = 10;
			S5[1][12] = 3;
			S5[1][13] = 9;
			S5[1][14] = 8;
			S5[1][15] = 6;
			S5[2][0] = 4;
			S5[2][1] = 2;
			S5[2][2] = 1;
			S5[2][3] = 11;
			S5[2][4] = 10;
			S5[2][5] = 13;
			S5[2][6] = 7;
			S5[2][7] = 8;
			S5[2][8] = 15;
			S5[2][9] = 9;
			S5[2][10] = 12;
			S5[2][11] = 5;
			S5[2][12] = 6;
			S5[2][13] = 3;
			S5[2][14] = 0;
			S5[2][15] = 14;
			S5[3][0] = 11;
			S5[3][1] = 8;
			S5[3][2] = 12;
			S5[3][3] = 7;
			S5[3][4] = 1;
			S5[3][5] = 14;
			S5[3][6] = 2;
			S5[3][7] = 13;
			S5[3][8] = 6;
			S5[3][9] = 15;
			S5[3][10] = 0;
			S5[3][11] = 9;
			S5[3][12] = 10;
			S5[3][13] = 4;
			S5[3][14] = 5;
			S5[3][15] = 3;
			S6[0][0] = 12;
			S6[0][1] = 1;
			S6[0][2] = 10;
			S6[0][3] = 15;
			S6[0][4] = 9;
			S6[0][5] = 2;
			S6[0][6] = 6;
			S6[0][7] = 8;
			S6[0][8] = 0;
			S6[0][9] = 13;
			S6[0][10] = 3;
			S6[0][11] = 4;
			S6[0][12] = 14;
			S6[0][13] = 7;
			S6[0][14] = 5;
			S6[0][15] = 11;
			S6[1][0] = 10;
			S6[1][1] = 15;
			S6[1][2] = 4;
			S6[1][3] = 2;
			S6[1][4] = 7;
			S6[1][5] = 12;
			S6[1][6] = 9;
			S6[1][7] = 5;
			S6[1][8] = 6;
			S6[1][9] = 1;
			S6[1][10] = 13;
			S6[1][11] = 14;
			S6[1][12] = 0;
			S6[1][13] = 11;
			S6[1][14] = 3;
			S6[1][15] = 8;
			S6[2][0] = 9;
			S6[2][1] = 14;
			S6[2][2] = 15;
			S6[2][3] = 5;
			S6[2][4] = 2;
			S6[2][5] = 8;
			S6[2][6] = 12;
			S6[2][7] = 3;
			S6[2][8] = 7;
			S6[2][9] = 0;
			S6[2][10] = 4;
			S6[2][11] = 10;
			S6[2][12] = 1;
			S6[2][13] = 13;
			S6[2][14] = 11;
			S6[2][15] = 6;
			S6[3][0] = 4;
			S6[3][1] = 3;
			S6[3][2] = 2;
			S6[3][3] = 12;
			S6[3][4] = 9;
			S6[3][5] = 5;
			S6[3][6] = 15;
			S6[3][7] = 10;
			S6[3][8] = 11;
			S6[3][9] = 14;
			S6[3][10] = 1;
			S6[3][11] = 7;
			S6[3][12] = 6;
			S6[3][13] = 0;
			S6[3][14] = 8;
			S6[3][15] = 13;
			S7[0][0] = 4;
			S7[0][1] = 11;
			S7[0][2] = 2;
			S7[0][3] = 14;
			S7[0][4] = 15;
			S7[0][5] = 0;
			S7[0][6] = 8;
			S7[0][7] = 13;
			S7[0][8] = 3;
			S7[0][9] = 12;
			S7[0][10] = 9;
			S7[0][11] = 7;
			S7[0][12] = 5;
			S7[0][13] = 10;
			S7[0][14] = 6;
			S7[0][15] = 1;
			S7[1][0] = 13;
			S7[1][1] = 0;
			S7[1][2] = 11;
			S7[1][3] = 7;
			S7[1][4] = 4;
			S7[1][5] = 9;
			S7[1][6] = 1;
			S7[1][7] = 10;
			S7[1][8] = 14;
			S7[1][9] = 3;
			S7[1][10] = 5;
			S7[1][11] = 12;
			S7[1][12] = 2;
			S7[1][13] = 15;
			S7[1][14] = 8;
			S7[1][15] = 6;
			S7[2][0] = 1;
			S7[2][1] = 4;
			S7[2][2] = 11;
			S7[2][3] = 13;
			S7[2][4] = 12;
			S7[2][5] = 3;
			S7[2][6] = 7;
			S7[2][7] = 14;
			S7[2][8] = 10;
			S7[2][9] = 15;
			S7[2][10] = 6;
			S7[2][11] = 8;
			S7[2][12] = 0;
			S7[2][13] = 5;
			S7[2][14] = 9;
			S7[2][15] = 2;
			S7[3][0] = 6;
			S7[3][1] = 11;
			S7[3][2] = 13;
			S7[3][3] = 8;
			S7[3][4] = 1;
			S7[3][5] = 4;
			S7[3][6] = 10;
			S7[3][7] = 7;
			S7[3][8] = 9;
			S7[3][9] = 5;
			S7[3][10] = 0;
			S7[3][11] = 15;
			S7[3][12] = 14;
			S7[3][13] = 2;
			S7[3][14] = 3;
			S7[3][15] = 12;
			S8[0][0] = 13;
			S8[0][1] = 2;
			S8[0][2] = 8;
			S8[0][3] = 4;
			S8[0][4] = 6;
			S8[0][5] = 15;
			S8[0][6] = 11;
			S8[0][7] = 1;
			S8[0][8] = 10;
			S8[0][9] = 9;
			S8[0][10] = 3;
			S8[0][11] = 14;
			S8[0][12] = 5;
			S8[0][13] = 0;
			S8[0][14] = 12;
			S8[0][15] = 7;
			S8[1][0] = 1;
			S8[1][1] = 15;
			S8[1][2] = 13;
			S8[1][3] = 8;
			S8[1][4] = 10;
			S8[1][5] = 3;
			S8[1][6] = 7;
			S8[1][7] = 4;
			S8[1][8] = 12;
			S8[1][9] = 5;
			S8[1][10] = 6;
			S8[1][11] = 11;
			S8[1][12] = 0;
			S8[1][13] = 14;
			S8[1][14] = 9;
			S8[1][15] = 2;
			S8[2][0] = 7;
			S8[2][1] = 11;
			S8[2][2] = 4;
			S8[2][3] = 1;
			S8[2][4] = 9;
			S8[2][5] = 12;
			S8[2][6] = 14;
			S8[2][7] = 2;
			S8[2][8] = 0;
			S8[2][9] = 6;
			S8[2][10] = 10;
			S8[2][11] = 13;
			S8[2][12] = 15;
			S8[2][13] = 3;
			S8[2][14] = 5;
			S8[2][15] = 8;
			S8[3][0] = 2;
			S8[3][1] = 1;
			S8[3][2] = 14;
			S8[3][3] = 7;
			S8[3][4] = 4;
			S8[3][5] = 10;
			S8[3][6] = 8;
			S8[3][7] = 13;
			S8[3][8] = 15;
			S8[3][9] = 12;
			S8[3][10] = 9;
			S8[3][11] = 0;
			S8[3][12] = 3;
			S8[3][13] = 5;
			S8[3][14] = 6;
			S8[3][15] = 11;
      
      i[2:1] = {B[6], B[1]};
      j[4:1] = B[5:2];
      
      case(s_table_id)
        5'b01: SBOX = S1[i][j];
        5'b10: SBOX = S2[i][j];
        5'b11: SBOX = S3[i][j];
        5'b100: SBOX = S4[i][j];
        5'b101: SBOX = S5[i][j];
        5'b110: SBOX = S6[i][j];
        5'b111: SBOX = S7[i][j];
        5'b1000: SBOX = S8[i][j];
      endcase
      
    end
  endfunction

  function [32:1] f(input [32:1] R, input [48:1] K);
    reg [48:1] temp;
    reg [32:1] temp_after_s_box;
    reg [5:0] B[8:1];
    begin
      temp = K ^ perm_E(R);
      B[1] = temp[48:43];
      B[2] = temp[42:37];
      B[3] = temp[36:31];
      B[4] = temp[30:25];
      B[5] = temp[24:19];
      B[6] = temp[18:13];
      B[7] = temp[12:7];
      B[8] = temp[6:1];
      
      temp_after_s_box = {SBOX(B[1], 5'd1), SBOX(B[2], 5'd2), SBOX(B[3], 5'd3), SBOX(B[4], 5'd4),
                          SBOX(B[5], 5'd5), SBOX(B[6], 5'd6), SBOX(B[7], 5'd7), SBOX(B[8], 5'd8)};

      f = perm_P(temp_after_s_box);
    end
  endfunction
  
  reg [64:1] new_msg;
  //reg [64:1] before_new_msg;
  reg [32:1] L[16:0], R[16:0];
  wire [48:1] key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16;
  reg [48:1] K[16:1];
  integer i;
  ProcessKey pk(key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16, key);

  always @(*)
  begin
	 //before_new_msg = message^iv;
    new_msg = perm_IP(iv);
	 
    {L[0], R[0]} = new_msg;

    K[1] = key1; K[2] = key2; K[3] = key3; K[4] = key4; K[5] = key5; K[6] = key6; K[7] = key7; K[8] = key8; K[9] = key9; K[10] = key10; K[11] = key11; K[12] = key12; K[13] = key13; K[14] = key14; K[15] = key15; K[16] = key16; 

    for(i=1; i<=16; i=i+1)
    begin
      L[i]=R[i-1];
      R[i]=L[i-1] ^ f(R[i-1], K[16-i+1]);
    end
    ciphertext[64:1] = message^perm_IP_inverse({R[16], L[16]});
    
  end



endmodule
