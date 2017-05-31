/**
 * Sum square difference
 * Problem 6
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler006 {

	public static void main(String[] args) {
		int sumSquared = (int) Math.pow(summation(100), 2);
		int squaredSum = summationPow2(100);
		
		System.out.println(sumSquared - squaredSum);
	}

	// Closed formula for sum up to n
	public static int summation(int n) {
		return (n * (n+1))/2;
	}
	
	// Closed formula for every value squared summed up to n.
	public static int summationPow2(int n) {
		return (n*(n+1)*(2*n + 1))/6;
	}
}
