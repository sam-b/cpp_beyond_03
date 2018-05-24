CPP=clang++

.PHONY: all
all: sized_delete std_random

sized_delete: 
	$(CPP) -o sized_delete --std=c++14 -fsized-deallocation -fsanitize=address sized_delete.cpp 

std_random:
	$(CPP) -o std_random --std=c++14 std_random.cpp