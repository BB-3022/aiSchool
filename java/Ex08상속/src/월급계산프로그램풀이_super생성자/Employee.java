package 월급계산프로그램풀이_super생성자;

	//private 클래스 내부에 설계되어 있는 메서드를 통해서만 접근이 가능하도록 도와준다.
	//상속관계에서 사용하기에는 매우 번거롭다.
	
	//protected : 상속 관계에 있는 클래스들 + 같은 패키지에 있는 클래스는
	//접근이 가능하도록 도와주는 접근제한자 이다.


public class Employee {
	
	 // 필드
	 String empno;
	 String name;
	 int pay;
 	
	 // 생성자
	 public Employee(String empno, String name, int pay) {
		 this.empno = empno;
		 this.name = name;
		 this.pay = pay;
	 }
	 
	 // 메서드
	 public int getMoneyPay() {
		 return 0;
	 }
	
	 public String print() {
		 return empno + " : " + name + " : " + pay;
	 }
	
	
}
