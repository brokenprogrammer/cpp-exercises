#include <iostream>

/*
 * C++ Primer Chapter 1
 * Exercise 1.9
 * 
 * Write a program that uses a while to sum the numbers from 50 to 100.
 */
int main()
{	
	int sum = 0;
	int x = 50;
	while (x <= 100)
	{
		sum = sum + x;
		x++;
	}

	std::cout << "sum: " << sum;
	int i;
	std::cin >> i;
	return 0;
}