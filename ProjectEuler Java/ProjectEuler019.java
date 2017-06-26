import java.time.DayOfWeek;
import java.time.LocalDate;

/**
 * Counting Sundays
 * Problem 19
 * 
 * @author Oskar Mendel
 */
public class ProjectEuler019 {

	public static void main(String[] args) {
		LocalDate date = LocalDate.parse("1901-01-01");
		
		
		System.out.println(sundaysOnFirst(date));
		System.out.println(sundaysOnFirst(1901, 2000));
	}
	
	private static int sundaysOnFirst(LocalDate date) {
		int sundays = 0;
		
		for (int i = 1901; i <= 2000; i++) {
			for (int m = 1; m <= 12; m++) {
				date.getDayOfWeek();
				if (date.getDayOfWeek() == DayOfWeek.SUNDAY) {
					sundays++;
				}
				date = date.plusMonths(1);
			}
		}
		
		return sundays;
	}
	
	private static int sundaysOnFirst(int startYear, int endYear) {
		int sundays = 0;
		
		for (int y = startYear; y <= endYear; y++) {
			for (int m = 1; m <= 12; m++) {
				if (zellersCongruence(y, m, 1) == 0) {
					sundays++;
				}
			}
		}
		
		return sundays;
	}
	
	private static int zellersCongruence(int year, int month, int day) {
		int ceny = year % 100;
		int cen = year / 100;
		
		if (month <= 2)  {
			year -= 1;
			month += 12;
		}
		
		return (day + ((13 * month + 1) / 5) + ceny + (ceny / 4) + (cen / 4) - (2 * cen)) % 7;
	}
}
