package 추상메서드;

public class 펭귄 extends 조류{

	@Override
	public void cry() {
		System.out.println("꿹");
	}

	@Override
	public void move() {
		System.out.println("헤엄친다 어푸어푸");
	}
	
	// abstract class 를 상속받으면
		// 그 안에 있는 abstract 메서드를 반드시 자식 클래스에서 구현해 줘야 한다.
		// 구현하지 않으려면, 자식클래스도 abstract class 가 되어야 한다.
		
		// 구현을 강제화
	// 오류 msg -> The type 펭귄 must implement the inherited abstract method 조류.move()
	// 상속 받고 있는 abstract method를 반드시 구현하라.
	// 추상 클래스를 상속 받고 있는 클래스는 반드시 추상화 해야 한다.
	// 해결방법 참고 
	//1. Add unimplomented methids
	//2. Make type '펭귄' abstract
	
}
