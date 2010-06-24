compile:
	@gcc -fPIC -shared -o ebin/detect.so include/detect.c -I $ERL_PATH/usr/include/
	@erl -make
test:
	@erl -noshell -pa ebin -s test run -s init stop

sample:
	@erl -noshell -pa ebin -s helloworld run -s init stop

clean: 
	@rm -rf ebin/*
