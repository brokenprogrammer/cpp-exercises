#include <iostream>

using namespace std;

const int FIRSTMULTIPLE = 3;
const int SECNDMULTIPLE = 5;
const int BELOWNR = 1000;

/*
	Project Euler Problem 1
	Multiples of 3 and 5

	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
	Find the sum of all the multiples of 3 or 5 below 1000.

	Own Notes:
		A pitfall of this problem might be that you dont check if the number is a multiple of both 3 and 5
		then you would be adding all the numbers that are divisable by 15 are counted twice and get a too large answer.
*/
int main()
{
	int sum = 0;
	
	for (int i = 0; i < BELOWNR; i++)
	{
		if (i % 3 == 0 || i % 5 == 0)
		{
			sum += i;
		}
	}

	cout << "Sum: " << sum;
	int input;
	cin >> input;

	return 0;
}