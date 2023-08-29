package ex02연산자;

public class Ex05증감연산자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 증감연산자
		// 변수의 값을 1올리거나 1감소시키는 연산자
		
		int num = 10;
		// 증가, 실제로 변수안에 있는 값도 증가 된다.
		//System.out.println(++num); //11
		// ++가 변수 앞에 붙으면 1증가 -> 변수에 입력
		System.out.println(num++);
		// ++가 변수 뒤에 붙으면 출력 -> 변수 값 1 증가
		
		int num2 = 10;
		System.out.println(num2--); // 10
		System.out.println(num2); // 9

		
	}

}
