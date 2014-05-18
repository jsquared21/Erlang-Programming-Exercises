-module(lists1).
-export ([min/1, max/1, min_max/1]).

min_max(L) -> {min(L),max(L)}.

max(L) -> [H|T] = L, maximum(T,H).
maximum([], CurrentMax) -> CurrentMax;
maximum([H|T], CurrentMax) -> 
	case H > CurrentMax of
		true -> maximum(T, H);
		false -> maximum(T, CurrentMax)
	end.

min(L) -> [H|T] =  L, minimum(T, H).
minimum([], Min) -> Min;
minimum([H|T], Min) -> 
	if
		H < Min -> minimum(T,H);
		Min < H -> minimum(T,Min)
	end.

