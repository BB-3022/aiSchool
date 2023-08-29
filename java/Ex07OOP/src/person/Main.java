package person;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Class 가 실행되는 공간
		// 설계도를 사용해서 Object(객체)를 만드는 공간
		
		// class 불러오는 방법 ! 
		// 설계도의이름 변수명 = new 설계도의이름();
		person p1 = new person("이름",20,"여자",200,"광주");
		
//		p1.name = "이름";
//		p1.age = 20;
//		p1.gender = "여자";
//		p1.height = 200;
//		p1.local = "광주";
		
		System.out.println(p1.name);
		System.out.println(p1.age);
		System.out.println(p1.gender);
		System.out.println(p1.height);
		
//		
//		p1.breath();
//		p1.eat();
//		p1.sleep();
//		// . : 참조하다
//		
		person p2 = new person();
		p2.name = "이지후";
		p2.age = 24;
		p2.gender = "여자";
		p2.height = 166;
		p2.local = "광주";
		
		
	
	}

}
