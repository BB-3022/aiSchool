package ex03for;

public class Ex04369게임 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		for(int i = 1; i<=50; i++) {
			if(i%10==3 || i%10==6 || i%10==9) {
				System.out.println("박수");
			} else if(i%10==5) {
				System.out.println("으악");
			} else {
				System.out.println(i);
			}
			
			
			
		}
	}
	
	

}
