package array;

import java.util.Random;

public class 예제1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Random rd = new Random();
		
		int[]arr = {13,5,7,1,3,32,55,65,8,99};
		int j;
		int result = 0;
		
		for(int i=0;i<arr.length;i++) {
			arr[i]=rd.nextInt(20)+1;
						
			for(j=0;j<i;j++);
				if(arr[i]==arr[j]) {
					i--;
					break;
				}
		}
		//3. 출력하기
		//확장 for문을 이용해보자(for-each)
		for(int temp : arr) {
			System.out.print(temp+" ");
		}
		
		
		for(int i=0;i<arr.length;i++) {
			result+=arr[i];
		}
		int sum1 = arr[4] + arr[9];
		System.out.println(sum1);
		System.out.println("총합 " + result);
		System.out.println("평균 " + result/arr.length);
		
		int count = 0;
		
		for(int i=0;i<arr.length;i++) {
			if(arr[i]%2==1) {
				System.out.print(arr[i]+" ");
				count++;
			}
		}
		System.out.println();
		System.out.println(count);
		
		
		
	}

}
