/+
    Digit fifth powers
    Problem 30

    Surprisingly there are only three numbers that can be written as the sum 
    of fourth powers of their digits:

    1634 = 1^4 + 6^4 + 3^4 + 4^4
    8208 = 8^4 + 2^4 + 0^4 + 8^4
    9474 = 9^4 + 4^4 + 7^4 + 4^4
    As 1 = 1^4 is not a sum it is not included.

    The sum of these numbers is 1634 + 8208 + 9474 = 19316.

    Find the sum of all the numbers that can be written as the sum of fifth 
    powers of their digits.
+/

import std.stdio;
import std.math;

const int BOUND = 355000;

void main()
{   
    // 9^5 = 59049, 5 digits
    // 5*9^5 = 295245, 6 digits
    // 5*9^5 = 354294, 6 digits
    // This tells us that the bound is around 355000.

    long sum = 0;

    for (int i = 2; i <= BOUND; i++) {
        if (i == fifthPowerDigitsSum(i)) {
            sum += i;
        }
    }

    writeln(sum);
}

int fifthPowerDigitsSum(int n) {
    int sum = 0;
    
    while(n != 0) {
        int t = n % 10;
        sum += pow(t, 5);
        n /= 10;
    }

    return sum;
}