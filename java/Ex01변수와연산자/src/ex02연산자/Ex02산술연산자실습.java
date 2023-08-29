package ex02연산자;

import java.util.Scanner;

public class Ex02산술연산자실습 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 3자리 숫자를 입력받아 십의자리 이하의 값을 다 버리기
		
		Scanner sc = new Scanner(System.in);
		System.out.print("정수입력 : ");
		int num = sc.nextInt();
		int result1 = num/100*100;
		int result2 = (char)num/100;
		int result3 = num - num % 100;
		String result4 = num / 100 + "00";
		System.out.println("결과확인 : " + result1);
		System.out.println("결과확인 : " + result2 + 0 + 0);
		System.out.println("결과확인 : " + result3);
		System.out.print("결과확인 : " + result4);
		
		sc.close();
		
		
	}

}
