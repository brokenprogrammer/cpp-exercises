# Largest palindrome product
# Problem 4
#
# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

def findLargestPalindrome():
    answer = 0
    for x in range(100,1000):
        for y in range(100,1000):
            k = x*y
            s = str(k)
            if s == s[::-1]:
                if x*y > answer:
                    answer = x*y
    return answer

if __name__ == "__main__":
    print (findLargestPalindrome())
 
