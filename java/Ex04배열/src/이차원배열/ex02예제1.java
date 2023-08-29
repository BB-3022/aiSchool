package 이차원배열;

public class ex02예제1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[][]arr = new int[5][5];
		int num = 21;
		
		for(int i=0;i<5;i++) {
			for(int j=0;j<5;j++) {
				arr[i][j] = num;
				System.out.print(arr[i][j]+"\t");
				num++;	
			}
			System.out.println();
		}
	}

}
