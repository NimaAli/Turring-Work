for i : 1 .. 4
    put "     *"
    put "*" ..
    for j : 2 .. i
	put " " ..
    end for
    put "*"
end for

put skip, skip

for a : 2 .. 5
    put "*"
    if a = 3 then
	put "***"
    end if
    for c : 1 .. a
	put " " ..
    end for
    put "*"
end for
