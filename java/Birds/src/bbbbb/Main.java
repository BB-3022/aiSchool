package bbbbb;

public class Main {

	public static void main(String[] args) {
		birds a1 = new birds();
		cs a2 = new cs();
		bd a3 = new bd();
		tj a4 = new tj("빠르다");
		
		a1.move();
		a2.move();
		a3.move();
		a4.move();
		
		a2.setQu_cs("귀여워");
		a3.setQu_bd("하얗다");
		
	
		System.out.println(a2.getQu_cs());
		System.out.println(a3.getQu_bd());
		System.out.println(a4.getQu_tj());
	
	}

}

