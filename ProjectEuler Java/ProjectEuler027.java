/**
 * Quadratic primes
 * Problem 27
 * 
 * Own notes: 
 * 	f(n) = n^2 + a*n + b
 *  f(0) = b
 *  
 *  B must be a prime
 * 
 * @author Oskar Mendel
 */

public class ProjectEuler027 {
	
	public static void main(String[] args) {
		int bestN = 0;
		int bestA = 0;
		int bestB = 0;
		
		for (int a = - 1000; a < 1000; a++) {
			for (int b = 0; b <= 1000; b++) {
				int num = getConsecutivePrimes(a, b);
				
				if (num > bestN) {
					bestN = num;
					bestA = a;
					bestB = b;
				}
			}
		}
		
		System.out.println(bestA + " " + bestB);
		System.out.println(bestA * bestB);
	}
	
	private static int getConsecutivePrimes(int a, int b) {
		for (int n = 0; ; n++) {
			int result = n * n + a * n + b;
			if (result < 0 || !isPrime(result)) {
				return n;
			}
		}
	}
	
	private static boolean isPrime(int num) {
		if (num == 1 || num < 1) {
			return false;
		}
		
		if (num == 2) {
			return true;
		}
		
		double d = Math.sqrt(num);
		
		for (int i = 2; i < d; i++) {
			if (num % i == 0) {
				return false;
			}
		}
		
		return true;
	}
}
