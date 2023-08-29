package array;

public class Array_basic {

	public static void main(String[] args) {
		
		// 배열(Array)
		// 같은 타입의 Data 를 연속된 공간에 저장하기 위한 자료구조
		// 배열 생성하기
		// 자료형[] 변수명 = new 자료형[n];
		// 자료형 변수명[] = new 변수명[n]; 변수명을 알아보기가 힘들다.
		
		String[] names = new String[5];
		int[] num = new int[5];
		boolean[] boo = new boolean[5];
	
		// 배열 사용하기 -> names[index]
		System.out.println(names[0]);
		System.out.println(num[0]);
		System.out.println(boo[0]);
		
		//초기값을 가지는 배열 생성
		//자료형[] 변수명 = {null,null,null};
		String[] resident = {"송승호","박병관","이명훈",null};
		resident[3] = "김태연";
		System.out.println(resident[3]);
		
		
		
	}

}
