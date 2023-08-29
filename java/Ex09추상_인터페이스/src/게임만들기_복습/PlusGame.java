package 게임만들기_복습;

import java.util.Random;

public class PlusGame implements GameRule{

	Random rd = new Random();
	
	int num1 = 0;
	int num2 = 0;
	
	@Override
	public int random() {
		int num = rd.nextInt(10)+1;
		return num;
	}
	
	@Override
	public String getQuizzMsg() {
		num1 = random();
		num2 = random();
		return num1 + " + " + num2 + " = ";
	}

	@Override
	public boolean checkAnswer(int ans) {
		if((num1 + num2) ==ans) {
			return true;
		}else {
			return false;
		}
	}

}
