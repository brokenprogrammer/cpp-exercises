#include <iostream>
#include "Sales_item.h"

/*
* C++ Primer Chapter 1
* Exercise 1.21
*
* Write a program that reads two Sales_item objects that have the same ISBN and produces their sum.
*/
int main() {
	Sales_item book1, book2;

	std::cin >> book1 >> book2;
	if (book1.isbn() == book2.isbn()) {
		std::cout << book1 + book2 << std::endl;
	}
	else {
		std::cout << "The books needs to have the same ISBN." << std::endl;
	}

	return 0;
}