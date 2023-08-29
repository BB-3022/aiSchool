package ex02상속실습;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Beginner b = new Beginner();
		b.level = 8;
		b.nickName = "BB";
		b.hp = 200;
		b.mp = 50;
		b.exp = 321;
		
		b.snailThrow();
		b.agileMovement();
		
		Warrior w = new Warrior();
		w.level = 15;
		w.nickName = "타락파워전사";
		w.hp = 800;
		w.mp = 100;
		w.exp = 720;
		
		
		w.smash();
		w.rush();
		w.snailThrow();
		
		Wizard wi = new Wizard();
		wi.level = 30;
		wi.nickName = "워리어";
		wi.hp = 1000;
		wi.mp = 200;
		wi.exp = 950;
		wi.snailThrow();
		
	}

}
