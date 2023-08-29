package 메서드;

public class ex06메서드예제1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num1 = 10;
		int num2 = 24;
		int result = largerNumber(num1,num2);
		System.out.println("큰 수 확인 : " + result);
	}
	public static int largerNumber(int num1, int num2) {
		if(num1>num2) {
			return num1;
		}else if(num1<num2) {
			return num2;
		}else{
		return 0;
		//else if 문을 사용했으면 반드시 else 문으로 닫아줘야 한다.
		// 발생할 수 있는 모든 경우에 대해서 return 이 필요하다.
		}
	}

}
