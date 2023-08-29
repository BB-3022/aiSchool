package 메서드;

public class ex08오버로딩 {

	// 메서드 특징
	// 오버로딩(Overloading) : 중복정의
	// 같은 클래스 내에서 같은 이름의 메서드를 정의 할 수 있다.
	// 단, 매개변수의 형태가 달라야 한다.(형태: 데이터 타입, 갯수)
			
	// 오버라이딩 : 재정의
	
	// 매개변수의 갯수가 다르기 때문에 같은 이름으로 메서드를 정의 할 수 있다.
	
	
	public static void sum(int num1, int num2) {
		System.out.println(num1 + num2);
	}
	public static void sum(int num1, int num2, int num3) {
		System.out.println(num1 + num2 + num3);
	}
	
	public static void main(String[] args) {
	
		// 숫자 두개를 더해주는 기능 sum2
		sum(2,3);
		// 숫자 세개를 더해주는 기능 sum3
		sum(2,3,4);
		
		
		
	}
	
}
