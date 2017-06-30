/**
 * Non-abundant sums
 * Problem 23
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler023 {
	
	private static final int LIMIT = 28123;
	private static boolean abundant[] = new boolean[LIMIT + 1]; 
	
	public static void main(String[] args) {
		for (int i = 1; i < abundant.length; i++) {
			abundant[i] = isAbundant(i);
		}
		
		int sum = 0;
		for (int i = 0; i < abundant.length; i++) {
			//Perform check
			if (!isSumOfAbundant(i)) {
				sum += i;
			}
		}
		
		System.out.println(sum);
	}
	
	public static boolean isSumOfAbundant(int n) {
		for (int i = 1; i <= n; i++) {
			if (abundant[i] && abundant[n - i]) {
				return true;
			}
		}
		
		return false;
	}
	
	public static boolean isAbundant(int n) {
		if (n < 1) {
			throw new IllegalArgumentException();
		}
		
		int sum = 1;
		int x = (int) Math.sqrt(n);
		
		for (int i = 2; i <= x; i++) {
			if (n % i == 0) {
				sum += i;
				sum += n / i;
			}
		}
		
		// Perfect square
		if (x * x == n) {
			sum -= x;
		}
		
		return sum > n;
	}
}
