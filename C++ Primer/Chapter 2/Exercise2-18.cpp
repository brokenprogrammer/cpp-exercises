#include <iostream>

/*
* C++ Primer Chapter 2
* Exercise 2.18
*
* Write code to change the value of a pointer. 
* Write code to change the value to which the pointer points.
*/
int main() {

	int i = 42, i2 = 10;
	int *p, *p2;

	p = &i;
	p2 = &i2;

	//Change the value to which the pointer points.
	*p2 = i - 10;

	//Change the value of a pointer.
	p = p2;

	std::cout << "Point 1: " << *p << std::endl;
	std::cout << "Value1 : " << i << " Value 2: " << i2 << std::endl;

	int inp = 0;
	std::cin >> inp;
	return 0;
}