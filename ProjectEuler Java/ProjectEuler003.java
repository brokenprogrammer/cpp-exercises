/**
 * Largest prime factor
 * Problem 3
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler003 {

	public static void main(String[] args) {
		long number = 600851475143L;
		long largestPrime = 0;
		
		for (long i = 1; i <= number; i++) {
			if (number % i == 0) {
				number = number / i;
				largestPrime = i > largestPrime ? i : largestPrime;
			}
		}
		
		System.out.println(largestPrime);
	}
}
