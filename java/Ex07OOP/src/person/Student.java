package person;

public class Student {
	// 클래스 멤버변수(필드,속성,데이터,변수) name
	String name;
	
	// 생성자의 매개변수 name과 클래스의 멤버변수 name을 구분하기 위하여,
	// 클래스의 멤버변수 name을 this를 사용하여 this.name으로 변경한다. 
	public Student(String name) {
		this.name = name;
		//this.name은 멤버변수, name은 매개변수를 가리킨다.
		//생성자에서 매개변수는 멤버변수를 초기화 하기 위하여 사용한다.
	}
}
