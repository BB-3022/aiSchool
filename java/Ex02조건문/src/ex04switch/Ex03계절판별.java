package ex04switch;

import java.util.Scanner;

public class Ex03계절판별 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("숫자입력: ");
		int num = sc.nextInt();
		
		switch(num){
			
		case 12 :
		case 1 :
		case 2 :
				System.out.println(num+"월은 겨울입니다");
			break ;
		
		case 3, 4, 5 :
				System.out.println(num+"월은 봄 입니다");
			break ;
			
		case 6, 7, 8 :
				System.out.println(num+"월은 여름 입니다");
			break ;
			
		default :
				System.out.println(num+"월은 봄 입니다");
					
			
		}
		
		sc.close();
	}

}
