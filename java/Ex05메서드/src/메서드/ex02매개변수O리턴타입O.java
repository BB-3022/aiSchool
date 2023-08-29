package 메서드;

public class ex02매개변수O리턴타입O {

	//매개변수 있고, 리턴타입 있다.
	// 전달인자 있고, 리턴타입 자리에 데이터 타입이 명시되어 있다.
	// 2개의 숫자를 빼기해준 결과 값을 받을 수 있는 minus 라는 메서드
	
	
	
	
	public static void main(String[] args) {
		
	minus(8,3);
	System.out.println(minus(8,3));
	}
	
	public static int minus(int num1, int num2) {
		return num1-num2;
	}
}
