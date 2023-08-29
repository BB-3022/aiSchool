package ex02연산자;

public class Ex07논리연산자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 논리연산자 Not, And, Or
		
		// Not : boolean 결과를 반대로 보여준다.
		boolean isCheck1 = true;
		System.out.println(!isCheck1); // false
		
		// And(&&) : 좌/우 결과 값이 모두 true 일 때만 true
		int num1 = 10;
		int num2 = 5;
		int num3 = 3;
		int num4 = 7;
		
		System.out.println(num1 > num2 && num3 > num4);
		System.out.println(num1 > num2 && num3 < num4);
		
		// Or(||) : 좌/우 결과 중 하나라도 true 이면 true
		// 좌/우 둘다 false 면 false
	
		
	}

}
