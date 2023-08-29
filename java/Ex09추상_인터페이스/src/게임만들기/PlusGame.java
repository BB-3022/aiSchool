package 게임만들기;

import java.util.Random;

public class PlusGame implements GameRule{

	int num1;
	int num2;
	
	
	@Override
	public int random() {
		Random random = new Random();
		return random.nextInt(9)+1;
		
	}

	@Override
	public String getQuizMsg() {
		num1 = random();
		num2 = random();
		return num1 + "+" + num2;
	}

	@Override
	public boolean checkAnswer(int ans) {
		if(ans == (num1+num2)) {
			return true;
		}else {
			return false;
		}
	}

	
	
	
	
}
