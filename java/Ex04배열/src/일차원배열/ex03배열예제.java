package 일차원배열;

public class ex03배열예제 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. 정수형 데이터를 저장 할 수 있는 arr 배열 생서
		// 2. 문제에 적혀있는 값으로 초기화
		//     23,45,95,17,6,89,47,56,68,17
		// 3. arr 에 들어있는 값들 중에서 가장 큰 값을 찾아서 출력
		// 4. arr 에 들어 있는 값들 중에서 가장 작은 값을 찾아서 출력
		
		int[] arr = {23,45,95,17,6,89,47,56,68,17};
		int max = arr[0];
		int min = arr[0];
		
		for(int i=1;i<arr.length;i++) {
			if(arr[i]>max) {
				max = arr[i];
			}else if(arr[i]<min) {
				min = arr[i];
			}
		}
		System.out.println("최대값은 "+max);
		System.out.println("최소값은 "+min);
		
	}

}
