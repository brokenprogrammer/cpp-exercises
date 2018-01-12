/**
 * Number spiral diagonals
 * Problem 28
 * 
 * Own Notes:
 * 	Observing the initial spiral we notice that the top right corner is always equal to the size^2.
 *  Following this pattern we can retrieve the formula for the other corners:
 *  	Top left: size^2 - (size - 1)
 *  	Bottom left: size^2 - 2(size - 1)
 *  	Bottom right: size^2 - 3(size -1)
 *  Adding all of these together we use the following to get the value of all corners together:
 *  	4 * size^2 - 6(size - 1)
 * 
 * @author Oskar Mendel
 */

public class ProjectEuler028 {
	
	private static int MAX_SIZE = 1001;
	
	public static void main(String[] args) {
		int sum = 1;	// Since size 1 is our special starting case.
		
		for (int i = 3; i <= MAX_SIZE; i += 2) {
			sum += 4 * (i * i) - 6 * (i - 1);
		}
		
		System.out.println(sum);
	}
}
