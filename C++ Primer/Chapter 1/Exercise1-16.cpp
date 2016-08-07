#include <iostream>

/*
* C++ Primer Chapter 1
* Exercise 1.16
*
* Write your own version of a program that prints the sum of a set of integers read from cin.
*/
int main()
{
	int sum = 0;
	for (int i = 0; std::cin >> i; sum += i);
	std::cout << "The sum is: " << sum << std::endl;

	int i;
	std::cin >> i;
	return 0;
}