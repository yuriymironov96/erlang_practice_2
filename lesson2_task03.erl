-module(lesson2_task03).
-export([element_at/2]).

% handle empty function
element_at([], _) ->
    undefined;
% if counter = 1 - return "first" element.
element_at([First | _], 1) ->
    First;
% entry function. Recursively cut first element of a lit and decreases counter by 1.
element_at([_ | Rest], Index) ->
    element_at(Rest, Index - 1).

% ideally we have to handle negative indices, but we did not discuss how to do it during lectures
