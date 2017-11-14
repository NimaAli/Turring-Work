function interest (balance, yearly_int : real) : real
    var bank_balance : real
    bank_balance := balance * yearly_int
    result bank_balance
end interest

% main program, be sure to name all programs on test

var balance, int_yearly : real
put "Enter your banks balance and then the yearly interest in decimals to see how much the interest will be : "..
% was just a test, if you do it this way your program gets interupted 1/3 of the time
get balance, int_yearly
% the : 2 : 4 thing works.
put "The answer is ", interest(balance, int_yearly) : 2 : 4,"."
