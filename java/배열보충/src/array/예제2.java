package array;


import java.util.Scanner;

public class 예제2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] numbers = new int[10];
		Scanner sc = new Scanner(System.in);
		
		for(int i=0;i<numbers.length;i++) {
			System.out.print((i+1)+"번 째 정수 입력 >> ");
			numbers[i] = sc.nextInt();
		}
		System.out.println("3의 배수 : ");
		for(int i=0;i<numbers.length;i++) {
			if(numbers[i]%3==0) {
				System.out.print(numbers[i]+" ");
			}
		}
		
	}

}
