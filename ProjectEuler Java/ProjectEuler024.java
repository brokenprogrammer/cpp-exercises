/**
 * Lexicographic permutations
 * Problem 24
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler024 {
	
	public static void main(String[] args) {
		int[] num = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
		
		for (int i = 0; i < 999999; i++) {
			nextPermutation(num);
		}
		
		for (int n : num) {
			System.out.print(n);
		}
	}
	
	public static void nextPermutation(int[] n) {
		if (n.length == 0) {
			return;
		}
		
		int larg = n.length - 2;
		int small = n.length -1 ;
		
		while (larg >= 0 && n[larg] >= n[larg+1]) {
			larg--;
		}
		
		if (larg == -1) {
			return;
		}
		
		while (n[small] <= n[larg]) {
			small--;
		}
		
		int temp = n[larg];
		n[larg] = n[small];
		n[small] = temp;
		
		for (int i = larg + 1, j = n.length - 1; i < j; i++, j--) {              
            temp = n[i];              
            n[i] = n[j];
            n[j] = temp;
        }
	}
}