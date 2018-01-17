/+
    Coin sums
    Problem 31

    In England the currency is made up of pound, £, and pence, p, 
    and there are eight coins in general circulation:

    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
    It is possible to make £2 in the following way:

    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
    How many different ways can £2 be made using any number of coins?
+/

import std.stdio;

const int[] COINS = [1, 2, 5, 10, 20, 50, 100, 200];
const int TARGET = 200;

void main()
{
    int[] ways = new int[TARGET + 1];
    ways[0] = 1;

    for(int i = 0; i < COINS.length; i++) 
    {
        for (int j = COINS[i]; j <= TARGET; j++)
        {
            ways[j] += ways[j - COINS[i]];
        }
    }

    writeln(ways[TARGET]);
}