-module(time).
-export([swedish_date/0]).

swedish_date()->
ListOfDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
[YYYY,MM,DD] = tuple_to_list(date()),
[Hr,_Min,_Sec] = tuple_to_list(time()),
DaysOfCurrentMth = lists:nth(MM,ListOfDays),
ND =
	if
		DD == DaysOfCurrentMth -> 01;
		DD < DaysOfCurrentMth -> DD + 1
	end,
	if
		Hr + 6 > 24 -> string:substr(integer_to_list(YYYY),3,4)++pad_string(integer_to_list(MM))++pad_string(integer_to_list(ND)); 
		Hr + 6 < 24 -> string:substr(integer_to_list(YYYY),3,4)++pad_string(integer_to_list(MM))++pad_string(integer_to_list(DD))
	end.

pad_string(String) ->
if
  length(String) == 1 -> "0" ++ String;
  true -> String
end.
