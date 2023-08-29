package Student;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Student> info = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		
		int signal = 1;
		
		System.out.println("================학점 관리 프로그램================");
		
		while(true) {
			System.out.print("[1]성적입력 [2]전체조회 [3]학생검색 [4]프로그램 종료 >>");
			int num = sc.nextInt();
		
			switch(num) {
			case 1:
				System.out.print("이름 : ");
				String name = sc.next();
				System.out.print("학번 : ");
				String number = sc.next();
				System.out.print("Java점수 : ");
				int scoreJava = sc.nextInt();
				System.out.print("Web점수 : ");
				int scoreWeb = sc.nextInt();
				System.out.print("Android점수 : ");
				int scoreAndroid = sc.nextInt();
				
				Student stu = new Student(name,number,scoreJava,scoreWeb,scoreAndroid);
				info.add(stu);
				
				System.out.println();
				break;
			
			case 2:
				System.out.println("================전체조회================");
				System.out.println("이름\t학번\tJava\tAndroid\tWeb");
				if(info.size()==0) {
					System.out.println("조회 할 데이터가 없습니다.");
				}
				for(int i = 0;i<info.size();i++) {
					System.out.print(info.get(i).getName()+"\t");
					System.out.print(info.get(i).getNumber()+"\t");
					System.out.print(info.get(i).getScoreJava()+"\t");
					System.out.print(info.get(i).getScoreAndroid()+"\t");
					System.out.println(info.get(i).getScoreWeb());
				}
				break;
			
			case 3:
				System.out.print("검색할 이름 입력 : ");
				String qn = sc.next();
				System.out.println("================학생검색================");
				
				for(int i=0;i<info.size();i++) {
					if(info.get(i).getName().equals(qn)) {
						System.out.print(info.get(i).getName()+"\t");
						System.out.print(info.get(i).getNumber()+"\t");
						System.out.print(info.get(i).getScoreJava()+"\t");
						System.out.print(info.get(i).getScoreAndroid()+"\t");
						System.out.println(info.get(i).getScoreWeb()+"\t");						
						System.out.println("=====================================");
					}else {
						System.out.println("조회 할 데이터가 없습니다.");
						System.out.println("=====================================");
						break;
					}
				}
				System.out.println();
				break;
			case 4:
				System.out.println("학점 관리 프로그램을 종료합니다.");
				signal=0;
				break;
			}
			if(signal == 0) {
				break;
			}
		}
		
	}

}
