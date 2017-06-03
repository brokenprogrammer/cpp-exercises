import java.util.ArrayList;

/**
 * Summation of primes
 * Problem 10
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler010 {

	public static void main(String[] args) {
		ArrayList<Integer> list = genPrimes(2000000);
		long sum = 0;
		for (Integer x : list) {
			sum += x;
		}
		
		System.out.println(sum);
	}

	public static ArrayList<Integer> genPrimes(int n) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		for (int i = 2; i <= n; i++) {
			if (isPrime(i)) {
				list.add(i);
			}
		}
		
		return list;
	}
	
	public static boolean isPrime(int n) {
		if (n == 1) {
			return false;
		}
		
		if (n == 2) {
			return true;
		}
		
		double d = Math.sqrt(n);
		
		for (int i = 2; i <= d; i++) {
			if (n % i == 0) {
				return false;
			}
		}
		
		return true;
	}
}
