import java.util.HashMap;
import java.util.Map;


/**
 * Longest Collatz sequence
 * Problem 14
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler014 {

	private static final long MAX_VALUE = 1000000L;
	private static Map<Long, Long> collatzCache = new HashMap<Long, Long>();
	
	public static void main(String[] args) {
		long biggestChain = 0;
		int biggestNumber = -1;
		
		collatzCache.put(1L, 1L);
		
		for (int i = 2; i < MAX_VALUE; i++) {
			if (!collatzCache.containsKey(i)) {
				long len = collatzSequence(i);
				
				collatzCache.put((long)i, (long)len);
				
				if (len > biggestChain) {
					biggestChain = len;
					biggestNumber = i;
				}
			}
		}
		
		System.out.println(biggestNumber);
	}

	public static long collatzSequence(long n) {
		Long len = collatzCache.get(n);
		
		if (len == null) {
			len = 1L + collatzSequence(getNextCollatz(n));
		}
		
		return len;
	}
	
	public static long getNextCollatz(long n) {
		return (n % 2 == 0) ? n / 2 : 3 * n + 1;
	}
}
