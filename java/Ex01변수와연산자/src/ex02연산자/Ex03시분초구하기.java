package ex02연산자;

import java.util.Scanner;

public class Ex03시분초구하기 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		System.out.print("초 입력 : ");
		int totalSecond = sc.nextInt();
		
		int num1 = totalSecond / 3600;
		int num2 = totalSecond % 3600 / 60 ;
		int num3 = totalSecond % 60 ;
		
		System.out.print("현재시간은 : " + num1 + "시 " + num2 + "분 " + num3 + "초 ");
		
	}

}
