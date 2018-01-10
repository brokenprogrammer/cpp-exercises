#include <iostream>
using namespace std;

/*
*	Project Euler Problem 3
*	Largest prime factor
*	
*	The prime factors of 13195 are 5, 7, 13 and 29.
*	What is the largest prime factor of the number 600851475143 ?
*
*	Own Notes:
*		This is the not so efficient solution to this problem. What i did 
*		here is a brute force method which tests all values untill it finds 
*		a value that fits. 
*/
long findLargestPrimeBrute(long long n) 
{
	int c;
	int largestPrime;
	for (c = 2; c <= n; c++)
	{
		//If n is divisable with c
		if (n % c == 0)
		{
			//Divide n by c to find the next factor.
			n /= c;
			cout << "c: " << c << endl;
		}
	}

	return c;
}

int main()
{
	long long number = 600851475143;

	cout << "Highest prime: " << findLargestPrimeBrute(number);

	int inp;
	std::cin >> inp;
	return 0;
}