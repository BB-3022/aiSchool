package ex02do_while;

import java.util.Random;
import java.util.Scanner;

public class Ex04PlusGame {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		// 난수를 뽑는 방법
		System.out.println("===============GAME START=================");
		Random rd = new Random();
		
		// 틀렸을 때는 기존 문제를, 성공했을 때는 새로운 문제를 출력
		
		int num1 = rd.nextInt(10)+1; // 1~10 까지 숫자 랜덤 추출
		int num2 = rd.nextInt(10)+1;
		int cnt = 3;
		int suc = 0;
		
		while(cnt>0) {
			System.out.print(num1 + "+" + num2 + "=");
			int inputNum = sc.nextInt();
			 
			//정답확인
			int answer = num1 + num2;
			
			if(inputNum==answer) {
				System.out.println("Success!!");
				num1 = rd.nextInt(10)+1;
				num2 = rd.nextInt(10)+1;
				suc++;
			} else {
				System.out.println("Fail..");
				cnt--;
				System.out.println("남은목숨 : " + cnt + "개");
			
			}
		}
		System.out.println("정답횟수 : " + suc + "개");
		System.out.println("====게임이 종료 되었습니다.====");
		
		sc.close();
		
	}
}
