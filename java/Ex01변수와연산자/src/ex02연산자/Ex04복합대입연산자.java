package ex02연산자;

public class Ex04복합대입연산자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 대입연산자 -> '=' 우측의 값을 왼쪽에 넣겠다.
		
		int a = 10;
		
		//복합대입 연산자
		//a += 10; // a = a + 10 과 동일
		//a -= 5; // a = a - 5 와 동일
		//a /= 2; // a = a / 2 와 동일
		//a *= 3; // a = a * 3 과 동일
		//a %= 4; // a = a % 4 와 동일
		
		//복합대입연산자 우선순위
		int num = 29;
		num -= 2 + 3 * 4 ; // num -= (2 + 3 * 4) 복합대입연산자 사용시, 뒤 식 먼저 계산
		System.out.println(num);
		

		
	}

}
