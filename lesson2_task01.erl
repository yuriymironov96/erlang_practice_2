-module(lesson2_task01).
-export([last/1]).

% return a "undefined" atom on empty array.
last([]) ->
    undefined;
% if only one element of the list remains - return it.
last([Last]) ->
    Last;
% entry point function. Cut first element of a list and recursively call "last()" with the rest of
% the list.
last([_ | Rest]) ->
    last(Rest).
