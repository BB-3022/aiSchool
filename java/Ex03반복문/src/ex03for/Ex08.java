package ex03for;

public class Ex08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		for (int a=2;a<=9;a++) {
			System.out.print(a+"단 : ");
			for(int i=1;i<=9;i++) {
				int result = a * i;
				System.out.print(a + "*" + i + "=" + result +"  ");
			}
			System.out.println();
		}
		
		
		
		
	}

}
