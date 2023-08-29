package 일차원배열;

public class ex02배열 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[]arr = {3,10,4,8,17,22,31};
//		for(int i=0;i<arr.length;i++) {
//			System.out.println(arr[i]);
//		}
//		for(int i=0;i<arr.length;i++) {
//			if(arr[i]%2==0){
//				System.out.println(arr[i]);
//			}
//		}
		int max = arr[0];
		// max = 0 : 배열에 들어있는 모든 값들이 음수라면
		// 정확한 결과값을 받아볼 수가 없다. 그러므로 배열안에 들어있는 값들로 비교!
		for(int i=1;i<arr.length;i++) {
			if (arr[i]>max) {
				max = arr[i];
			}
		}
		System.out.println("최대값은 = " + max);
		
	}

}
