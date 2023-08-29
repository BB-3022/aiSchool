package 일차원배열;

import java.util.Scanner;

public class ex08배열예제별 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] star = new int[5];
		Scanner sc = new Scanner(System.in);
		
		for(int i=0;i<star.length;i++) {
			System.out.print((i+1)+"번째 별의 개수를 입력>>");
			star[i] = sc.nextInt();
		}
		for(int i=0;i<star.length;i++) {
			System.out.print(star[i] + " : ");
			for(int j=0;j<star[i];j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}

}
