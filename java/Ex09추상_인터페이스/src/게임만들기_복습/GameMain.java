package 게임만들기_복습;

import java.util.Scanner;

public class GameMain {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		PlusGame game = new PlusGame();
		
		int count = 1;
		boolean check = true;
		
		
		System.out.println("======PlusGame START======");
		
		while(count<6) {
			int cnt = 1;
			String quiz = game.getQuizzMsg();
			System.out.print(count + "라운드 : " + quiz); 
			int answer = sc.nextInt();
			
			check = game.checkAnswer(answer);
			
			if(check == false) {
				while(cnt<3) {
					System.out.println("틀렸습니다!");
					System.out.println();
					System.out.print(count + "라운드 : " + quiz); 
					answer = sc.nextInt();
					check = game.checkAnswer(answer);
					cnt++;
					
					if(check == true) {
						break;
					}
				}
				System.out.println("다음으로 넘어갑니다!");
			
				}else {
					System.out.println("정답입니다!");
				}
				count++;
				System.out.println();
			}
			System.out.println("====게임이 종료 되었습니다====");
			sc.close();	
	}

}
