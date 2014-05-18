-module(mathStuff).
-export ([perimeter/1]).



perimeter({square,Dimensions}) -> 4 * Dimensions;

perimeter({circle,Dimensions}) -> 2 * math:pi() * Dimensions;

perimeter({triangle,A,B,C}) -> A + B + C;

perimeter(_Other) -> io:format("Error, Invalid Object~n").