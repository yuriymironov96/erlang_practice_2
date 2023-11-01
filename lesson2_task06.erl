-module(lesson2_task06).
-import(task_05, [reverse/1]).
-export([is_palindrome/1]).

% Palindrome is essentially a sequence that stays the same when reversed.
% Since we already wrote this and it is not forbidden, I reused it.
is_palindrome(Arr) ->
    reverse(Arr) == Arr.
