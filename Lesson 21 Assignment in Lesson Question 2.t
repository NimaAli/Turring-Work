% Lesson 21. Assignment in lesson. Question 2.October the 12th 2017.
% 2.  Prompt the user to enter two even numbers.  Output all the even numbers between the two numbers.  
var a, b : int
loop
    put "Enter an even number: "
    get a
    put "Enter another even number to find what even numbers are between the two: "
    get b
% The mod means the remainder, if the remainder is 0 it's a whole even number!
    exit when a mod 2 = 0 and b mod 2 = 0
    put "One or both of your numbers aren't even whole positive numbers."
end loop
% Plus and Minus so it only shows numbers inbeween
for i : a+2 .. b-2 by 2
    put i, "\n"
end for



