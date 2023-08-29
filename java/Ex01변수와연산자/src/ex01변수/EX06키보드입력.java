package ex01변수;

import java.util.Scanner;

public class EX06키보드입력 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		//스캐너를 통해 정수를 입력받는 방법
		System.out.print("숫자를 입력해주세요 : ");
		int temp = sc.nextInt();
		System.out.println("입력한 숫자는 " + temp + "입니다");
		
		sc.close();
		
		
	}

}
