package ex01변수;

public class EX05형변환 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//형변환 TypeConversion
		byte num1 = 100;
		//자동 형변환
		int num2 = 300;
		//강제 형변환(데이터 유실 가능성이 있다.)
		byte num3 = (byte)num2;
		
		System.out.println(num2);
		System.out.println(num3);
		//실수형태의 형변환
		double num4 = 100.511;
		int num5 = (int)num4;
		
		System.out.println(num5);
		//같은 크기라고 실수를 더 크다고 생각한다!
		
		
		int num8 = 100;
		float num9 = num8;
		
		System.out.println(num9);
		
		
	}

}
