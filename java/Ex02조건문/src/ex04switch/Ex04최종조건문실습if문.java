package ex04switch;

import java.util.Scanner;

public class Ex04최종조건문실습if문 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 // 자판기 프로그램
	      Scanner sc = new Scanner(System.in);
	      
	      System.out.println("금액을 입력하세요.");
	      int inputMoney = sc.nextInt();
	      
	      System.out.println("메뉴를 고르세요");
	      System.out.print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500) >> ");
	      int menu = sc.nextInt();
	      
	      // 잔돈이 저장될 변수
	      int changeMoney = 0;
	      
	      if(menu == 1) {
	         
	         if(inputMoney >= 800) {
	            changeMoney = inputMoney - 800;
	         }else {
	            changeMoney = inputMoney;
	            System.out.println("돈이 부족해요ㅠㅠ");
	         }
	         
	      }else if(menu == 2) {

	         if(inputMoney >= 500) {
	            changeMoney = inputMoney - 500;
	         }else {
	            changeMoney = inputMoney;
	            System.out.println("돈이 부족해요ㅠㅠ");
	         }
	         
	      }else if(menu == 3) {
	         
	         if(inputMoney >= 1500) {
	            changeMoney = inputMoney - 1500;
	         }else {
	            changeMoney = inputMoney;
	            System.out.println("돈이 부족해요ㅠㅠ");
	         }
	         
	      }
	      
	      System.out.println("잔돈 : " + changeMoney + "원");
	      int c = changeMoney / 1000;
	      int o = changeMoney % 1000 / 500;
	      int b = changeMoney % 1000 % 500 / 100;
	      System.out.print("천원 : " + c + "개, ");
	      System.out.print("오백원 : " + o + "개, ");
	      System.out.print("백원 : " + b + "개 ");
	      sc.close();
	}

}
