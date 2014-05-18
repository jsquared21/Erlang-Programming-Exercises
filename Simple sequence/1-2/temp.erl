-module(temp).
-export([convert/1]).

f2c(F) -> {c,(F-32) * 5 div 9}.

c2f(C) -> {f,(C * 9 div 5) + 32}.

convert(Temperature) ->
{Scale, Temp} = Temperature,
case Scale of
	f -> f2c(Temp);
	c -> c2f(Temp);
	_ -> io:format("Error! Program converts between c)entigrade and f)ahrenheit scales only~n")
end.



