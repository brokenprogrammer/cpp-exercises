# Smallest multiple
# Problem 5
#
# 2520 is the smallest number that can be divided by each
# of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

from fractions import gcd

def smallestMultiple():
    sum = 1
    for x in range(2, 21):
        sum *= x/gcd(sum,x)
    return sum

if __name__ == "__main__":
    print (smallestMultiple())
