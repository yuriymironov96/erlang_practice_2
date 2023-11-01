-module(lesson2_task02).
-export([but_last/1]).

% handle case with length=1
but_last([Last]) ->
    [undefined, Last];
% return two elements if two elements remain
but_last([ButLast, Last]) ->
    [ButLast, Last];
% entry point function. Cut first element of a list and recursively call "but_last()" with the
% rest of the list.
but_last([_ | Rest]) ->
    but_last(Rest);
% we didn't discuss how to handle empty arrays, so I decided to return a "undefined" atom.
but_last([]) ->
    undefined.
