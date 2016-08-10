#include <iostream>
#include "Sales_item.h"

/*
* C++ Primer Chapter 1
* Exercise 1.22
*
* Write a program that reads several transactions for the same ISBN.
* Write the sum of all the transactions that were read.
*/
int main() {
	Sales_item book;
	Sales_item val;

	if (std::cin >> book){
		while (std::cin >> val) {
			if (book.isbn() == val.isbn()){
				book += val;
			}
			else {
				std::cout << book << std::endl;
				book = val;
			}
		}
		std::cout << book << std::endl;
	}

	return 0;
}