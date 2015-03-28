module Main where
import Data.Char


{-Exercise 3.2 Use a combination of fst and snd to extract the character out of the tuple
((1,’a’),"foo").-}
dos = snd (fst ((1,'a'),"foo"))

{-Exercise 3.3 Use map to convert a string into a list of booleans, each element in the
new list representing whether or not the original element was a lower-case character.
That is, it should take the string “aBCde” and return [True,False,False,True,True].-}
tres = map isLower "Hello World"

{-Exercise 3.4 Use the functions mentioned in this section (you will need two of them)
to compute the number of lower-case letters in a string. For instance, on “aBCde” it
should return 3.-}
cuatro = length(filter isLower "Hello")

{-Exercise 3.5 We’ve seen how to calculate sums and products using folding functions.
Given that the function max returns the maximum of two numbers, write a function
using a fold that will return the maximum value in a list (and zero if the list is empty).
So, when applied to [5,10,2,8,1] it will return 10. Assume that the values in the list are
always  0. Explain to yourself why it works.-}
cinco = foldr max 0[5,10,2,8,1]

{-Exercise 3.6 Write a function that takes a list of pairs of length at least 2 and returns
the first component of the second element in the list. So, when provided with
[(5,’b’),(1,’c’),(6,’a’)], it will return 1.-}
seis = fst (head (tail [(5,'b'),(1,'c'),(6,'a')]))

{-Exercise 3.7 The fibonacci sequence is defined by:
Fn =  1 n = 1 or n = 2
Fn􀀀2 + Fn􀀀1 otherwise
Write a recursive function fib that takes a positive integer n as a parameter and
calculates Fn.-}
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

{-Exercise 3.8 Define a recursive function mult that takes two positive integers a and
b and returns a*b, but only uses addition (i.e., no fair just using multiplication). Begin
by making a mathematical definition in the style of the previous exercise and the rest of
this section.-}
