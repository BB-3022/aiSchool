package 메서드;

public class ex03매개변수O리턴타입X {
	// 매개변수 있고, 리턴타입 없다.(void)
			// 전달인자 있고, 리턴타입 자리에 데이터 타입이 명시되어 있지 않다.
			// void 가 오는 경우에는 메서드가 순수하게 기능자체를 가지고 있는 경우
			// ex) syso, compile 
			
			//sumPrint : 숫자 2개를 전달 받아서 더한 결과 값을 출력 하는 기능
	//출력하는 기능을 출력 할 수는 없다.
			// System.out.println(sumPrint(3,5));
	
	public static void sumPrint(int num1, int num2) {
		System.out.println(num1+num2);
	}

	public static void main(String[] args) {
		sumPrint(3,5);
	}
}
