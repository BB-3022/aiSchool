package array;

public class 예제3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	int[][] arr = new int[5][5];
	
	int cnt = 21;
	boolean right = true;
	
	for(int i=0;i<arr.length;i++) {
		if(right) {//오른쪽 방향으로 넣기
			for(int j=0; j<arr[i].length;j++) {
				arr[i][j]=cnt++;
				right=false;
			}
		}else {//왼쪽 방향으로 넣기
			for(int j=arr[i].length-1;j>=0;j--) {
				arr[i][j]=cnt++;
				right = true;
			}
		}
	}
	
	for(int i=0;i<arr.length;i++) {
		for(int j=0;j<arr[i].length;j++) {
			System.out.print(arr[i][j]+" ");
		}
		System.out.println();
	}
	
		
	}

}
