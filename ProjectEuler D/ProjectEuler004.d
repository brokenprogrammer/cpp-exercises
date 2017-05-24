/++
    Largest palindrome product
    Problem 4
    
    A palindromic number reads the same both ways. The largest 
    palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    
    Find the largest palindrome made from the product of two 3-digit numbers.
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