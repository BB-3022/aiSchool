package 책관리프로그램_복습;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		// BookData 자료형을 가진 list
		// BookData 자료형을 가진 변수들만 저장 할 수 있다.
		// BookData 자료형이란 class에 만들어 놓은 title ,price, writer
		// BookData 자료형을 가진 []배열을 만들어 준다. 배열의 이름은 list, 크기는 5
		BookData[] list = new BookData[5];
		
		// b1은 BookData 자료형을 가진 상태
		// b1 안에 title ,price, writer 가 들어 있는 상태
		// 북 데이터 자료형을 관리하는 배열에 들어갈 데이터 만들기
		BookData b1 = new BookData("Java",21000,"홍길동");
		BookData b2 = new BookData("C++",29000,"박문수");
		BookData b3 = new BookData("Databace",31000,"김장독");
		BookData b4 = new BookData("Android",18000,"이순신");
		BookData b5 = new BookData("Web",26000,"김철수");
		
		// b1~b5 배열에 저장하기
		list[0] = b1;
		list[1] = b2;
		list[2] = b3;
		list[3] = b4;
		list[4] = b5;
		
		
		Scanner sc = new Scanner(System.in);
		System.out.print("금액을 입력하세요 : ");
		int price = sc.nextInt();
		System.out.println("====구매 가능한 책 목록====");
		for(int i=0;i<list.length;i++) {
			
			if(price>=list[i].getPrice()) {
				System.out.print("["+list[i].getTitle()+", ");
				System.out.print(list[i].getWriter()+", ");
				System.out.println(list[i].getPrice()+"원]");
			}
		}
		sc.close();
		
	}

}
