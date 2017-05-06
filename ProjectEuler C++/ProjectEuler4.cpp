#include <iostream>
#include <string>
using namespace std;

/*
*	Project Euler Problem 4
*	Largest palindrome product
*
*	A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
*	Find the largest palindrome made from the product of two 3-digit numbers.
*
*	Own Notes:
*		This is also like the last solution a kind of a brute force solution. I tried finding a math algorithm to find Palindrome products 
*		without success, that would be a more efficient way to solve this.
*/
bool isPalindrome(int n)
{
	std::string s = std::to_string(n);
	int slen = s.length() - 1;

	for (int  i = 0; i <= slen; i++)
	{
		if (s[i] != s[(slen) - i]) {
			return false;
		}
	}

	return true;
}

int main()
{
	int lrg = 0;

	for (int i = 999; i >= 100; i--)
	{
		for (int x = 999; x >= 100; x--)
		{
			if (isPalindrome(i*x))
			{
				if (i*x > lrg) {
					lrg = i*x;
				}
			}
		}
	}

	cout << "Largest palindrome: " << lrg << endl;

	int inp;
	std::cin >> inp;
	return 0;
}