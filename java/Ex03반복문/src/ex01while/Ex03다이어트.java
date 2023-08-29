package ex01while;

import java.util.Scanner;

public class Ex03다이어트 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		System.out.print("현재몸무게 : ");
		int first_weight = sc.nextInt();
		
		System.out.print("목표몸무게 : ");
		int final_weight = sc.nextInt();
		
		int week = 1;
		while(first_weight>final_weight) {
			
			while(true) {
				if (first_weight <= final_weight) {
					break ;
				}
				System.out.print(week + "주차 감량 몸무게 : ");
				int weight = sc.nextInt();
				week++;
				first_weight = first_weight - weight;
			}
			System.out.println(first_weight + "kg 달성!! 축하드립니다.");
		}
	}

}
