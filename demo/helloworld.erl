-module(helloworld).
-compile(export_all).

run() ->
    detect:init(),
    case detect:detect() of
        "shell" -> io:format("~s~s~s~n",["\e[31m","Hello world!","\e[0m"]);
        _       -> io:format("Hello world!")
    end.
