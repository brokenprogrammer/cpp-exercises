#include <iostream>
using namespace std;

/*
*	Project Euler Problem 34
*	Digit factorials
*
*	145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
*
*	Find the sum of all numbers which are equal to the sum of the factorial of their digits.
*
*	Note: as 1! = 1 and 2! = 2 are not sums they are not included.
*/

int factorial(int i)
{
	return (i == 1 || i == 0) ? 1 : factorial(i-1) * i;
}

int main()
{
	int factorials[10];
	int result = 0;

	for (int i = 0; i < 10; i++)
	{
		factorials[i] = factorial(i);
	}

	for (int i = 10; i <= 2540160; i++)
	{
		int sum = 0;
		int number = i;
		while (number > 0)
		{
			// Remove lowest digit
			int d = number % 10;
			number /= 10;

			sum += factorials[d];
		}

		if (sum == i)
		{
			result += i;
		}
	}

	cout << result << endl;

	int i = 0;
	cin >> i;

	return 0;
}