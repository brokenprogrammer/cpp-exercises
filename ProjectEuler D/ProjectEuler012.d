/++
    Highly divisible triangular number
    Problem 12

    The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

    1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

    Let us list the factors of the first seven triangle numbers:

    1: 1
    3: 1,3
    6: 1,2,3,6
    10: 1,2,5,10
    15: 1,3,5,15
    21: 1,3,7,21
    28: 1,2,4,7,14,28
    We can see that 28 is the first triangle number to have over five divisors.

    What is the value of the first triangle number to have over five hundred divisors?
 +/

import std.conv;
import std.math : sqrt;
import std.stdio;

void main() {
    int number;

    while(numberOfFactors(getTriangleNumber(number)) < 500) {
        number++;
    }

    writeln(getTriangleNumber(number));
}

int getTriangleNumber(int n) {
    int res;

    for (int i; i <= n; i++) {
        res += i;
    }

    return res;
}

int numberOfFactors(int n) {
    int count;
    const float x = sqrt(to!float(n));

    for (int i = 1; i < x; i++) {
        if (n % i == 0) {
            count += 2;
        }
    }

    return count;
}