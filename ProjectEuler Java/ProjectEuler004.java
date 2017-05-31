/**
 * Largest palindrome product
 * Problem 4
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler004 {

	public static void main(String[] args) {
		int largestPalindrome = 0;
		int i = 0;
		
		for (int x = 100; x < 1000; x++) {
			for (int y = 100; y < 1000; y++) {
				i = x * y;
				
				if (isPalindrome(String.valueOf(i))) {
					largestPalindrome = i > largestPalindrome ? i : largestPalindrome;
				}
			}
		}
		
		System.out.println(largestPalindrome);
	}
	
	public static boolean isPalindrome(String x) {
		x = x.toLowerCase();
		
		while (!x.isEmpty()) {
			if (x.length() == 1) {
				return true;
			}
			
			if (x.charAt(0) != x.charAt(x.length()-1)) {
				return false;
			}
			
			x = x.substring(1, x.length()-1);
		}
		
		return true;
	}

}
