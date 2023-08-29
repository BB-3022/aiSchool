package ex01while;

public class Ex01while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 반복문 - 조건에 성립할때까지 반복하는 문법
		// while, do-while, for
		// while(조건식){
		//} 조건식이 true 일 경우, {} 실행
		//while을 사용하여 1~5 출력, 조건식이 false 일 경우 끝난다.
		// while 을 강제종료 'break'
		
		int num = 1 ;
//		
//		while(num <= 5) {
//			System.out.println(num);
//			num += 1 ; // num++ 동일
//			
//		}
		//System.out.println(num);
		
		while(true) {
			System.out.println(num);
			
			if(num == 5) {
				break;
			}
			num++;
		}
		
		
	}

}
