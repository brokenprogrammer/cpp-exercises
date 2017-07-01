import java.math.BigInteger;

/**
 * 1000-digit Fibonacci number
 * Problem 25
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler025 {
	
	public static void main(String[] args) {
		int i = 1;
		
		BigInteger n1 = BigInteger.ZERO;
		BigInteger n2 = BigInteger.ONE;
		BigInteger tmp = BigInteger.ZERO;
		
		while (n2.toString().length() != 1000) {
			tmp = n2.add(n1);
			n1 = n2;
			n2 = tmp;
			
			i++;
		}
		
		System.out.println(i);
	}
}
