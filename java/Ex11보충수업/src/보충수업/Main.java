package 보충수업;

import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		
		// 추상 클래스는 객체를 생성 할 수 없다.
		// PBKJajang pbk = new PBKJajang(); 
		
		PCHJajang pch = new PCHJajang();
		
		PBGJajang pbg = new PBGJajang();
		
		PJGJajang pjg = new PJGJajang();
		
		PDYJajang pdy = new PDYJajang();
	
		// 자식것이 조금더 업그레이드 되었다고 생각하기 때문에,
		// 자식 특유의 메서드는 기능을 잃어도, 오버라이딩 된 메서드는 사용 가능 하다.
		// 상속의 관계에서 오버라이딩된 기능이 조금 더 업그레이드 되었다고 생각하기 때문에
		
		// 업 캐스팅(자동형변환)
		// 추상클래스를 상속받은 자식클래스도 추상클래스로 업캐스팅 가능하다.
		PBKJajang p1 = pch; 
		PBKJajang p2 = pbg; 
		PBKJajang p3 = pjg;
		PBKJajang p4 = pdy;
		
		// 업 캐스팅을 통해서 PBKJajang 형태로 통일
		// 하나의 ArrayList에 묶을 수 있다.
		ArrayList<PBKJajang> list = new ArrayList<>();
		list.add(p1);
		list.add(p2);
		list.add(p3);
		list.add(p4);
		
		for(int i=0;i<list.size();i++) {
			list.get(i).makeJajang();
		}
		// p1 가 PCH 타입인걸 코드로 알 수 없다.->p1의 형태를 명시 후 가능
		// 다운캐스팅
		PCHJajang pch2 = (PCHJajang)p1;
		
		// p2 가 PCH 타입인지 여부를 알수 없어 코드 작성은 가능하지만, 실행 시 오류 발생
		// java.lang.ClassCastException
		
		// PCHJajang pch4 = (PCHJajang)p2;
	}
}
