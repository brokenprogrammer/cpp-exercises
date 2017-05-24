/++
    Largest prime factor
    Problem 3
    
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
 +/

import std.stdio;
import std.conv;
import std.string;
import std.range;

void main() {
    int largestPalindrome = 0;
    int i = 0;
    //char[] s = "hello world".dup;
    
    for (int x = 100; x < 1000; x++) {
        for (int y = 100; y < 1000; y++) {
            i = x * y;
            auto s = to!string(i);
            if(isPalindrome(s)) {
                largestPalindrome = i > largestPalindrome ? i : largestPalindrome;
            }
        }
    }

    writeln(largestPalindrome);
 }

 bool isPalindrome(string x) {
     
     while (!x.empty) {
         if (x.length == 1) {
             return true;
         }

         if (x.front != x.back) {
             return false;
         }

         x.popFront();
         x.popBack();
     }
     return true;
 }