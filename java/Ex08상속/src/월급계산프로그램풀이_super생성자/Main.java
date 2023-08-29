package 월급계산프로그램풀이_super생성자;

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
		
	}

}
