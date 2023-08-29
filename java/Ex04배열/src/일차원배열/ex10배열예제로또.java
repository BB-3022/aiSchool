package 일차원배열;

import java.util.Random;

public class ex10배열예제로또 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] lotto = new int[6];
		Random random = new Random();
	
		for(int i=0;i<lotto.length;i++) {
			lotto[i]=random.nextInt(10)+1;
			for(int j=0;j<i;j++) {
				if(lotto[i]==lotto[j]) {
				i--;
				break;
				}	
			}
		}
		System.out.println("=====로또타임=====");
		System.out.println("이번주 출력번호는!!");
		for(int i=0;i<lotto.length;i++) {
			System.out.print(lotto[i]+" ");
		}
	}

}
