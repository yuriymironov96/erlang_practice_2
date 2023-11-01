-module(lesson2_task08).
-export([compress/1]).

compress(Arr) ->
    compress(Arr, null).

% our arguments are the array of values and the "reference" value. We will use "reference" value
% to check whether there are sequential duplicates.

% This pattern matching means that there are two "First" elements with the same value in a row.
% This means we drop the First element, since it is already included.
compress([First | Rest], First) -> compress(Rest, First);
% This pattern matching means "First" element does not share the same value with a previous one.
% This means we have to keep "First" value in the array and continue the recursion for the rest of
% the array.
compress([First | Rest], _) -> [First | compress(Rest, First)];
% Terminate recursion if we bump into a primitive element.
compress(SingleElement, _) -> SingleElement.
