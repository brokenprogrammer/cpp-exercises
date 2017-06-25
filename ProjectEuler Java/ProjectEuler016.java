import java.math.BigInteger;

/**
 * Power digit sum
 * Problem 16
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler016 {

	public static void main(String[] args) {
		String num = BigInteger.valueOf(2).pow(1000).toString();
		int sumDigits = 0;
		
		for (int i = 0; i < num.length(); i++) {
			sumDigits += Integer.parseInt(num.substring(i, i+1));
		}
		
		System.out.println(sumDigits);
	}

}
