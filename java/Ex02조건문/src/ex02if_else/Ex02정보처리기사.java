package ex02if_else;

import java.util.Scanner;

public class Ex02정보처리기사 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.print("DB : ");
		int score1 = sc.nextInt();
		
		System.out.print("전자계산기 구조 : ");
		int score2 = sc.nextInt();
		
		System.out.print("OS : ");
		int score3 = sc.nextInt();
		
		System.out.print("데이터통신 : ");
		int score4 = sc.nextInt();
		
		System.out.print("소프트웨어공학 : ");
		int score5 = sc.nextInt();
		
		if(score1>=8 && score2>=8 && score3>=8 && score4>=8 && score5>=8) {
			if(score1+score2+score3+score4+score5 >= 60){
				System.out.println("합격입니다!");
			}
		else {
			System.out.println("불합격입니다!");
			}
		}
		sc.close();
			
	}

}
