-module(lesson2_task07).
-export([flatten/1]).

% entry function
flatten(Arr) ->
    flatten(Arr, []).
% each element of input array may be an array itself.
% So here we call "flatten" to flatten the first element until it is an empty array or
% a single element, and "continue" the recursion by passing "Rest" of the array to another
% "flatten" call.
flatten([First | Rest], Result) ->
    flatten(First, flatten(Rest, Result));
% Stop the recursion when array element is an empty list of a primitive element.
flatten([], Result) ->
    Result;
flatten(SingleElement, Result) ->
    [SingleElement | Result].
