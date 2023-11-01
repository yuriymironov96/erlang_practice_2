-module(lesson2_task13).
-export([decode/1]).
-import(task_07, [flatten/1]).

% it's kjust like task 12, but without the need to handle single characters.

decode([]) -> [];
decode([{Count, Element} | Rest]) -> flatten([unpack(Element, Count) | decode(Rest)]).

unpack(Element, 1) -> [Element];
unpack(Element, Count) -> [Element | unpack(Element, Count - 1)].
