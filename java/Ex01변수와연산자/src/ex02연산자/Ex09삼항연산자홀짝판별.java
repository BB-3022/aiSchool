package ex02연산자;

import java.util.Scanner;

public class Ex09삼항연산자홀짝판별 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 래퍼런스 자료형 스캐너 변수를 만들어서 사용하겠다. 
		Scanner sc = new Scanner(System.in);
		
		// 출력문
		System.out.print("정수를 입력하세요 : ");
		
		// 정수를 입력받아 변수 num 에 저장한다
		int num = sc.nextInt();
		
		//삼항연산자
		String result = num % 2 == 1 ? 
				num + "는 (은) 홀수입니다." : 
				num + "는 (은) 짝수입니다.";
		
		System.out.println(result);

		sc.close();
		
	}

}
