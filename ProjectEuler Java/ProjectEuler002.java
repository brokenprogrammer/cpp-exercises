/**
 * Even Fibonacci numbers
 * Problem 2
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler002 {

	public static void main(String[] args) {
		int f0 = 1;
		int f1 = 2;
		int sum = 0;
		
		while (f0 <= 4000000) {
			if (f0 % 2 == 0) {
				sum += f0;
			}
			
			int tmp = f0 + f1;
			f0 = f1;
			f1 = tmp;
		}
		
		System.out.println(sum);
	}

}
