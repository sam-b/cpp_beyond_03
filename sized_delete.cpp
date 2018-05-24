#include <cstddef>


class Test{

public:
	int rand;

};


int main(void){
	Test *test = new Test;
	::operator delete(test, (std::size_t) 18);
	return 0;
}