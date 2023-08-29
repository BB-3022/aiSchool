package ex01while;

import java.util.Scanner;

public class Ex100로그인프로그램 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		System.out.print("아이디를 입력해 주세요 >> ");
		String idlog = sc.nextLine();
		
		System.out.print("비밀번호를 입력해 주세요 >> ");
		String pswlog = sc.nextLine();
		
		String id = "Hello";
		String psw = "1234";
		
		if (id == idlog && psw == pswlog){
			System.out.println("로그인 성공!");
		} else {
			System.out.println("아이디와 비밀번호가 잘못되었습니다.");
		}
	}

}
