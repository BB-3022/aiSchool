package 월급계산프로그램풀이_super생성자;

public class PartTimeEmployee extends Employee{

	  // 1) 필드 : 사번, 이름, 일당, 일수
//	   String empno;
//	   String name;
//	   int pay;
	   int workDay;
	   // 2) 메서드 : 생성자, 월급여, 정보
	   public PartTimeEmployee(String empno, String name, int pay, int workDay) {
	      super(empno, name, pay);
//	      this.empno = empno;
//	      this.name = name;
//	      this.pay = pay;
	      this.workDay = workDay;
	   }
	   
	   @Override
	   public int getMoneyPay() {
	      return pay*workDay;
	   }
	   
//	   public String print() {
//	      return empno+" : "+name+" : "+pay;
//	   }
	   

	
	
	
	
}
