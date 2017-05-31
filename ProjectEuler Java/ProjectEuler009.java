/**
 * Special Pythagorean triplet
 * Problem 9
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler009 {

	public static void main(String[] args) {
		long answer = 0;
		
		for (int a = 1; a < 1000; a++) {
			for (int b = a+1; b < 1000; b++) {
				int c = 1000 - a - b;
				if (isPytagoreanTripple(a, b, c)) {
					answer = (a*b*c);
				}
			}
		}
		
		System.out.println(answer);
	}
	
	public static boolean isPytagoreanTripple(int a, int b, int c) {
		if (a < b && b < c) {
			int abSum = (int) (Math.pow(a, 2) + Math.pow(b, 2));
			if (abSum == (int) Math.pow(c, 2)) {
				return true;
			}
		}
		
		return false;
	}
}
