#include <iostream>

/*
* C++ Primer Chapter 2
* Exercise 2.8
*
* Using escape sequences, write a program to print 2M followed by a newline. 
* Modify the program to print 2, then a tab, then an M, followed by a newline.
*/
int main() {
	
	std::cout << "\062\115\012";
	std::cout << "\062\011\115\012"; // \011 could be written as \t

	int inp = 0;
	std::cin >> inp;
	return 0;
}