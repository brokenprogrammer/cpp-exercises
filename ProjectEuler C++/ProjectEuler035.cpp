#include <iostream>
#include <string>
using namespace std;

/*
*	Project Euler Problem 35
*	Circular primes
*
*	The number, 197, is called a circular prime because all rotations of 
*	the digits: 197, 971, and 719, are themselves prime.
*
*	There are thirteen such primes below 100: 
*	2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
*
*	How many circular primes are there below one million?
*/

#define LIMIT 1000000

bool isPrime(int n)
{
	if (n == 1 || n < 1)
	{
		return false;
	}

	if (n == 2)
	{
		return true;
	}

	double d = sqrt(n);

	for (int i = 2; i <= d; i++)
	{
		if (n % i == 0)
		{
			return false;
		}
	}

	return true;
}

bool isCircularPrime(int n, const bool (&primes)[LIMIT])
{
	if (primes[n] == false)
	{
		return false;
	}

	string s = to_string(n);

	for (int i = 0; i < s.length(); i++)
	{
		string se = s.substr(i) + s.substr(0, i);
		if (primes[atoi(se.c_str())] == false)
		{
			return false;
		}
	}

	return true;
}

int main()
{
	bool primes[LIMIT];

	// Cache primes
	for (int i = 0; i < LIMIT; i++)
	{
		primes[i] = isPrime(i);
	}


	int circularPrimes = 0;
	for (int i = 0; i < LIMIT; i++)
	{
		if (isCircularPrime(i, primes))
		{
			circularPrimes++;
		}

	}

	cout << circularPrimes << endl;

	int i = 0;
	cin >> i;

	return 0;
}