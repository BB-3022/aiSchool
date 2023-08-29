package 월급계산프로그램_추상화;

public abstract class Employee {
		
	protected String empno;
	protected String name;
	protected int pay;
	
	public Employee(String empno, String name, int pay) {
		this.empno = empno;
		this.name = name;
		this.pay = pay;
	}
	
	// return 0;
	// 부모 클래스에 있는 getMoneyPay는 자식클래스에서 매번 오버라이딩 되고 있다.
	// getMoneyPay릐 틀만 만들고싶다.

//	public int getMoneyPay() {
//		return 0;
//	}
//	
	//public int getMoneyPay();
	//오류메세지 -> This method requires a body instead of a semicolon 
	// 바디가 필요하다.
	// abstract 키워드를 통해서 일반메서드를 추상메서드를 만들 수 있다.
	// 추상메서드 : 선언만 되어 있고, 바디가 없는({}중괄호) 메서드 이다!
	

	
	public abstract int getMoneyPay();
	
	
	// 오류메세지 : The abstract method getMoneyPay in type Employee can only be defined by an abstract class
	// 클래스 오류메세지 : The type Employee must be an abstract class to define abstract methods
	
	// 1. 추상 메서드를  포함하고 있는 클래스는 반드시 추상 클래스가 되어야 한다!
	// 2. 추상 클래스도 일반 메서드를 포함 할 수 있다.
	// 3. 추상 클래스에는 추상 메서드가 하나도 없을 수도 있다.
	// 추상 클래스 변경 방법 : public abstract calss Employee
	// 4. 추상클래스는 객체 생성(실체화)가 불가능 하다!
	// 개념적인 존재이기 때문에 공통적인 특징만을 모아놓은 추상적인 개념
	
	public String print() {
		return empno + " : " + name + " : " + pay;
	}
	
	
}
