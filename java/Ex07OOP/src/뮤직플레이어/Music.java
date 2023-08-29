package 뮤직플레이어;

public class Music {

	//VO(DTO) 클래스! 필드 겟터 겟터 생성자
	//1. 가수명 2.노래제목 3.출시년도 4.시간(초단위) 5.경로
	private String singer;
	private String title;
	private int year;
	private int time;
	private String path;

	//  객체를 생성할 때 4개의 데이터가 무조건 필요하다! 강제성 부여
	// 자동완성 alt + shift + s 
	// 생성자를 통해, 4개의 데이터를 받아야 객체가 생성 될 수 있도록 했다.
	
	// 메소드 오버로딩 - 동일한 이름의 메소드를 정의하는 방법
	// 획일화 하기 위하여
	// 1. 매개변수 개수가 다를 떄
	// 2. 매개변수의 데이터 타입이 다를 때
	
	public Music(String singer, String title, int year, int time, String path) {
		
		this.singer = singer;
		this.title = title;
		this.year = year;
		this.time = time;
		this.path = path;
	}
	
	public Music(String singer, String title, int year, int time) {
		
		this.singer = singer;
		this.title = title;
		this.year = year;
		this.time = time;
		
	}
	
	
	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	// 자동완성 alt + shift + s 
	// alt + a -> alt + s -> enter
	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	
	
}
