package ex01while;

import java.util.Scanner;

public class Ex03다이어트풀이 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		System.out.print("현재몸무게 : ");
		int now = sc.nextInt();
		
		System.out.print("목표몸무게 : ");
		int goal = sc.nextInt();
		
		int cnt = 1;
		
		while(now > goal) {
			int minus = 0;
			System.out.print(cnt + "주차 감량 몸무게 : ");
			minus = sc.nextInt();
			
			now -= minus; // now = now - minus
			cnt++;
		}
		System.out.println(now + "달성 축하합니다!");
		
		
		
	}

}
