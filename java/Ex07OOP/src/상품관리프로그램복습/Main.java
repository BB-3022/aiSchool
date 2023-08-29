package 상품관리프로그램복습;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		ArrayList<Product> arr = new ArrayList<>();
		
		int signal = 1;
		
		while(true){
		System.out.print("[1]물건추가 [2]예상 판매량 조회 [3]종료 >> ");	
		int num = sc.nextInt();
		switch(num) {
			case 1:
				System.out.print("물건이름 : ");
				String name = sc.next();
				System.out.print("단가 : ");
				int price = sc.nextInt();
				System.out.print("수량 : ");
				int amount = sc.nextInt();
				
				Product list = new Product(name,price,amount);
				arr.add(list);
				System.out.println();
				break;
				
			case 2:
				System.out.println("제품명\t단가\t수량\t");
				int result = 0;
				
				for(int i=0;i<arr.size();i++) {
					System.out.print(arr.get(i).getName());
					System.out.print("\t");
					System.out.print(arr.get(i).getUnitPrice());
					System.out.print("\t");
					System.out.println(arr.get(i).getAmount());
					result += arr.get(i).getUnitPrice()*arr.get(i).getAmount();
				}
				System.out.println("판매 시 매출 : " + result + "원");
				System.out.println();
				break;
				
			case 3:
				signal = 0;
				System.out.println("프로그램 종료");
				break;
		}
		if(signal==0) {
			break;
		}
		
		
		
		}

	}

}
