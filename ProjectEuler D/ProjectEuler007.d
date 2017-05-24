/++
    10001st prime
    Problem 7
    
    By listing the first six prime numbers:
    2, 3, 5, 7, 11 and 13 we can see that the 6th prime is 13.

    What is the 10001st prime number?
 +/

import std.stdio;
import std.conv;
import std.math : sqrt;

void main() {
    int answer = 0;
    int count = 0;


    for (int i = 2; count < 10001; i++) {
        if (isPrime(i)) {
            count++;
            answer = i;
        }
    }
    writeln(answer);
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