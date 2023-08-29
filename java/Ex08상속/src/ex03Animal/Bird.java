package ex03Animal;

public class Bird extends Animal{
	
	// 조류의 설계도
	// 조류는 동물이 가진 기능들을 다 가질 수 있다.

	public void egg() {
		System.out.println("알을 낳음");
	}

	@Override //어노테이션 : 오버라이딩 하고 있는 상태를 표시
	public void move() {
		//move 메서드를 구현 할 수 있도록 자동완성
		System.out.println("날아다닌다.");
	}
	
	// 오버라이딩
	// move 를 물려받기는 할 건데, 안에 있는 로직을 다르게 구현하고 싶다.
	// : 상속 관계에서 메서드를 재정의(구현을 다르게, 로직을 다르게 하는 것)
	
	
	
	
	
	
	
	
}
