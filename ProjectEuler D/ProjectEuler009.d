/++
    Special Pythagorean triplet
    Problem 9
    
    A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
        a2 + b2 = c2
    
    For example, 32 + 42 = 9 + 16 = 25 = 52.
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
 +/
import std.stdio;
import std.math;

void main() {
    for (int a = 1; a < 1000; a++) {
        for (int b = a+1; b < 1000; b++) {
            int c = 1000 - a - b;
            if (isPytagoreanTripple(a, b, c)) {
                writeln(a*b*c);
            }
        }
    }
}

bool isPytagoreanTripple(int a, int b, int c) {
    if (a < b && b < c) {
        int abSum = pow(a, 2) + pow(b, 2);
        if (abSum == pow(c, 2)) {
            return true;
        }
    }
    return false;
}
