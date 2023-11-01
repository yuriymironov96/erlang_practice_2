-module(lesson2_task12).
-export([decode_modified/1]).
-import(task_07, [flatten/1]).

decode_modified([]) ->
    [];
% each element can be aither a tuple with number of characters and character, or a character
% by itself. We handle both of these cases with these pattern matchings.

% if element is a tuple, we unpack it by "building" a nested array and flattening it.
decode_modified([{Count, Element} | Rest]) ->
    flatten([unpack(Element, Count) | decode_modified(Rest)]);
% if element is a simple character - we add it to the list.
decode_modified([Element | Rest]) ->
    flatten([Element | decode_modified(Rest)]).

unpack(Element, 1) -> [Element];
unpack(Element, Count) -> [Element | unpack(Element, Count - 1)].
