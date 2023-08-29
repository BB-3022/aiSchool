package ex02do_while;

public class Ex01do_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//do-while (조건) 최소 한번은 실행 한 후 조건이 true 일 때 반복 -- do{}while();
		// 조건을 먼저보고 반복을 해야하는 경우 -> while
		// 최소 한번 실행해야 하는 경우 -> do-while
		
		int num = 130;
		
		do {
			System.out.println("야호!");
			num--;
		}while(num>100);		
		
		
//		while(num > 100) {
//			System.out.println("야호!");
//			num--;
//		}
		
	}

}
