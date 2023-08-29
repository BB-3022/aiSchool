package 게임만들기;

import java.util.Scanner;

public class GameMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		PlusGame game = new PlusGame();
		int num = 5;
		int count = 2;
	
		while(num>0) {
			String qn = game.getQuizMsg();
			
			for(int i=0;i<3;i++) {
			System.out.print(qn+" = ");
			int ans = sc.nextInt();
			
			if(game.checkAnswer(ans)) {
				System.out.println("정답입니다.");
				num--;
				break;
			}else {
				if(count != 0) {
					System.out.println("틀렸습니다.");
					System.out.println("목숨이 " + (count) + "남았습니다.");
					count--;
				} 
			}
		}
		if(count==0) {
			System.out.println("게임이 종료 되었습니다.");
			break;
		}
	}
	sc.close();
	}
}
