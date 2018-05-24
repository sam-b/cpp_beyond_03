#include <random>
#include <iostream>

int main() {
    std::minstd_rand0 mt_std_one;
    std::minstd_rand mt_std_two;
    std::mt19937_64 mt_std_three;
    std::mt19937 mt_std_four;
    std::mersenne_twister_engine<unsigned int, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1> mt;

    std::cout << mt_std_one() << std::endl;
	std::cout << mt_std_two() << std::endl;
	std::cout << mt_std_three() << std::endl;
	std::cout << mt_std_four() << std::endl;
	mt.seed(0x1337);
	std::cout << mt() << std::endl;

	std::linear_congruential_engine<unsigned int, 1, 5, 10> lcg;
	lcg.seed(0x1337);
	std::cout << lcg() << std::endl;

	std::subtract_with_carry_engine<unsigned long, 2, 10, 40> swce;
	swce.seed(0x1337);
	std::cout << swce() << std::endl;

	std::ranlux24_base ranlux24_base_l;
	std::cout << ranlux24_base_l() << std::endl;

	std::ranlux24 ranlux24_l;
	std::cout << ranlux24_l() << std::endl;

	std::ranlux48_base ranlux48_base_l;
	std::cout << ranlux48_base_l() << std::endl;

	std::ranlux48 ranlux48_l;
	std::cout << ranlux48_l() << std::endl;
}