package 추상메서드;

public abstract class 조류 {
	
	public abstract void cry();
	
	public abstract void move();
	
	public void egg() {
		System.out.println("알을 낳는다!");
	}
}
	//추상 메서드는 추상 클래스만 포함 가능
	// public abstract calss 클래스이름

	// 메서드 : 울기, 움직이기, 알낳기
	// 상속받는 새의 종류에 따라 달라지는 메서드 : 울기, 움직이기
	// 상속받아도 값이 유지되는 메서드 : 알낳기
	// 메서드를 설계만 할 것이다 
	// 메서드를 설계만(선언만) ---> 추상메서드