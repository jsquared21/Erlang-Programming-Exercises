-module(mathStuff).
-export ([perimeter/1]).

perimeter(Form) -> 
case Form of
{Shape, Dimensions} -> perimeter_arity2(Shape,Dimensions);
{Shape,A,B,C} -> perimeter_arity4(Shape,A,B,C)
end.

perimeter_arity2(Shape,Dimensions) ->
case Shape of
	square -> square(Dimensions);
	circle -> circle(Dimensions)
end.

perimeter_arity4(Shape,A,B,C) ->
case Shape of
triangle -> triangle(A,B,C)
end.

square(Dimensions) -> 4 * Dimensions.

circle(Dimensions) -> 2 * math:pi() * Dimensions.

triangle(A,B,C) -> A + B + C.