package 이차원배열;

public class ex01이차원배열개념 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 이차원배열
		// 1차원 배열 안에 1차원 배열이 들어가 있는 자료구조
		// 1. 이차원 배열 선언하기
		// 자료형[][] 배열명 = new 자료형[배열의 크기1][배열의크기2]
		
		int[][]arr = new int[5][4];
		//배열의 크기1 : arr 주소값에 들어갈 배열의 크기-->5
		//배열의 크기2 : arr 안에 있는 배열에 들어갈 배열의 크기-->4
		
		System.out.println(arr);
		System.out.println(arr[0]); //4칸 자리 배열이 들어가 있는 주소 값
		System.out.println(arr[0][2]);//실제 데이터를 가져오는 방법
		
		//length
		System.out.println(arr.length);
		//arr 배열의 크기(배열의 크기1)
		System.out.println(arr[0].length);
		//배열안에 들어있는 배열의 크기(배열의 크기2)
	}

}
