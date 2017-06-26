import java.math.BigInteger;

/**
 * Factorial digit sum
 * Problem 20
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler020 {

	public static void main(String[] args) {
		String number = factorial(100).toString();
		int sum = 0;
		
		for (int i = 0; i < number.length(); i++) {
			sum += Integer.parseInt(number.substring(i, i+1));
		}
		
		System.out.println(sum);
	}
	
	public static BigInteger factorial(int n) {
		if (n < 0) {
			throw new IllegalArgumentException("Cannot calculate factorial of negative number.");
		}
		
		BigInteger number = BigInteger.ONE;
		
		for (int i = 2; i <= n; i++) {
			number = number.multiply(BigInteger.valueOf(i));
		}
		
		return number;
	}
}
