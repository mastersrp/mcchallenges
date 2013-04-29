all: mongoose/mongoose

mongoose/mongoose: mongoose/lua/Makefile
	make -C mongoose linux_lua

mongoose/lua/Makefile:
	git submodule foreach git submodule init
	git submodule foreach git submodule update
