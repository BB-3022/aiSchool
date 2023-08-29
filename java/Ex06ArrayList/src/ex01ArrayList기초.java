import java.util.ArrayList;

public class ex01ArrayList기초 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1.ArrayList 를 사용해보자
		// : 가변 배열
		// 1. ArrayList 선언 및 초기화
		
		// object : 상속
				// object 로 데이터를 받아서 String 으로 자동 형 변환 하는 중..
				
				// import 단축키 : ctrl + shift + O
				// <> : 제네릭
				// 반드시 레퍼런스 형 변수만 들어 갈 수 있다.
				// 2. 데이터 추가하기 name.add()
				// 1) add(데이터값)
		
		ArrayList<String> name = new ArrayList<>();
		
		name.add("이름1");
		name.add("이름2");
		name.add("이름3");
		
		System.out.println(name);
		
		name.add(1,"추가이름");
		
		System.out.println(name);
		// 2) add(인덱스 값, 데이터 값)
		// 3. 데이터 가져오기
		// get(index)
		System.out.println(name.get(1));
		
		//for 문을 사용해서 전체 데이터 출력
		// ArrayList 의 크기 : .size()
		for(int i=0; i<name.size();i++) {
			System.out.println(name.get(i));
		}
		// 4. 데이터 삭제
		name.remove(2);
		System.out.println(name);
		name.clear();
		System.out.println(name);
		
	}

}
