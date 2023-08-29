package ex01변수;

public class Ex03변수실습 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// int num1 = 10;
		int num1; // 선언
		num1 = 10; // 할당
		num1 = 100;
		System.out.println(num1);

		int myAge = 32;
		int yourAge = 24;

		int age = myAge;
		myAge = yourAge;
		yourAge = age;

		System.out.println("나의 나이 : " + myAge);
		System.out.println("짝꿍의 나이 : " + yourAge);

	}

}
