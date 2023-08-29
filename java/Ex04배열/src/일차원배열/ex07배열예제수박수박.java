package 일차원배열;

import java.util.Scanner;

public class ex07배열예제수박수박 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String[] wm = {"수","박"};
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자를 입력해주세요>>");
		int count = sc.nextInt();
		
		for(int i=1;i<=count;i++) {
			if(i%2==1) {
				System.out.print(wm[0]);
			}else if(i%2==0){
				System.out.print(wm[1]);
			}
		}
	}
}
