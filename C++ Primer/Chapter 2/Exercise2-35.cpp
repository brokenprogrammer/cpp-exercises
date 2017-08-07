#include <iostream>
#include <typeinfo>

int main()
{
	const int i = 42;	// i is const int.
	auto j = i;			// j is const int.
	const auto &k = i;	// k is const int&.
	auto *p = &i;		// p is const int *.
	const auto j2 = i;	// j2 is const int.
	const auto &k2 = i; // k2 is const int&.

	std::cout << "i is: " << typeid(i).name() << std::endl;
	std::cout << "j is: " << typeid(j).name() << std::endl;
	std::cout << "k is: " << typeid(k).name() << std::endl;
	std::cout << "p is: " << typeid(p).name() << std::endl;
	std::cout << "j2 is: " << typeid(j2).name() << std::endl;
	std::cout << "k2 is: " << typeid(k2).name() << std::endl;

	int tmp = 0;
	std::cin >> tmp;

	return 0;
}