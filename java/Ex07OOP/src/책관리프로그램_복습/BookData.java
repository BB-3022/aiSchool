package 책관리프로그램_복습;

public class BookData {

	// BookData의 필드
	private String title;
	private int price;
	private String writer;
	
	// 3의 매개변수를 가진 생성자로, 객체 생성 시 매개변수를 초기화
	public BookData(String title, int price, String writer) {
		
		this.title = title;
		this.price = price;
		this.writer = writer;
	}

	// Main class 에게 BookData class 의 private로 감싸진 
	// 필드의 정보를 돌려주는 getter 생성
	public String getTitle() {
		return title;
	}

	public int getPrice() {
		return price;
	}

	public String getWriter() {
		return writer;
	}
	
	
	
	
}
