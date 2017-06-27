/**
 * Amicable numbers
 * Problem 21
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler021 {

	public static void main(String[] args) {
		int sum = 0;
		
		for (int i = 1; i < 10000; i++) {
			if (isAmmicable(i)) {
				sum += i;
			}
		}
		
		System.out.println(sum);
	}

	public static boolean isAmmicable(int n) {
		int q = sumDivisors(n);
		
		if (n != q && sumDivisors(q) == n) {
			return true;
		}
		
		return false;
	}
	
	public static int sumDivisors(int n) {
		int t = 0;
		
		for (int i = 1; i < n; i++) {
			if (n % i == 0) {
				t += i;
			}
		}
		
		return t;
	}
}
