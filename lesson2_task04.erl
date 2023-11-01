-module(lesson2_task04).
-export([len/1]).

% entry point of a function. Passes complete array and counter starting with 0.
len(Arr) -> len(Arr, 0).

% with each iteration we cut 1st element of the array and increase counter by 1.
len([_ | Rest], Index) -> len(Rest, Index + 1);
% when the array is empty - we return current index, which will be array length.
len([], Index) -> Index.
