/++
    Summation of primes
    Problem 10

    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

    Find the sum of all the primes below two million.
 +/

import std.conv;
import std.math : sqrt;
import std.stdio;

 void main() {
    int[] list = genPrimes(2_000_000);
    long sum;

    foreach (int e; list) {
        sum += e;
    }

    writeln(sum);
 }

 int[] genPrimes(int n) {
		int[] list = new int[](0);

		for (int i = 2; i <= n; i++) {
			if (isPrime(i)) {
				list ~= i;
			}
		}
		
		return list;
	}

 bool isPrime(int n) {
    if (n == 1) {
        return false;
    }

    if (n == 2) {
        return true;
    }

    auto q = to!float(n);
    auto x = sqrt(q);
    for (int i = 2; i <= x; i++) {
        if (n % i == 0) {
            return false;
        }
    }

    return true;
}