import java.math.BigInteger;

/**
 * Lattice paths
 * Problem 15
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler015 {
	
	/*
	 * This is a combinatorics problem. Moving from the top left to the bottom right 
	 * means making X moves right and X moves down. That means that there is 
	 * 2X ways to choose X moves which is the same as (2X)!/((2X - X)!X!).
	 * 
	 * Resource for further reading: http://www.robertdickau.com/lattices.html
	 */
	public static void main(String[] args) {
		System.out.println(binomial(40, 20).toString());
	}
	
	public static BigInteger binomial(int n, int k) {
		if (k > n || k < 0) {
			throw new IllegalArgumentException();
		}
		
		BigInteger number = factorial(n);
		number = number.divide((factorial(k).multiply(factorial(n-k))));
		
		return number;
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
