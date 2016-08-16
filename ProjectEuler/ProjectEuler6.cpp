#include <iostream>
using namespace std;

/*
*	Project Euler Problem 6
*	Sum square difference
*
*	The sum of the squares of the first ten natural numbers is,
*	12 + 22 + ... + 102 = 385
*
*	The square of the sum of the first ten natural numbers is,
*	(1 + 2 + ... + 10)2 = 552 = 3025
*
*	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
*
*	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/

int main()
{
	long long sumSquare = 0;
	long long difference = 0;
	long long squares = 0;

	for (int i = 0; i <= 100; i++)
	{
		sumSquare += i;
		squares += (i * i);
	}
	cout << "Sum: " << sumSquare << endl;
	cout << "Squares: " << squares << endl;
	sumSquare = sumSquare * sumSquare;
	difference = sumSquare - squares;

	cout << "Difference is: " << difference << endl;

	int input = 0;
	cin >> input;

	return 0;
}