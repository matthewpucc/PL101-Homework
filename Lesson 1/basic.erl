-module(basic).
-export([convert_temperature/1]).

convert_temperature({celsius, C}) ->
  {farenheit, ((C*(9/5))+32)};
convert_temperature({farenheit, F}) ->
  {celsius, (5/9)*(F-32)}.