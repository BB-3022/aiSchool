package 메서드;

public class ex07메서드예제2 {

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num1 = 10;
		int num2 = 2;
		boolean divisor = isDivisor(num1, num2);
		System.out.println(divisor);
	
	
		int num = 10;
		int result = getSumOfDivisors(num);
		System.out.println(num + "의 약수의 합 : " + result);
		
		getDivisor(num);
		
		int num3 = 369;
		boolean result2 = isPerfectNumber(num3);
		System.out.println("완전수인가요? : "+result2);
	
		int num4 = 2;
		int num5 = 1000;
		getPerfectNumber(num4,num5);
	}
	// 1. 약수 판별 메서드
	public static boolean isDivisor(int num1, int num2) {
		if(num1%num2==0) {
			return true;
		}else {
			return false;
		}	
	}
	// 2. 약수를 구하는 메서드
	public static void getDivisor(int num) {
		System.out.print(num+"의 약수 : ");
		for(int i=1;i<=num;i++) {
			if(isDivisor(num,i)) {
				System.out.print(i + " ");
			}
		}
		System.out.println();
	}
	// 3. 약수의 합을 구하는 메서드
	public static int getSumOfDivisors(int num) {
		int sum = 0;
		for(int i=1;i<=num/2;i++) {
			if(isDivisor(num,i)) {
				sum+=i;
			}
		}
		return sum+num;
	}

	// 4. 완전수인지 아닌지를 판단해주는 메서드 
	public static boolean isPerfectNumber(int num3) {
		if(getSumOfDivisors(num3) - num3 == num3) {
			return true;
		}else {
			return false;
		}
	}
	
	// 5. 지정범위 사이의 숫자 중 완전수 출력하는 메서드
	public static void getPerfectNumber(int num1, int num2) {
		System.out.print(num1 +"~"+num2+"까지의 완전수 : ");
		for(int i = num1;i<=num2;i++) {
			if(isPerfectNumber(i)) {
				System.out.print(i+" ");
			}
		}
	}
	//	// 4. 지정범위 의 숫자 중 완전수 판단 후 출력 하는 메서드
//	public static void getPergectNumber(int num1, int num2) {
//		System.out.print(num1+"~"+num2+"까지의 완전수 : ");
//		int result;
//		for(int i=num1;i<=num2;i++) {
//			result = getSumOfDivisors(i)-i;
//			if(i==result) {
//				System.out.print(i+" ");
//			}	
//		}	
//	}
	
}
