package bbbbb;

public class tj extends birds{

	private String qu_tj;
	
	
	public tj(String qu_tj) {
		this.qu_tj = qu_tj;
	}
	@Override
	public void move() {
		System.out.println("나는 못날아 ㅜㅜㅜ");
	}
	public String getQu_tj() {
		return qu_tj;
	}
	public void setQu_tj(String qu_tj) {
		this.qu_tj = qu_tj;
	}

}
