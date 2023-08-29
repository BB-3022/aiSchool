package ex01상속;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Animal a = new Animal();
		a.swimming();
		Cat c = new Cat();
		c.swimming(); 
		// Animal class 에서 작성한 필드와 메서드를
		// 상속받은 Cat class 에서 모두 사용이 가능하다.
		// Sub(자식) class 에서 Super(부모) class 의 기능을 가져다 쓴다.
		// 프로그래밍에서의 상속은 물려받다(Inheritance)의 개념이 아니라, 확장(extends)하다.
	}

}
