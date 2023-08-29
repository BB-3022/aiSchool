package 학생정보관리프로그램;

public class Student_class {

	// 학생정보관리 프로그램에 대한 설계도
	
	// 1.필드 : 캡슐화 하기!
	// 2.생성자
	// 3. 메서드 show()
	private String name;
	private String number;
	private int age;
	private int scoreJava;
	private int scoreWeb;
	private int scorePython;
	
	//클래스 내부에 메서드를 통해서만 접근이 가능
	//getter or setter 를 만들어야 한다.-> 데이터의 무결성(정확성과 일관성)을 위해 사용한다.
	// setter ---> 지양, 별로 사용하지 않는다....
	
	//생성자
	//main으로 부터 받아온 매개변수를 현재 필드에 대입
	public Student_class(String name, String number, int age, 
		int scoreJava, int scoreWeb, int scorePython) {
		this.name = name;
		this.number = number;
		this.age = age;
		this.scoreJava = scoreJava;
		this.scoreWeb = scoreWeb;
		this.scorePython = scorePython;
	}
	
	//메서드 show()
	//
	public void show() {
		System.out.println(name+"님 안녕하세요.");
		System.out.println("[ "+ number+", " + age +"살 ]");
		System.out.println(name+"님의 Java 점수는"+scoreJava+"점 입니다.");
		System.out.println(name+"님의 Web 점수는"+scoreWeb+"점 입니다.");
		System.out.println(name+"님의 Python 점수는"+scorePython+"점 입니다.");
		System.out.println("===============================");
	}
	
	// getter / setter
	// getter : 데이터를 가져와서 확인 할 수 있도록 도와주는 메서드
	public String getName() {
		return name;
	}
	// setter : 데이터를 수정 할 수 있도록 도와주는 메서드
	public void setName(String name) {
		this.name = name;
	}
	//  단축키 : alt + Shift + s
	
	
	
	
	
	
}
