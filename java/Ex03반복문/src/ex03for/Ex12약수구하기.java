package ex03for;

import java.util.Scanner;

public class Ex12약수구하기 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		
		int num = sc.nextInt();
		
		System.out.print(num + "의 약수 : 1 ");
		for(int i=2; i<= num/2; i++) {
			if(num % i == 0) {
				System.out.print(i+" ");
			}
		}
		System.out.print(num);
		sc.close();
		
	}

}
