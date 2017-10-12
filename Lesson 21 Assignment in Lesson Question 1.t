% Lesson 21. Assignment in lesson. Question 1.October the 12th 2017.
% 1. Prompt the user to enter two integers x, and n.  Use a loop to calculate 1+x**2+x**3...x**n

% If you see a it is usually for accumulator
var x, n, a : int
a := 0
put "Enter a whole positive number for x: "
get x

% The only reason you would use a loop is simple, to get n.
loop
    put "Enter a whole positive number for the exponenet n: "
    get n
% i is a letter usual used as a counter in our class
    exit when n > 0.9999
    put "Not a whole positive number!  Try Again"
end loop
for i : 0 .. n
a += x**i
end for
% Adding the backslash \ ( not the / ) and then n will put a space between lines.
put "\n", a

    
 
	   
