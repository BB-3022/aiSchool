package ex03for;

import java.util.Scanner;

public class Ex09별계단1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("층수 : ");
		int num = sc.nextInt();
		
		for(int i=1;i<=num;i++) {
			for(int j = 0; j<i;j++) {
				System.out.print(("*"));
			}
			System.out.println();
		}
	}
}
