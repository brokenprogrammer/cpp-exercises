/**
 * Number letter counts
 * Problem 17
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler017 {
	
	private static String[] ones = {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
			"eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
	
	private static String[] tens = {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
	
	public static void main(String[] args) {
		int letters = 0;
		
		for (int i = 1; i <= 1000; i++) {
			letters += toText(i).replaceAll("-", "").replaceAll(" ", "").length();
		}
		
		System.out.println(letters);
	}
	
	public static String toText(int number) {
		if (0 <= number && number < 20) {
			return ones[number];
		} else if(20 <= number && number < 100) {
			return tens[number/10] + (number % 10 != 0 ? "-" + toText(number % 10) : "");
		} else if (100 <= number && number < 1000) {
			return ones[number/100] + " hundred" + (number % 100 != 0 ? " and " + toText(number % 100) : "");
		} else if (1000 <= number && number < 1000000) {
			return toText(number / 1000) + " thousand " + (number % 1000 != 0 ? toText(number % 1000) : "");
		} else {
			throw new IllegalArgumentException();
		}
	}
}
