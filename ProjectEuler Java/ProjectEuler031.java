
/**
 * Coin sums
 * Problem 31
 * 
 * @author Oskar Mendel
 */

public class ProjectEuler031 {

	private static final int[] COINS = {1, 2, 5, 10, 20, 50, 100, 200};
	private static final int TARGET = 200;
	
	public static void main(String[] args) {
		int [] ways = new int[TARGET + 1];
		ways[0] = 1;
		
		for (int i = 0; i < COINS.length; i++) {
			for (int j = COINS[i]; j <= TARGET; j++) {
				ways[j] += ways[j - COINS[i]];
			}
		}
		
		System.out.println(ways[TARGET]);
	}

}
