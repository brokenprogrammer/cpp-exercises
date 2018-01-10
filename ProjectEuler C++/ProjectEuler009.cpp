#include <iostream>

/*
 * Special pythagorean triplet
 * Problem 9
 *
 * A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 *
 * a^2 + b^2 = c^2
 * For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 *
 * There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 * Find the product abc.
 */

bool isPythagoreanTriplet(int a, int b, int c)
{
    if (a < b && b < c)
    {
        int ab = (a*a) + (b*b);
        if (ab == (c*c))
        {
            return true;
        }
    }
    return false;
}

int main() {
    int answer = 0;

    for (int a = 1; a < 1000; a++)
    {
        for (int b = a+1; b < 1000; b++)
        {
            int c = 1000 - a - b;

            if (isPythagoreanTriplet(a, b, c))
            {
                answer = a * b * c;
            }
        }
    }

    std::cout << answer << std::endl;

    return 0;
}

