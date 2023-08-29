package 게임만들기_복습;

public interface GameRule {

	// 난수를 생성할 수 있는 기능
	public abstract int random();
	
	// 문제를 제출할 수 있는 기능
	public abstract String getQuizzMsg();
	
	// 정답을 체크할 수 있는 기능
	public abstract boolean checkAnswer(int ans);
	
	
}
