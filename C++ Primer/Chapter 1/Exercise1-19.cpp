#include <iostream>

/*
* C++ Primer Chapter 1
* Exercise 1.19
*
* Revise the program you wrote for the exercises in § 1.4.1 (p. 13) that 
* printed a range of numbers so that it handles input in which the first number is smaller
* than the second. 
*/
int main()
{
	int x = 0, y = 0;
	std::cin >> x >> y;

	if (y < x){
		int temp = y;
		y = x;
		x = temp;
	}

	while (x < y){
		std::cout << "x: " << x << std::endl;
		x++;
	}

	int i;
	std::cin >> i;
	return 0;
}