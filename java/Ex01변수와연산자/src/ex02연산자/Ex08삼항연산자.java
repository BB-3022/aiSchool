package ex02연산자;

public class Ex08삼항연산자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 삼항연산자 - 간단한 제어처리
		// 형식 --> 함수 = 조건식 ? true 일 때 실행 할 문장 : false 일 때 실행 할 문장
		int num1 = 1000;
		int num2 = 100;
		
		String result = num1 > num2 ?  "num1 이 더 큽니다" : "num2 가 더 큽니다" ;
		
		System.out.println(result);
		
		
	}

}
