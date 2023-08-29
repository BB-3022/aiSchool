package ex03Animal;

public class Penguin extends Bird{

	@Override
	public void move() {
		System.out.println("뒤뚱뒤뚱뒤뚱");
	}

	@Override
	public void cry() {
		System.out.println("꿱꿰꿱");
	}
	
	// 오버라이딩(Overriding) : 재정의
	// 상속 관계에 있는 메서드를 같은 이름으로 구현하되
	// 안에 있는 로직이 다르게 작성되는 것을 보고 오버라이딩

	// 캐스팅(Casting) 형변환
	// 객체의 타입을 바꾸는 형변환
	// 반드시 상속의 개념이 있어야 한다.
	// 1) 묵시적 형변환 : 업캐스팅
	
	// 2) 명시적 형변환 : 다운캐스팅
	// 
	

	
}
