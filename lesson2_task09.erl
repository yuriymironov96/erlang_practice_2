-module(lesson2_task09).
-export([pack/1]).
-import(task_05, [reverse/1]).

% entry point of a function.
pack([First | Rest]) -> reverse(pack([First], Rest, [])).

% in arguments, we have to define three groups:
% - first argument is a current group ([a, a] in [[a,a], [b,],...]).
% - second argument is the rest of the array.
% - third argument is the "result" array.

% if the head the rest of the array (second argument) matches with the head of
% the first argument - we have to add head 2 to array 1.
pack([SameElement | RestSameElements], [SameElement | Rest], Result) ->
    pack([SameElement, SameElement | RestSameElements], Rest, Result);
% if the head the rest of the array (second argument) DOES NOT match with the head of
% the first argument - we add the finished "group" of equal letters to the result and start
% a new group.
pack([SameElement | RestSameElements], [DifferentElement | Rest], Result) ->
    pack([DifferentElement], Rest, [[SameElement | RestSameElements] | Result]);
% terminate recursion if the aray is passed.
pack(SingleElement, [], Result) ->
    [SingleElement | Result].

% since we add elements from start to finish, pushing them to the beginning of the array, we have
% to reverse it in the end.
