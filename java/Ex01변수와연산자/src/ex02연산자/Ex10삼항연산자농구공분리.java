package ex02연산자;

import java.util.Scanner;

public class Ex10삼항연산자농구공분리 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 'sc' + ctrl + space
		Scanner sc = new Scanner(System.in);
		System.out.print("농구공의 개수를 입력하세요 : ");
		int num = sc.nextInt();
		int result = num % 5 == 0 ? 
				num / 5 : 
				num / 5 + 1 ;
		
		System.out.println("필요한 상자의 수 : " + result);
		sc.close();
	}

}
