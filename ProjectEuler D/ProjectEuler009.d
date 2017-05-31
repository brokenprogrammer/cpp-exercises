import std.stdio;
import std.math;

void main() {
    writeln("Hello World");
    int m = 1;
    int n = 2;

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
