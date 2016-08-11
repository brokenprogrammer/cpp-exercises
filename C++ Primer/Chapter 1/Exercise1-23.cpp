#include <iostream>
#include "Sales_item.h"

/*
* C++ Primer Chapter 1
* Exercise 1.23
*
* Write a program that reads several transactions and counts how many transactions occur for each ISBN.
*/
int main() {
	Sales_item book;
	Sales_item val;

	if (std::cin >> book) {
		int cnt = 1;
		while (std::cin >> val) {
			if (book.isbn() == val.isbn()) {
				book += val;
				cnt++;
			}
			else {
				std::cout << book << " Transactions: " << cnt << std::endl;
				book = val;
				cnt = 1;
			}
		}
		std::cout << book << " Transactions: " << cnt << std::endl;
	}

	return 0;
}