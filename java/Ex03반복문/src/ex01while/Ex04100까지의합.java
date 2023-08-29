package ex01while;

public class Ex04100까지의합 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int sum = 0; // 1부터 100까지의 합을 저장할 변수
		int cnt = 1; // 1부터 100까지 증가할 변수
		
//		while(true){
//			sum += cnt;// sum=sum+cnt
//			if(cnt == 100) {
//				break ;
//			}
//			cnt++;	
//		}
		
		while(cnt<=100) {
			sum = sum + cnt;
			cnt++;
		}
		System.out.println("1부터 100까지의 합은 : " + sum);
	}

}
