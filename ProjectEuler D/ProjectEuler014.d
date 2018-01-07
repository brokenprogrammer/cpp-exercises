/++ 
    Longest Collatz sequence 
    Problem 14 
     
    The following iterative sequence is defined for the set of positive integers: 
     
    n → n/2 (n is even) 
    n → 3n + 1 (n is odd) 
     
    Using the rule above and starting with 13, we generate the following sequence: 
     
    13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1 
    It can be seen that this sequence (starting at 13 and finishing at 1)  
    contains 10 terms. Although it has not been proved yet (Collatz Problem),  
    it is thought that all starting numbers finish at 1. 
     
    Which starting number, under one million, produces the longest chain? 
     
    NOTE: Once the chain starts the terms are allowed to go above one million. 
+/ 
 
import std.stdio; 
 
long MAXNUMBER = 1000000; 
 
long[long] collatsCache; 
 
void main() { 
    long biggestChain = 0; 
    int biggestNumber = -1; 
 
    collatsCache[1] = 1; 
 
    for (int i = 2; i < MAXNUMBER; i++) { 
        long* p = (i in collatsCache); 
        if (p is null) { 
            long len = getCollatzSequence(i); 
 
            collatsCache[i] = len; 
 
            if (len > biggestChain) { 
                biggestChain = len; 
                biggestNumber = i; 
            } 
        } 
    } 
 
    writeln(biggestChain); 
    writeln(biggestNumber); 
} 
 
long getCollatzSequence(long n) { 
    long len; 
 
    if (n in collatsCache) { 
        len = collatsCache[n]; 
    } else { 
        len = 1 + getCollatzSequence(getNextCollatz(n)); 
    } 
 
    return len; 
} 
 
long getNextCollatz(long n) { 
    return (n % 2 == 0) ? n / 2 : 3 * n + 1; 
} 