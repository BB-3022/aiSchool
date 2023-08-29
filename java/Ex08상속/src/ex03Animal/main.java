package ex03Animal;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Animal a1 = new Animal();
		a1.name = "동물";
		a1.move();
		
		Bird b1 = new Bird();
		b1.egg();
		b1.move();
		
		Penguin p1 = new Penguin();
		p1.move();
		p1.cry();
		
		// 업캐스팅
		Animal a2 = new Bird();
		//a2는 Animal 자료형 = Bird 자료형을 대입
		// Bird 가 가지고 있는 고유한 기능은 사라졌다.
		
		
		Bird b2 = (Bird)a2;
		// 업캐스팅 되었던 a2를 Bird로 강제 형변환 하여 b2에 저장
		
		
		
	}

}
