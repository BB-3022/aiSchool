package array;

public class 완전수 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		int sum = 0;
		
		for(int i=1;i<10000;i++) {
			for(int j=1;j<=i;j++) {
				if(i%j==0) {
					sum+=j;
				}
			}
			if(sum-i==i) {
				System.out.println(i);
			}
			sum=0;
		}
		
		
		
		
		
	}

}
