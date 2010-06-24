-module(test).
-compile(export_all).

run() ->
    detect:init(),
    io:format("~p", [detect:detect()]).
