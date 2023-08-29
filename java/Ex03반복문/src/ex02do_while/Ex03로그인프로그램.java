package ex02do_while;

import java.util.Scanner;

public class Ex03로그인프로그램 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String id = "bobae";
		String pw = "12345";
		
		do {
			System.out.println("ID : ");
			String logid = sc.next();
			System.out.print("PW : ");
			String logpw = sc.next();
			
			if(logid.equals(id)&& logpw.equals(pw)) {
				System.out.println("로그인 성공!");
				break;
			} else {
				System.out.println("아이디와 비밀번호가 잘못되었습니다.");
			}
		}while(true);
		
		sc.close();
		
		
	}

}
