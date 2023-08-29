package 메서드;

public class ex09메서드예제3 {

	// 1. isDivisor 구현
	public static boolean isDivisor(int num1, int num2) {
		if(num1 % num2 == 0) {
			return true;
		}else {
			return false;
		}
	}
	
	// 2. getDivisor 구현
	public static void getDivisor(int num) {
		
		for(int i=1;i<=num;i++) {
			if(isDivisor(num,i)) {
				System.out.print(i+" ");
			}
		}
	}
	//3. getSumOfDivisors 구현
	public static int getSumOfDivisors(int num) {
		int result = 0;
		
		for(int i=1;i<=num;i++) {
			if(isDivisor(num,i)) {
				result += i;
			}
		}
		return result;
	}
	//4. getPerfectNumber 구현
	public static void getPerfectNumber(int num1, int num2) {
		System.out.print(num1+"~"+num2+"까지의 완전수 : ");
		for(int i=num1;i<=num2;i++) {
			if(getSumOfDivisors(i)-i==i) {
				System.out.print(i+" ");
			}
		}
	}
	
	public static void main(String[] args) {
//	
//		//1. isDivisor 사용
//		int num1 = 10;
//		int num2 = 2;
//		boolean divisor = isDivisor(num1,num2);
//		System.out.println(divisor);
//		
//		//2. getDivisor 사용
//		getDivisor(10);
//		
		//3. getSumOfDivisors 사용
//		int num = 10;
//		int result = getSumOfDivisors(num);
//		
//		System.out.println(num + "의 약수의 합 : " + result);
//		getDivisor(num);
//		
		//4. getPerfectNumber 사용
		int startValue = 2;
		int endValue = 1000;
		getPerfectNumber(startValue, endValue);
		
		
		
		
		
	}
}
