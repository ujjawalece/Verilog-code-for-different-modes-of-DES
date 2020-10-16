# Verolg-code-for-different-modes-of-DES

Here, we will provide you complete code for different modes of ***Data Encryption Standard implemented (DES)*** in ***Verilog***.
This problem statement is of ***I-Chip 2020*** event, I-Chip is a ***Verilog HDL based event***. The participants are given an exciting problem statement and are expected to code its solution in Verilog, simulate their code and implement it on FPGA board. It is an event of Annual Technical Fest ***UDYAM*** of ***department of ELECTRONICS IIT(BHU)***.

### Problem Statement-

Problem statement is given [here](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/I-Chip.pdf). Basically, we have to write a verilog code to encryt and decrpyt a given image using different modes of DES, this is known sa crytography.

Input image is below-
![imput image](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/Input%20Image.jpg)

### Solution-

* Use this [Python code](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/img_to_bin.py) to convert image to binary txt file. 
* Use this [Python code](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/bin_to_img.py) to convert binary txt file to image.


The code for every mode is given in files of this repository. It includes [Process Key](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/ProcessKey.v) which is same for every code, verilog module and test benches corresponding to them.

For Example- if the name of file id ECB_enc.v then it will have code of encryption for ECB mode and corresonding test bench file is given by name test_ecb_enc.v. Similarly, if 'dec' is used in place of 'enc' in file name are the files corresponding to the decryption process.

### Results-

##### ECB (Electronic Code Book) mode-

***Encrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/ecb_enc.png)

***Decrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/ecb_dec.png)

##### CBC (Cipher Block Chaining) mode-

***Encrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/cbc_enc.png)

***Decrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/cbc_dec.png)

##### CFB (Cipher FeedBack) mode-

***Encrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/cfb_enc.png)

***Decrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/cfb_dec.png)

##### OFB (Output FeedBack) mode-

***Encrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/ofb_enc.png)

***Decrypted image-***
![im](https://github.com/ujjawalece/Verolg-code-for-different-modes-of-DES/blob/main/ofb_dec.png)


### Remark-
The images shown above are screenshot so they may be not be in required resolutio of1024X1024. So, instead of using these imsge use there .txt of same name files which is binary form of the image.


### Resources-

* https://drive.google.com/file/d/1AdoeZklvGeN70Z-C6klR9XYD8B-qVsxD/view?usp=sharing
* https://drive.google.com/file/d/1COexFHtUOkY0hctzP4QFXxKHtCyYmSTj/view?usp=sharing
* https://drive.google.com/file/d/1sOd31YbFAfZne7c2WQ0h9owgZI_9_66C/view?usp=sharing
* videos link - https://drive.google.com/file/d/1WiRzZqI0KxPNIHmO8BV3Hv-yuMK6sjY9/view?usp=sharing
* https://www.tutorialspoint.com/cryptography/data_encryption_standard.htm
* http://www.tetraedre.com/advanced/files/tcdg.pdf
