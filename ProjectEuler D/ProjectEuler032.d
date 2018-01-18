/+
    Pandigital products
    Problem 32

    We shall say that an n-digit number is pandigital if it makes use of all 
    the digits 1 to n exactly once; for example, the 5-digit number, 15234, 
    is 1 through 5 pandigital.

    The product 7254 is unusual, as the identity, 39 × 186 = 7254, 
    containing multiplicand, multiplier, and product is 1 through 9 pandigital.

    Find the sum of all products whose multiplicand/multiplier/product identity 
    can be written as a 1 through 9 pandigital.

    HINT: Some products can be obtained in more than one way so be sure 
    to only include it once in your sum.
+/

import std.stdio;
import std.string;
import std.conv;
import std.algorithm.sorting;

void main()
{
    long sum = 0;

    for (int i = 0; i < 10000; i++) {
        if (isPandigitalProduct(i)) {
            sum += i;
        }
    }

    writeln(sum);
}

bool isPandigitalProduct(int n) {

    for (int i = 1; i <= n; i++) {
        if (n % i == 0) {
            if (isPandigital(n, i, n/i)) {
                return true;
            }
        }
    }

    return false;
}

bool isPandigital(int n, int i, int t) {
    string numbers = "";
    numbers ~= to!string(n);
    numbers ~= to!string(i);
    numbers ~= to!string(t);

    // Sorting string
    auto bytes = numbers.representation.dup;
    sort(bytes);
    numbers = bytes.assumeUTF;
    
    return numbers == "123456789";
}