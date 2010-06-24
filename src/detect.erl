-module(detect).
-export([init/0, detect/0]).

init() ->
      erlang:load_nif("./ebin/detect", 0).

detect() ->
      "NIF library not loaded".
