package ex02do_while;

import java.util.Scanner;

public class Ex02합계와평균 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double avg = 0;
		int sum = 0;
		int cnt = 0;
		int num ;
		do {
			Scanner sc = new Scanner(System.in);
			System.out.println("숫자를 입력하세요");
			num = sc.nextInt();
			
			if(num > 100) {
				break;
			}
			sum += num;	
			cnt++;	
			avg = sum*1.0/cnt; // (double)sum/cnt
			
		}while(true);
		
		double result_avg = Math.round(avg*100)/100.0;

//		double temp1 = (double)sum/cnt;
//		int temp2 = (int)(temp1*100);
//		double result = temp2 *100.0;
		
		System.out.println("합계 : " + sum);
		System.out.println("평균 : " + result_avg);
//		System.out.println("평균 : " + result);

	}
}
