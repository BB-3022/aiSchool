package 월급계산프로그램;

public class Employee {
	String empno;
	String name;
	int pay;
	
	public Employee(String empno, String name, int pay) {
		this.empno = empno;
		this.name = name;
		this.pay = pay;
	}

	public int getMoneyPay() {
		return 0;
	}
	
	public String print() {
		return empno + " : " + name + " : " + pay;
	}
	
}
