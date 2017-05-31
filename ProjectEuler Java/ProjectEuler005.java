/**
 * Smallest multiple
 * Problem 5
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler005 {

	public static void main(String[] args) {
		int answer = 1;
		
		for (int i = 1; i <= 20; i++) {
			answer *= i / gcd(answer, i);
		}
		
		System.out.println(answer);
	}
	
	public static int gcd (int a, int b) {
		return a == 0 ? b : gcd(b % a, a);
	}

}
