# A tutorial introduction

## 1.1 Getting started

Create the `source` program in a file whose name ends in ´.c´ then compile it with ´cc <file_name.c>´.

A C program whatever its size, consists of one or more functions which specify the actual computing operations that are to be done. C functions are similar to the functions and subroutines of a Fortran program or the procedures of Pascal. In out example ´main´ is such a function. Normally you are at liberty to give functions whatever names you like, but ´main´ is a special name - you program begins executing at the beginning of ´main´. 

This means that every program must have a ´main´ somewhere. ´main´ will usually invoke other functions to perform its job, some coming from the same program, and others from libraries of previously written functions.

´´´
printf("hello world\n");
´´´

is a function call which calls a function named ´printf´, with the argument ´"hello world\n"´. ´printf´ is a library function which prints output on the terminal (unless some other function is specified). In this case it prints the string of characters that make up its argument.

A sequence of any number of characters enclosed in the double quotes is called a character string or string constant. For the moment our only use of character strings will be as arguments for printf and otherfunctions.

The sequence \n in the string is C notation fot the newline character, which when printed advances the terminal to the left margin on the next line. If you leave out the \n (a worthwhile experiment), you will find that your outpit is not terminated bya  aline feed. The only way to get a newline character into the printf argument is with \n; if you try something like
´´´
printf("hello, world
");
´´´
the C compiler will print unfrinedly diagnostrics about missing quotes. printf nevver supplies a newline automatically, so multiple calls may be used to build up an output in line stages. Out first program could just as well have been written
´´´
main()
{
    printf("hello, ");
    printf("world");
    printf("\n");
}
´´´ 
to produce an identical output.


## 1.2 Variables and Artithmetic

C provides several basic data types like int (16bit integers, up to 32767) float (32bit quantity), char (character, single byte), short (short integer), long (long integer), double (double-precision floating point).

### About the code
The conversion specification %4.0f says that a floating point number is to be printed in a space at least four characters wide, with no digits after the decimal point. %6.1f describe another number to occupy at least six spaces, with 1 digit after the decimal point.


## 1.3 The for statement

As you might expect, there are plenty of different ways to write a program; let's try a variation on the temperature converter

## 1.4 Symbolic Constants 

It's a bad practice to bury "magic numbers" like 300 and 20 in a pgoram; the convey litte information to someone who might have to read the program later, and the are hard to change in a systematic way. Fortunately, C provides a way to avoid such magic numbers. With the #define construction, at the beginning of a program you can define a symbolic name or symbolic constant to be a particular string of characters. Thereafter, the omputer compiter will replace all unquoted ocurrences of the name by the corresponding string.

## 1.5 Character Input and Output

´getchar()´ fetches the ´next input´ character each time it is called, and returns that character as its value. That is, after
´´´
c = getchar()
´´´
the variable c contains the next character of input. The caracters normally come from the terminal. ´putchar(c)´ is the complement of ´getchar´


### File Copying

#### pseudocode

get a character
while (character is not end file signal)
	output the character just read
	get a new character
