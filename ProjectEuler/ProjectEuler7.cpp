#include <iostream>
using namespace std;

/*
 *	Project Euler Problem 7
 *	10001st prime
 *
 *	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 *	What is the 10 001st prime number?
 */

bool isPrime(int n) {

	for (int i = 2; i < n; i++)
	{
		if (n % i == 0)
		{
			return false;
		}
	}

	return true;
}

int main()
{
	//Easy solution: Brute force.. Just a while loop and for every found prime number increment i untill i is 10001 and then get that prime..
	int i = 1;
	int foundPrimes = 0;
	long long prime;

	while (foundPrimes <= 10001)
	{
		if (isPrime(i))
		{
			foundPrimes++;
			prime = i;
		}
		i++;
	}

	cout << "Prime: 10001: " << prime << endl;

	int input = 0;
	cin >> input;

	return 0;
}