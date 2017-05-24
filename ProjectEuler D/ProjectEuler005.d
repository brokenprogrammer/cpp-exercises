/++
    Smallest multiple
    Problem 5
    
    2520 is the smallest number that can be divided by
    each of the numbers from 1 to 10 without any remainder.
    
    What is the smallest positive number that is evenly divisible
    by all of the numbers from 1 to 20?
 +/

import std.stdio;
import std.numeric : gcd;

void main() {
    int answ = 1;

    for (int i = 1; i <= 20; i++) {
        answ *= i / gcd(answ,i);
    }

    writeln(answ);
}