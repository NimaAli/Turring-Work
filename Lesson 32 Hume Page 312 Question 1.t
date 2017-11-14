function circleArea (radius : real) : real
    var area : real
    area := 3.14159265 * radius * radius
    result area
end circleArea

% main program

var number : real
put "Enter the radius of your circle for its approximate area : " ..
get number
put circleArea (number)
