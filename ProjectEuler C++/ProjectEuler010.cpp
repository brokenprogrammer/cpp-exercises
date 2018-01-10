#include <iostream>
#include <math.h>
#include <vector>

/*
 * Summation of primes
 * Problem 10
 *
 * The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 *
 * Find the sum of all the primes below two million.
 */

bool isPrime(int num)
{
	if (num == 1 || num < 1)
	{
		return false;
	}

	if (num == 2)
	{
		return true;
	}

	double d = sqrt(num);

	for (int i = 2; i <= d; i++)
	{
		if (num % i == 0)
		{
			return false;
		}
	}

	return true;
}

int main(int argc, char** argv)
{
	long long sum = 0;

	for (int i = 2; i < 2000000; i++)
	{
		if (isPrime(i))
		{
			sum += i;
		}
	}
	
	std::cout << sum << std::endl;
	return 0;
}