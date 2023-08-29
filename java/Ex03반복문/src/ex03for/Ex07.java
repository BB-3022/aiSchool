package ex03for;

import java.util.Scanner;

public class Ex07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		System.out.print("단 입력 : ");
		int num1 = sc.nextInt();
		
		System.out.print("범위 입력 : ");
		int num2 = sc.nextInt();
		
		for(int i=1;i<=num2;i++) {
			int num3 = num1 * i;
			System.out.println(num1 + "*" + i + " = " + num3);
		}
	}

}
