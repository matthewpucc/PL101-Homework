-module(advanced).
-export([start/0, convert_temperature/1]).

convert_temperature({celsius, C}) ->
  Out = lists:concat([
    "The temperature ", 
    lists:flatten(io_lib:format("~.2f", [float(C)])), 
    " Celsius is ", 
    lists:flatten(io_lib:format("~.2f", [float(((C*(9/5))+32))])), 
    " Farenheit"
  ]),
  io:format("~p~n", [Out]);
convert_temperature({farenheit, F}) ->
  Out = lists:concat([
    "The temperature ", 
    lists:flatten(io_lib:format("~.2f", [float(F)])), 
    " Farenheit is ", 
    lists:flatten(io_lib:format("~.2f", [float((5/9)*(F-32))])), 
    " Celsius"
  ]),
  io:format("~p~n", [Out]).
start() ->
  spawn(advanced, convert_temperature, [{celsius, 100}]),
  spawn(advanced, convert_temperature, [{farenheit, 32}]).
