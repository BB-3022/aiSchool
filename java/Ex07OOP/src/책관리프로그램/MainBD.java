package 책관리프로그램;

import java.util.Scanner;

public class MainBD {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//객체 배열
		// 자료형[] 레퍼런스변수명 = new 자료형[배열의크기];
		
		// BookData 자료형을 가진 변수들만 저장 할 수 있다.
		// BookData 자료형이란 class에 만들어 놓은 title ,price, writer
		// BookData 자료형을 가진 []배열을 만들어 준다. 배열의 이름은 bookList, 크기는 5
		BookData[] bookList = new BookData[5];
		// b1은 BookData 자료형을 가진 상태
		// b1 안에 title ,price, writer 가 들어 있는 상태
		// 북 데이터 자료형을 관리하는 배열에 들어갈 데이터 만들기
		BookData b1 = new BookData("java",21000,"홍길동");
		BookData b2 = new BookData("C++",29000,"박문수");
		BookData b3 = new BookData("Database",31000,"김장독");
		BookData b4 = new BookData("Android",18000,"이순신");
		BookData b5 = new BookData("Web",26000,"김철수");
		//b1~b5 배열에 저장하기
		bookList[0]=b1;
		bookList[1]=b2;
		bookList[2]=b3;
		bookList[3]=b4;
		bookList[4]=b5;
	
		// 배열 안에 들어있는 값들에 접근하는 방법을 사용해서 사용자로부터 입력받은 
		// 금액으로 구매할 수 있는 책의 정보를 출력!
		Scanner sc = new Scanner(System.in);
		System.out.print("금액을 입력하세요 : ");
		int money = sc.nextInt();
		System.out.println("구매 가능한 책 목록");
		
		for(int i=0; i<bookList.length; i++) {
			if(money >= bookList[i].getPrice()) {
				System.out.println(
						"["+bookList[i].getTitle()+", "+bookList[i].getWriter()
						+", " + bookList[i].getPrice()+"원]");
			}
		}
		
		
		
//		// 객체 배열에 값을 대입
//		bookList[0] = b1;
//		//b1을 출력하면 주소값이 나온다.
//		// 책관리프로그램.BookData@49e4cb85 
//		// -->b1에 대한 title, price, writer가 저장되어 있는 주소 값.
//		System.out.println(bookList[0]);
//		//bookList[0] == b1
//		//b1.getTilet()
//		//bookList[0].getTilte()
//		System.out.println(bookList[0].getTitle());
		
	}

}
