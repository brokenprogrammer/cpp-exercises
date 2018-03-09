
/**
 * Digit fifth powers
 * Problem 30
 * 
 * @author Oskar Mendel
 */

public class ProjectEuler030 {
	
	private static final int BOUND = 355000;
	
	public static void main(String[] args) {
		long sum = 0;
		
		for (int i = 2; i <= BOUND; i++) {
			if (i == fifthPowerDigitsSum(i)) {
				sum += i;
			}
		}
		
		System.out.println(sum);
	}
	
	private static int fifthPowerDigitsSum (int n) {
		int sum = 0;
		
		while (n != 0) {
			int t = n % 10;
			sum += Math.pow(t, 5);
			n = n / 10;
		}
		
		return sum;
	}
}
