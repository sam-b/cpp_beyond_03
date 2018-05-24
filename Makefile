CPP=clang++

.PHONY: all
all: sized_delete std_random

sized_delete: 
	$(CPP) -o sized_delete --std=c++17 -fsized-deallocation -fsanitize=address sized_delete.cpp 

std_random:
	$(CPP) -o std_random --std=c++17 std_random.cpp