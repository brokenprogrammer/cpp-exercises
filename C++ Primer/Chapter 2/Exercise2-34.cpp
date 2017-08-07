#include <iostream>

/*
* C++ Primer Chapter 2
* Exercise 2.34
*
* Write a program containing the variables and assignments from
* the previous exercise. Print the variables before and after
* to check whether your predictions in the previous exercise 
* were correct. If not, study the examples until you can convince
* yourself you know what led you to the wrong conclusion.
*/
int main()
{
	int i = 0, &r = i;
	auto a = r;

	const int ci = i, &cr = ci;
	auto b = ci;
	auto c = cr;
	auto d = &i;
	auto e = &ci;
	auto &g = ci;
	 
	std::cout << "Before: " << std::endl;
	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
	std::cout << *d << std::endl;
	std::cout << *e << std::endl;
	std::cout << g << std::endl;

	a = 42;
	b = 42;
	c = 42;
	*d = 42;
	e = &c;
	//g = 42; Const int& not modifiable.

	std::cout << "After: " << std::endl;
	std::cout << a << std::endl;
	std::cout << b << std::endl;
	std::cout << c << std::endl;
	std::cout << *d << std::endl;
	std::cout << *e << std::endl;
	std::cout << g << std::endl;

	int tmp = 0;
	std::cin >> tmp;

	return 0;
}