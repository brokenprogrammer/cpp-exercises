#include <iostream>

/*
* C++ Primer Chapter 1
* Exercise 1.13
*
* Rewrite the first two exercises from § 1.4.1 (p.13) using for loops.
*/
int main()
{
	//Rewrite of Exercise 1.9
	int sum = 0;
	for (int x = 50; x <= 100; x++)
	{
		sum = sum + x;
	}
	std::cout << "sum: " << sum << std::endl;;

	//Rewrite of Exercise 1.10
	int x = 10;
	for (int x = 10; x >= 0; x--)
	{
		std::cout << "x: " << x << std::endl;
	}

	int i;
	std::cin >> i;
	return 0;
}