#!/usr/bin/perl
#Author: John Bohne
#Date: 12/2012
#Program Name: GUESS3
#Program Description: Perl script that takes in low and high command arguments and generates a random number that the user must guess.
#The program tells the user if the inputted number is lower or higher than the random number to assist in the game.
$low = $ARGV[0]; #first command line argument
$high = $ARGV[1]; #second command line argument
if (($#ARGV + 1) < 2) #if there are too few arguments, exit
{
        print("Too few arguments. Need 2 command line arguments (a low and high number). Try to run the program again.\n");
        exit;
} elsif (($#ARGV + 1) > 2) { #if there are too many arguments, exit

        print( "Too many arguments. Need 2 command line arguments (a low and high number). Try the run the program.\n");
        exit;
}
if ($ARGV[0] == $ARGV[1]) #if the two arguments are equal, exit
{
        print( "$low and $high cannot be equal. Try to run the program again.\n");
        exit;
}
if ($low > $high) #if the low number is greater than the high number, swap them.
{
 	$temp = $low;
 	$low = $high;
	$high = $temp;
	print("First number (higher number) swapped with second number (lower number) for calculation purposes.\n");
}
$randomNumber = (int(rand($high - $low + 1)) + $low); #rand() goes from 0 inclusive to nothing more than its argument as a floating point. Since integer cast is necessary, +1 is added in the rand formula for a specific range.
print( "Enter a number between $low and $high.\n");
$guess=<STDIN>;
if ($guess > $high || $guess < $low)
{
     while ( $guess > $high ||  $guess < $low )
     {
         print( "Guess must be between $low and $high. Try again.\n");
         $guess = <STDIN>;
     }
}
while ( $guess != $randomNumber)
{
 if ( $randomNumber < $guess )
 {
     print("Input is too high. Try again.\n");
     $guess = <STDIN>;
 }
 if ( $randomNumber > $guess )
 {
     print( "Input is too low. Try again.\n");
     $guess = <STDIN>;
 }
}
print("You guessed the number $randomNumber.\n");



