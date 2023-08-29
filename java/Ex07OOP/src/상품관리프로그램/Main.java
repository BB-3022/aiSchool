package 상품관리프로그램;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Scanner sc = new Scanner(System.in);
		ArrayList<PD> list = new ArrayList<>();
		
		
		while(true) {
			System.out.print("[1]물건 추가 [2]예상 판매량 조회 [3]종료 >>");
			int menu = sc.nextInt();
			if(menu==1) {
				System.out.print("물건 이름 : ");
				String name = sc.next();
				System.out.print("단가 : ");
				int price = sc.nextInt();
				System.out.print("수량 : ");
				int unit = sc.nextInt();
								
				PD p1 = new PD(name,price,unit);
				list.add(p1);
				
			}else if(menu==2) {
				
				System.out.println("제품명\t단가\t수량\t");
				int sum = 0;
				for(int i=0;i<list.size();i++) {
					System.out.print(list.get(i).getName());
					System.out.print("\t");
					System.out.print(list.get(i).getUnitPrice());
					System.out.print("\t");
					System.out.println(list.get(i).getAmount());
					
					sum+=list.get(i).getUnitPrice() * list.get(i).getAmount();
				}
				System.out.println("판매 시 매출 : "+sum +"원");
				break;
			}else if(menu==3) {
				System.out.println("프로그램 종료");
				break;
			}		
		}
	sc.close();	
	}
}
