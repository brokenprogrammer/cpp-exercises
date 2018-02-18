#include <iostream>
using namespace std;

/*
*	Project Euler Problem 33
*	Digit cancelling fractions
*
*	The fraction 49/98 is a curious fraction, as an inexperienced mathematician in 
*	attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, 
*	is obtained by cancelling the 9s.
*
*	We shall consider fractions like, 30/50 = 3/5, to be trivial examples.
*
*	There are exactly four non-trivial examples of this type of fraction, 
*	less than one in value, and containing two digits in the numerator and denominator.
*
*	If the product of these four fractions is given in its lowest common terms, 
*	find the value of the denominator.
*/

int gcd(int a, int b) {
	return b == 0 ? a : gcd(b, a % b);
}

int main()
{
	int bestNum = 1;
	int bestDen = 1;

	for (int den = 10; den <= 99; den++)
	{
		for (int num = 10; num < den; num++)
		{
			int num1 = num / 10;
			int num2 = num % 10;
			int den1 = den / 10;
			int den2 = den % 10;

			if (num2 == den1 && num1 * den == num * den2)
			{
				bestNum *= num;
				bestDen *= den;
			}
			else if (num1 == den2 && num2 * den == num * den1)
			{
				bestNum *= num;
				bestDen *= den;
			}
		}
	}

	cout << bestDen / gcd(bestNum, bestDen) << endl;

	int i = 0;
	cin >> i;
}