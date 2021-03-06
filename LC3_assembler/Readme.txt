~~~~~~~~~~~~~~~~~~~~
Simple LC3 Assembler
~~~~~~~~~~~~~~~~~~~~

AUTHOR
======
	
	NTHU 
	Department of Mathematics 
	Student ID: 101021120 
	Name: Yu Xiang, Zheng
	Nickname: Slighten
	E-mail: zz687@yahoo.com.tw
	FB: https://www.facebook.com/Slighten.Zheng
	Phone number: 0923576510

INTRODUCTION
============
	
	 This simple LC3 assembler is a simpler version than the real one.
	I realized some functions on this assembler including following:
	  1. case insensitive opcodes, directives, and case sensitive labels.
	  2. allow flexible spacing (whiteline, tab, whitespace)
	  3. handles some syntax errors by giving informative error messages.
	  4. sensor #( + dec), X( + hex), 0X( + hex), decimal numbers. 
	  5. labels don't have to be at the most left side in a line.
	  6. one line can contain two or more IR.
	  7. little and big endian transformation.
	  
	 Error tests including following:
	  1. undefined labels
	  2. redefined labels
	  3. labels that is too far, or register offset or immediates that are out of range
	  4. unknown instruction opcode or operand format
	  5. not found .ORIG first
	  6. double .ORIG
	  7. not found .END
	  8. should have a label after some opcodes but find not a label
	  9. some format tests after opcodes (such as registers, n-bits numbers, etc.)
	  10. if input file is an ".asm" file
	  
	 I even realized some functions that the real one doesn't have:
	  1. length flexible symbol table (means if the label's name is too long,
	     then the symbol table will adjust the layout.)
	  2. have some whitespaces between register names(R) and numbers(1~7) is capable.

	 There are some test data (test01.asm ~ test10.asm) you can test.
	 
USING METHOD
============

	 Compile the "LC3assembler.c" (cc LC3assembler.c)
	and execute "./a.out xxx.asm",
	and it will generate a ".sym" and a ".obj" files.
	 The "xxx.asm" file is the LC3 assembly language text file 
	which you should write something in.
	 The ".sym" file is the file which contains a symbol table of labels, 
	and the ".obj" file is the file which contains the binary machine codes 
	that translated from your ".asm" file.
	 You can do "diff real.obj xxx.obj" to see if they are different, 
	which "real.obj" is the file produced by the real LC3tools and
	"xxx.obj" is the file generated by this simple LC3 assembler.
	(Better work it in the CS Work station)
	Note: If you want to see every words in hex IR, I have put the testing
		  "printf" in the function WriteObjectFile(), you can use it just by
		  deleting the comment notation "//", and then you can compare it with 
		  the ".lst" file generated from the real LC3.

BUGS
====

	 I don't handle .STRINGZ "xxx" which xxx contains '\t', '\n', '\\', etc 
	because its too troublesome. Thus the part of '\t' will be treated as 
	'\' and 't' and then get translated to the Hex '5C' and the Hex '74' and which is 
	different from the result from the real LC3.
	 If you find some other bugs, then I sincerely hope you can 
	contact me by FB ,or e-mail me, or call me directly. Thanks for you help!

COPYRIGHT
=========
	
	Copyright (C) 2014 by Slighten. All rights reserved.

FAQs
====

	Q: What is this software used for?
	 A: An LC3 assembler which translates LC3 assembly language to machine language.
	
	Q: What is LC3 and what is machine language?
	 A: Look it up in your textbook or google it.
	
	Q: Why can't I compile the "LC3assembler.c"?
	 A: You should have some related tools like gcc.
	
	Q: Why I called "./a.out" but it shows me an error?
	 A: You should key in "./a.out xxx.asm".
	
	Q: Why I call "./a.out my.asm" but still have error?
	 A: Your "my.asm" should be in the same folders with your "a.out".
	
	Q: Why I call "cat" to see "my.obj" but what I see is a garbled text?
	 A: It's normal, since ".obj" file contains binary data.
	
	Q: How do I verify if the result is correct?
	 A: Do "diff" with the result from the real LC3.
	
	Q: Ok, I do it right, and then?
	 A: You can use your LC3 simulator to simulate it.
	
	If you have other problems, just contact me ASAP and I will answer you.^^

THANKS
======
	
	1. The respectable professor Pai H. Chou
	2. Classmates, and assistants
	3. The book /Introduction to computing systems - from bits & gates to C & beyond (2E)/
	   made by Yale N. Patt and Sanjay J. Patel
	4. Google
	
CHANGELOG
=========

	None

TODO
====

	Fix the bugs and make a LC3 simulator.

