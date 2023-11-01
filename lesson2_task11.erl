-module(lesson2_task11).
-export([encode_modified/1]).
-import(task_09, [pack/1]).

% reuse task09, because it already does element grouping.
% Now we simply have to convert each group into a tuple/leave it a single character.
% Pretty much like task10.
encode_modified(Arr) -> encode_packed(pack(Arr)).

encode_packed([]) -> [];
encode_packed([First | Rest]) -> [encode_symbol(First, 1) | encode_packed(Rest)].

% The only difference from task10, we return single element instead of a tuple if we started the
% call with a single element and counter = 1.
encode_symbol([SingleElement], 1) -> SingleElement;
encode_symbol([SingleElement], Count) -> {Count, SingleElement};
encode_symbol([_ | Rest], Count) -> encode_symbol(Rest, Count + 1).
