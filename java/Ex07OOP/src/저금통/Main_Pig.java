package 저금통;

public class Main_Pig {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. 저금통 설계도를 사용해서 저금통을 1개 만든다.
		//PiggyBank pig1 = new PiggyBank(); // 기본생성자
		// 2. 저금통에 초기금액을 1500원으로 설정
		//pig1.money = 1500;
		
		// 1. 2. 번을 합쳐보자
		// 새로운 생성자로 1500원의 값을 받아 오도록 만들었다.
		// 기본생성자는 사용하지 않으므로, class에 기본생성자 필요 없음
		PiggyBank pig1 = new PiggyBank(1500);
		pig1.setMoney(2000);
		System.out.println(pig1.getMoney());
		// 3. 저금통에 700원을 입금
		// 필드 money에 다가 700원을 입금
		pig1.deposit(700);
		// 4. 잔액을 확인
		pig1.showMoney();
		// 5. 500원을 저금통에서 출금
		pig1.withdraw(500);
		// 6. 잔액을 확인
		pig1.showMoney();
	}

}
