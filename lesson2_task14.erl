-module(lesson2_task14).
-export([duplicate/1]).

% for each element of the list, add two of same elements.
duplicate([]) -> [];
duplicate([First | Rest]) -> [First, First | duplicate(Rest)].
