package 일차원배열;

import java.util.Scanner;

public class ex09배열예제XO {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int[] answer = {1,4,3,2,1};
		int[] input = new int[5];
		
		System.out.println("==채점하기==");
		System.out.println("답을 입력하세요");
		
		for(int i=0;i<input.length;i++) {
			System.out.print((i+1)+"번답>>");
			input[i] = sc.nextInt();
		}
		System.out.println("정답확인");
		int sum=0;
		for(int i=0;i<answer.length;i++) {
			if(answer[i]==input[i]) {
				System.out.print("O ");
				sum+=20;
			}else {
				System.out.print("X ");
			}
		}
		System.out.print("총점 : "+sum);
	}

}
