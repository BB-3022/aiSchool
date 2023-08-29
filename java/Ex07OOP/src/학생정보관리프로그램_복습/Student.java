package 학생정보관리프로그램_복습;

public class Student {
	
	// Student class의 필드
	private String name;  
	private String number;
	private int age;
	private int scoreJava;
	private int scoreWeb;
	private int scorePython;
	
	// 생성자
	public Student(String name, String number, int age, 
			int scoreJava, int scoreWeb, int scorePython) {
		this.name = name;
		this.number = number;
		this.age = age;
		this.scoreJava = scoreJava;
		this.scoreWeb = scoreWeb;
		this.scorePython = scorePython;
	}
	
	// Show() 메서드 구현
	public void show() {
		System.out.println(name + "님 안녕하세요.");
		System.out.println("[ "+number+", "+age+"살 ]");
		System.out.println(name+"님의 Java점수는 " +scoreJava+"점 입니다.");
		System.out.println(name+"님의 Web점수는 " +scoreWeb+"점 입니다.");
		System.out.println(name+"님의 Python점수는 " +scorePython+"점 입니다.");
	}

	
	
	
	
	
}
