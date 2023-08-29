package 일차원배열;

import java.util.Random;

public class ex06배열예제2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[]number = new int [5];
		Random rand = new Random();
		int i=0;
		
		while(true) {
			number[i] = rand.nextInt(10)+1;
			i++;
			if(number.length==5) {
				System.out.print(number[i]+" ");
				break;
		}
		}
	}

}
