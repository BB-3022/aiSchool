package 학생정보관리프로그램;

public class Main_Student {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Student_class를 사용하는 곳
		//생성자를 사용해서 Student 초기화
		// 기본생성자가 사용이 불가능 하므로, 생성과 동시에 초기화 시켜준다.
		Student_class stu1 = new Student_class("나예호","20200801",20,10,80,95);
		Student_class stu2 = new Student_class("김운비","20111003",19,90,65,30);
	
		stu1.show();
		stu2.show();
		
	}

}
