const LINES := 10
for row : 1 .. LINES by 2
    for decreasing i : LINES-row .. 0 
	put "*"..
    end for
    put ""
end for 


