-module(lesson2_task05).
-export([reverse/1]).

% entry point. Passes entire input array and initializes empty "result" array.
reverse(Arr) -> reverse(Arr, []).

% as soon as input array is empty - we return "result" array without modifications, since there
% is nothing left to add.
reverse([], To) ->
    To;
% during each recursive call, we add 1st element of input array to the beginning of a result.
% because of how recursion works, the calls will look like this:
%
%    input      result
% 1. [1, 2, 3]  []
% 2. [2, 3]     [1]
% 3. [3]        [2, 1]
% 4. []         [3, 2, 1]
reverse([FromFirst | FromRest], To) ->
    reverse(FromRest, [FromFirst | To]).
