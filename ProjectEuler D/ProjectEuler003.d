/++
    Largest prime factor
    Problem 3
    
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
 +/

import std.stdio;

void main() {
    long n = 600851475143;
    int largestPrime = 0;
    
    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            n /= i;
            largestPrime = i > largestPrime ? i : largestPrime;
        }
    }

    writeln(largestPrime);
}