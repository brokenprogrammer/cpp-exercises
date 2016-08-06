#include <iostream>

/*
 * C++ Primer Chapter 1
 * Exercise 1.11
 *
 * Write a program that prompts the user for two integers. Print each number in
 * the range specified by those two integers.
 *
 * Own notes:
 *	This could be done in a much cleaner way using a function for example but the book
 *	is on the chapter of while loops so im sticking with the book.
 */
int main()
{
	int x = 0, y = 0;
	std::cin >> x >> y;

	if (y < x)
	{
		int temp = y;
		y = x;
		x = temp;
	}

	while (x < y)
	{
		std::cout << "x: " << x << std::endl;
		x++;
	}

	int i;
	std::cin >> i;
	return 0;
}