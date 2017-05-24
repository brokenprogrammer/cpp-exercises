/++
    Sum square difference
    Problem 6
    
    The sum of the squares of the first ten natural numbers is,
    12 + 22 + ... + 102 = 385

    The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)2 = 552 = 3025

    Hence the difference between the sum of the squares of the first 
    ten natural numbers and the square of the sum is 3025 − 385 = 2640.

    Find the difference between the sum of the squares of the first 
    one hundred natural numbers and the square of the sum.
 +/

import std.stdio;
import std.math;

void main() {
    int sumSquared = pow(summation(100), 2);
    int squaredSum = summationpow2(100);

    writeln(sumSquared - squaredSum);
}

// Closed formula for the sum up to n.
int summation(int n) {
    return (n *(n+1))/2;
}

// Closed formula for every value squared summed up to n.
int summationpow2(int n) {
    return (n*(n+1)*(2*n + 1))/6;
}