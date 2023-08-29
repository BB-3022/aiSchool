package person;

public class person {

	// 사람에 대한 설계도 : Class
	
	// 1. Field(필드)
	// : 객체가 가질 수 있는 공통적인 속성, 데이터, 변수
	String name;
	String gender; //gender 가 들어올수 있는 공간을 생성
	int age;
	int height;
	// 거주지도 저장하게 만들고 싶다.
	String local;
	
	// 2. Method(메서드)
	// : 객체가 할 수 있는 공통적인 행위, 행동, 기능
	// 숨쉬기
	public void breath() {
		System.out.println("후후");
	}
	// 잠자기
	public void sleep() {
		System.out.println("쿨쿨");
	}
	// 밥먹기
	public void eat() {
		System.out.println("냠냠");
	}
	public person(){}
	public person(String name, int age, String gender, int height, String local) {
		// main에서 보내온 전달인자를 매개변수로 받아서
		//{현재 클래스에 있는 필드를 받아온 값으로 초기화}
		//this : 현재 클래스를 지칭하는 키워드
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.height = height;
		this.local=local;
	}
	//오버로딩 : 중복정의
	
}
