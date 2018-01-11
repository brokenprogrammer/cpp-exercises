/++
    Lattice paths
    Problem 15

    Starting in the top left corner of a 2×2 grid, and only being able to move 
    to the right and down, there are exactly 6 routes to the bottom right corner.
    
    How many such routes are there through a 20×20 grid?
+/

import std.stdio;
import std.mathspecial:gamma;
import std.conv;

real binomial(int n, int k) 
{
    return gamma(n+1) / (gamma(k+1) * gamma((n-k) + 1));
}

void main()
{
    int x = 20;
    int y = 20;

    auto paths = binomial(x+y, y);
    
    writeln(to!long(paths));
}