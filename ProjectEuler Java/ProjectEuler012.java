/**
 * Highly divisible triangular number
 * Problem 12
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler012 {
	
	public static void main(String[] args) {
		
		int number = 0;
		while (numberOfFactors(getTriangleNumber(number)) < 500) {
			number++;
		}
		
		System.out.println(getTriangleNumber(number));
	}
	
	public static int getTriangleNumber(int n) {
		int res = 0;
		for (int i = 0; i <= n; i++) {
			res += i;
		}
		
		return res;
	}
	
	public static int numberOfFactors(int n) {
		int cnt = 0;
		
		for (int i = 1; i < Math.sqrt(n); i++) {
			if (n % i == 0) {
				cnt += 2;
			}
		}
		
		return cnt;
	}
}
