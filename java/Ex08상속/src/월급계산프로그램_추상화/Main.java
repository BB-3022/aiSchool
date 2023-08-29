package 월급계산프로그램_추상화;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//1. Regular 객체 생성하기
		RegularEmployee regular 
		= new RegularEmployee("SMHD001","김미희",4000,400);
		
		System.out.println(regular.print());
		System.out.println(regular.getMoneyPay()+"만원");
		
		//2. TempEmployee 객체 생성하기
		TempEmployee temp
		= new TempEmployee("SMHRD002","박문수",3000);
		
		System.out.println(temp.print());
		System.out.println(temp.getMoneyPay()+"만원");
		
		//3. PartTime
		PartTimeEmployee part
		= new PartTimeEmployee("SMHRD001","홍길동",10,10);
		System.out.println(part.print());
		System.out.println(part.getMoneyPay()+"만원");
		
		// Employee class 추상화 이후, 객체 생성
		//Employee emp = new Employee("SMHRD004","이름",500);
		// 오류 msg -> Cannot instantiate the type Employee
		// 추상화 된 클래스는 객체 생성이 불가능 하다. -> 실체화가 불가능 하다.
	}

}
