/**
 * 10001st prime
 * Problem 7
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler007 {

	public static void main(String[] args) {
		int answer = 0;
		int count = 0;
		
		for (int i = 2; count < 10001; i++) {
			if (isPrime(i)) {
				count++;
				answer = i;
			}
		}
		
		System.out.println(answer);
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
