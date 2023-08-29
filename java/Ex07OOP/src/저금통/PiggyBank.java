package 저금통;

public class PiggyBank {
	
	//설계도 - 필드(데이터, 변수, 속성), 메서드(기능, 객체의 행위, 행동)
	
	// 필드 : 선언만 되어 있어야 한다.
	private int money;
	// private (사적인)
	// 클래스 내부에 있는 메서도를 통해서만 접근 가능하도록 
	// 도와주는 접근 제한자
	// private 으로 감싸진 필드에 접근하고 싶으면
	// 필드가 있는 클래스 내부에 메서드가 설계되어 있어야 한다.
	// 수정(set), 가져와서 확인(get) 
	
	
	// 1.2 번 합치기
	public PiggyBank(int money) {
		this.money = money;
	}
	
	// getter/setter
	// : private으로 감싸진 필드에 접근할 수 있도록 
	// 클래스 내부에 만들어진 메서드
	//money 를 수정할 수 있는 메서드
	public void setMoney(int money) {
		this.money = money;
	}
	// money의 값을 확인 할 수 있는 메서드
	// 필드에 있는 money 값을 main에 돌려준다.
	public int getMoney() {
		return money;
	}
	
	//메서드 
	
	// 입금
	public void deposit(int money) {
		// 매개변수 int money -> main에서 받아온 입금할 금액
		// money = 현재 필드 money + main에서 받아온 입금 금액
		this.money = this.money + money;	
		// this.money += meney; 동일
	}
	// 출금
	public void withdraw(int money) {
		this.money = this.money - money;
	}
	// 잔액확인 
	public void showMoney() {
		System.out.println("현재 잔액 : " + money);
	}
	
}
