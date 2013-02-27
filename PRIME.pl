#!/usr/bin/perl
#Author: John Bohne
#Date: 12/1/2012
#Program Name: PRIME
#Program Description: Displays the first 1000 prime numbers, delimited by a comma.
print "2, 3, "; #obvious prime numbers
for($i=4;$i<1000;$i++)
   {
        for ($j = 2; $j <= (int(sqrt($i))); $j++)
         {
                 $state = 1;
                 if ($i % $j == 0) #not prime
                 {
                         $state = 0;
                         last; #break out of loop
                 }
         }
        if ($state == 1)
        {
          print "$i\, "; #print the prime numbers, delimited by a comma
        }
   }

