package com.model.product;

public class ProductDTO {

	// 	상품정보 PRODUCT 필드 
	private String prd_number; //상품번호
	private String prd_food_soration; //식료품 구분
	private String prd_slr_sortation; //판매처구분
	private String prd_name; //품목명
	private String prd_img_link; //이미지 링크
	private int prd_price; //가격
	private int prd_dc_price; //할인가격
	private String prd_dc_rate; //할인율
	private String prd_link; //구매 링크
	private String prd_registration_date; //등록일시
	
	
	
	
	
	
	// 사용자 정의 생성자 - 전체  
	public ProductDTO(String prd_number, String prd_food_soration, String prd_slr_sortation, String prd_name,
			String prd_img_link, int prd_price, int prd_dc_price, String prd_dc_rate, String prd_link,
			String prd_registration_date) {
		this.prd_number = prd_number;
		this.prd_food_soration = prd_food_soration;
		this.prd_slr_sortation = prd_slr_sortation;
		this.prd_name = prd_name;
		this.prd_img_link = prd_img_link;
		this.prd_price = prd_price;
		this.prd_dc_price = prd_dc_price;
		this.prd_dc_rate = prd_dc_rate;
		this.prd_link = prd_link;
		this.prd_registration_date = prd_registration_date;
	}
	
	// 사용자 정의 생성자 - 식료품구분, 품목명, 이미지 링크, 가격, 할인가격, 할인율, 판매처구분
	public ProductDTO(String prd_slr_sortation, String prd_name, String prd_img_link, int prd_price, int prd_dc_price,
			String prd_dc_rate) {
		super();
		this.prd_slr_sortation = prd_slr_sortation;
		this.prd_name = prd_name;
		this.prd_img_link = prd_img_link;
		this.prd_price = prd_price;
		this.prd_dc_price = prd_dc_price;
		this.prd_dc_rate = prd_dc_rate;
	}


	
	
	




	//겟,셋
	public String getPrd_number() {
		return prd_number;
	}




	public void setPrd_number(String prd_number) {
		this.prd_number = prd_number;
	}



	public String getPrd_food_soration() {
		return prd_food_soration;
	}



	public void setPrd_food_soration(String prd_food_soration) {
		this.prd_food_soration = prd_food_soration;
	}



	public String getPrd_slr_sortation() {
		return prd_slr_sortation;
	}



	public void setPrd_slr_sortation(String prd_slr_sortation) {
		this.prd_slr_sortation = prd_slr_sortation;
	}



	public String getPrd_name() {
		return prd_name;
	}



	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}



	public String getPrd_img_link() {
		return prd_img_link;
	}



	public void setPrd_img_link(String prd_img_link) {
		this.prd_img_link = prd_img_link;
	}



	public int getPrd_price() {
		return prd_price;
	}



	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}



	public int getPrd_dc_price() {
		return prd_dc_price;
	}



	public void setPrd_dc_price(int prd_dc_price) {
		this.prd_dc_price = prd_dc_price;
	}



	public String getPrd_dc_rate() {
		return prd_dc_rate;
	}



	public void setPrd_dc_rate(String prd_dc_rate) {
		this.prd_dc_rate = prd_dc_rate;
	}



	public String getPrd_link() {
		return prd_link;
	}



	public void setPrd_link(String prd_link) {
		this.prd_link = prd_link;
	}



	public String getPrd_registration_date() {
		return prd_registration_date;
	}



	public void setPrd_registration_date(String prd_registration_date) {
		this.prd_registration_date = prd_registration_date;
	}



	//출력
	@Override
	public String toString() {
		return "ProductDTO [prd_number=" + prd_number + ", prd_food_soration=" + prd_food_soration
				+ ", prd_slr_sortation=" + prd_slr_sortation + ", prd_name=" + prd_name + ", prd_img_link="
				+ prd_img_link + ", prd_price=" + prd_price + ", prd_dc_price=" + prd_dc_price + ", prd_dc_rate="
				+ prd_dc_rate + ", prd_link=" + prd_link + ", prd_registration_date=" + prd_registration_date + "]";
	}
	
	




}
