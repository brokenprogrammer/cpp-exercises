import java.util.ArrayList;

/**
 * Goldbach's other conjecture
 * Problem 46
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler046 {

	public static void main(String[] args) {
		ArrayList<Integer> primes = new ArrayList<>();
		int p = 0;
		while (primes.size() < 10000) {
			if (isPrime(p)) {
				primes.add(p);
			}
			p++;
		}
		
		int res = 1;
		boolean notFound= true;
		
		while (notFound) {
			res += 2;
			
			notFound = false;
			for (int j = 0; res >= primes.get(j); j++) {
				if (isTwiceSquare(res - primes.get(j))) {
					notFound = true;
					break;
				}
			}
		}
		
		System.out.println("Solution: " + res);
	}
	
	public static boolean isTwiceSquare(long n) {
		double square = Math.sqrt(n/2);
		return square == ((int)square);
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
