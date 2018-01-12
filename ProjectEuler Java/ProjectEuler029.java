import java.math.BigInteger;
import java.util.HashSet;
import java.util.Set;

/**
 * Distinct powers
 * Problem 29
 * 
 * @author Oskar Mendel
 */

public class ProjectEuler029 {
	
	private static final int BOUND = 100;
	
	public static void main(String[] args) {
		Set<BigInteger> terms = new HashSet<>();
		
		for (int a = 2; a <= BOUND; a++)  {
			for (int b = 2; b <=BOUND; b++) {
				terms.add(BigInteger.valueOf(a).pow(b));
			}
		}
		
		System.out.print(terms.size());
	}
}
