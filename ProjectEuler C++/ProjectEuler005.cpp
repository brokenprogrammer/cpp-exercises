#include <iostream>
using namespace std;

/*
*	Project Euler Problem 5
*	Smallest multiple
*
*	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
*	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

int main()
{
	int lrg = 0;
	int temp = 0;

	while (true)
	{
		lrg++;
		temp = 0;
		for (int x = 1; x <= 20; x++)
		{
			if (lrg % x != 0)
			{
				break;
			}
			temp = x;
		}
		if (temp >= 20)
		{
			break;
		}
	}

	cout << "Smallest multiple: " << lrg << endl;

	int inp;
	std::cin >> inp;
	return 0;
}