var number : int
var n1, n2, n3 : int := 0
for i : 1 .. 3
    randint (number, 100, 200)
    if i = 1 then
	n1 := number
    elsif i = 2 then
	n2 := number
    else 
	n3 := number
    end if
end for

if n1 < n3 and n1 < n2 and n2 < n3 then 
    put "From least to greatest, the three random numbers are ", n1," ", n2," ", n3,"."
elsif n2 < n3 and n2 < n1 and n1 < n3 then
    put "From least to greatest, the three random numbers are ", n2," ", n1," ", n3,"."
elsif n3 < n1 and n3 < n2 and n1 < n2 then
    put "From least to greatest, the three random numbers are ", n3," ", n1," ", n2,"."
elsif n2 < n3 and n2 < n1 and n3 < n2 then
    put "From least to greatest, the three random numbers are ", n2," ", n3," ", n1,"."
elsif n3 < n2 and n3 < n1 and n2 < n1 then
    put "From least to greatest, the three random numbers are ", n3," ", n2," ", n1,"."
elsif n1 < n2 and n1 < n2 and n3 < n2 then
    put "From least to greatest, the three random numbers are ", n1," ", n3," ", n2,"."
end if





