-module(lesson2_task10).
-export([encode/1]).
-import(task_09, [pack/1]).

% reuse task09, because it already does element grouping.
% Now we simply have to convert each group into a tuple.

encode(Arr) -> encode_packed(pack(Arr)).

% avoid calling "pack" with empty array
encode_packed([]) -> [];
% call encode_symbol for each "group" of same characters, and recursively call encode_packed for
% the rest of the list.
encode_packed([First | Rest]) -> [encode_symbol(First, 1) | encode_packed(Rest)].

% for each "group" of symbol, count number of symbols and return them as a tuple.
encode_symbol([SingleElement], Count) -> {Count, SingleElement};
encode_symbol([_ | Rest], Count) -> encode_symbol(Rest, Count + 1).
