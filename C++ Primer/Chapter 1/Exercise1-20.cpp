#include <iostream>
#include "Sales_item.h"

/*
* C++ Primer Chapter 1
* Exercise 1.20
*
* http://www.informit.com/title/032174113 contains a copy of Sales_item.h 
* in the Chapter 1 code directory. Copy that file to your working directory. 
* Use it to write a program that reads a set of book sales transactions, 
* writing each transaction to the standard output.
*/
int main() {
	for (Sales_item book; std::cin >> book; std::cout << book << std::endl);
	return 0;
}