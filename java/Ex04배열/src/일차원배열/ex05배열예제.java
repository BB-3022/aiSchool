package 일차원배열;

import java.util.Scanner;

public class ex05배열예제 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		int[] score = new int[5];
		
		for(int i=0; i<score.length;i++) {
			System.out.print((i+1)+"번째 입력 >> ");
			score[i] = sc.nextInt();
		}
		int max = score[0];
		int min = score[0];
		int sum_num = 0;
		double avg_num = 0;
		System.out.print("입력된 점수 : ");
		for(int i=0; i<score.length;i++) {
			System.out.print( + score[i]+" ");
			sum_num+=score[i];
			avg_num = (double)sum_num/score.length;
			if(score[i]>max) {
				max = score[i];
			}else if(score[i]<min) {
				min = score[i];
			}
		}
		System.out.println();
		System.out.println("최고점수 : "+max);
		System.out.println("최저 점수 : "+min);
		System.out.println("종합 : "+sum_num);
		System.out.println("평균 : "+avg_num);
		
		sc.close();
		
		
	}

}
