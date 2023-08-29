package ex02연산자;

public class EX01산술연산자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num1 = 7;
		int num2 = 3;
		
		int result1 = num1 +num2 ;
		System.out.println(result1);
		
		int result2 = num1 - num2 ;
		System.out.println(result2);
		
		int result3 = num1 * num2;
		System.out.println(result3);
		
		int result4 = num1 / num2; // '/' 몫을 가져 오는 연산자
		System.out.println(result4); // 실수/정수 -> 실수
		double result5 = 7.0 / 3.0; 
		System.out.println(result4);
		
		int result6 = num1 % num2; // '%' 나머지를 가져오는 연산자
		System.out.println(result6);
		
		//문자열과 숫자를 더한다면 어떻게 될까?
		System.out.println("바나나" + 8 + 2); //  '바나나82' 사칙연산 우선순위
		System.out.println("바나나" + (8 + 2)); // '바나나10' 괄호먼저 계산
		System.out.println("바나나" + 8 * 2); // '바나나16'
		
		System.out.println("81" + 3 * 2 + 2 + 4); // '81624'

		
		
		
	}

}
