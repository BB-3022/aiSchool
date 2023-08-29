package 월급계산프로그램_추상화;

public class TempEmployee extends Employee{

	   // 1) 필드 : 사번, 이름, 연봉
//	   String empno;
//	   String name;
//	   int pay;
	   // 2) 메서드 : 생성자, 월급여, 정보
	   public TempEmployee(String empno, String name, int pay) {
	      super(empno, name, pay);
//		  this.empno = empno;
//	      this.name = name;
//	      this.pay = pay;
	   }
	   
	   @Override
	   public int getMoneyPay() {
	      return pay/12;
	   }
	   
//	   public String print() {
//	      return empno+" : "+name+" : "+pay;
//	   }
}
