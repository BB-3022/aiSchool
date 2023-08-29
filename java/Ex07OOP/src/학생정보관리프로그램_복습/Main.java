package 학생정보관리프로그램_복습;

public class Main {

	public static void main(String[] args) {
	
		
		// stu1, stu2를 주어진 정보에 따라 값을 초기화 한다.
		Student stu1 = new Student("나예호","20200801",20,10,80,95);
		Student stu2 = new Student("김운비","20111003",19,90,65,30);
		
		// Student 클래스에서 show() 메서드를 호출하여 학생의 정보를 출력한다.
		stu1.show();
		System.out.println("==========================");
		stu2.show();
		
		
		
		
		
	}

}
