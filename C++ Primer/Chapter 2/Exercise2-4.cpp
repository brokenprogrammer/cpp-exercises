#include <iostream>

/*
* C++ Primer Chapter 2
* Exercise 2.4
*
* Write a program to check wether your predictions were correct. If not, 
* study this section until you understand what the problem is.
*/
int main() {
	unsigned u = 10, u2 = 42;
	std::cout << u2 - u << std::endl; //32
	std::cout << u - u2 << std::endl; //4294267264 = 2^32 - 32
	int i = 10, i2 = 42;
	std::cout << i2 - i << std::endl; //32
	std::cout << i - i2 << std::endl; //-32
	std::cout << i - u << std::endl;  //0
	std::cout << u - i << std::endl;  //0


	int inp = 0;
	std::cin >> inp;
	return 0;
}