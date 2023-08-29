package ex04switch;

import java.util.Scanner;

public class Ex04최종조건문실습 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		System.out.println("금액을 입력하세요.");
		int money = sc.nextInt();
		
		System.out.println("메뉴를 고르세요.");
		System.out.print("1. 콜라(800원) 2. 생수(500원) 3. 비타민워터(1500원) >> ");
		int menu = sc.nextInt();
		
		int menu_price = 0;
		switch(menu){
		case 1 :
			menu_price = 800 ;
			break ;
		case 2 : 
			menu_price = 500 ;
			break ;
		case 3 : 
			menu_price = 1500 ;
			break ;				
		}
		
		int result = money - menu_price ;
		
		if (result < 0) {
			result = money;
			System.out.println("돈이 부족해요 ㅠㅠ");
			System.out.println(money);
			
			
		} else {
			System.out.println("잔돈 : " + result);
			
			
		}
		int c = result / 1000;
		int o = result % 1000 / 500;
		int b = result % 1000 % 500 / 100;
		System.out.println("천원 : " + c + "개");
		System.out.println("오백원 : " + o + "개");
		System.out.println("백원 : " + b + "개");
		
		sc.close();
		
		
	}

}
