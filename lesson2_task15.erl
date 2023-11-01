-module(lesson2_task15).
-export([replicate/2]).

% we have to keep two separate counters - global counter and local counter.
% Global counter is used to to pass count between chatacters.
% Local counter is used to actually replicate characters until it is reduced to 1.

replicate(Arr, Count) -> replicate(Arr, Count, Count).

replicate([], _, _) ->
    [];
% When CurrentCount = 1, move to the next character.
replicate([First | Rest], 1, GlobalCount) ->
    [First | replicate(Rest, GlobalCount, GlobalCount)];
% for each "First" character, recursively replicate it until CurrentCount = 1.
replicate([First | Rest], CurrentCount, GlobalCount) ->
    [First | replicate([First | Rest], CurrentCount - 1, GlobalCount)].
