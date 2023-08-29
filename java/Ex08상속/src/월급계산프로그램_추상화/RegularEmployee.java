package 월급계산프로그램_추상화;

public class RegularEmployee extends Employee{

	// 필드 : 사번, 이름, 연봉, 보너스
//	 String empno;
//	 String name;
//	 int pay;
	 int bonus;
	// 메서드 : 생성자
	 public RegularEmployee(String empno, String name, int pay, int bonus) {
		 // 상속 관계에서 부모클래스가 생성자를 가지고 있으면
		 // 반드시 자식클래스에도 생성자가 있어야 한다.
		super(empno, name, pay);
		// 부모클래스 --> 수퍼클래스
		// super(): 부모클래스의 생성자를 지칭하는 키워드
		// RegularEmployee 의 매개변수로 받아온 값들을 super 클래스의 생성자로 보내서 초기화
//		this.empno = empno;
//		this.name = name;
//		this.pay = pay;
		this.bonus = bonus;
	}
	// 월 급여 리턴
	 @Override
	public int getMoneyPay() {
		return (pay+bonus)/12;
	}
//	// 사원의 정보
//	public String print() {
//		return empno + " : " + name + " : " + pay;
//	}
//	 
	 
	
	
	
}
