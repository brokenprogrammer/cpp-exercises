/**
 * Reciprocal cycles
 * Problem 26
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler026 {
	
	public static void main(String[] args) {
		
		int number = 0;
		int length = 0;
		
		for (int i = 1; i <= 1000; i++) {
			int len = getCycleLength(i);
			
			if (len > length) {
				number = i;
				length = len;
			}
		}
		
		System.out.println(number);
		System.out.println(length); // TODO: Might be flawed, look over later..
	}
	
	public static int getCycleLength(int x) {
		if (x == 0) {
			return 0;
		}
		
		int remainders[] = new int[x+1];
		
		int pos = 0;
		int mod = 1;
		
		while (remainders[mod] == 0 && mod != 0) {
			remainders[mod] = pos++;
			mod = mod * 10 % x;
		}
		
		if (mod == 0) {
			return 0;
		}
		
		return pos - remainders[mod];
	}
}
