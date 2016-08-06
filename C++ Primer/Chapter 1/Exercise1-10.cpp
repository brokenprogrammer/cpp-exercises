#include <iostream>

/*
 * C++ Primer Chapter 1
 * Exercise 1.10
 *
 * In addition to the "++" operator that adds 1 to its operand, there is a
 * decrement operator (--) that subtracts 1. Use the decrement operator to write
 * a "while" that prints the numbers from ten down to zero.
*/
int main()
{
	int x = 10;
	while (x >= 0)
	{
		std::cout << "x: " << x << std::endl;
		x--;
	}
	int i;
	std::cin >> i;
	return 0;
}