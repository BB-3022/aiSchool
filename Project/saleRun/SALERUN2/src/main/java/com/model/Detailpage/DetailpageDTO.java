package com.model.Detailpage;

public class DetailpageDTO {

	private String prd_number;
	private String prd_food_sortation;
	private String prd_slr_sortation;
	private String prd_name;
	private String prd_img_link;
	private int prd_price;
	private int prd_dc_price;
	private String prd_dc_rate;
	private String prd_link;
	

	public DetailpageDTO(String prd_slr_sortation, String prd_name, String prd_img_link, int prd_price,
			int prd_dc_price, String prd_link) {
		this.prd_slr_sortation = prd_slr_sortation;
		this.prd_name = prd_name;
		this.prd_img_link = prd_img_link;
		this.prd_price = prd_price;
		this.prd_dc_price = prd_dc_price;
		this.prd_link = prd_link;
	}
	public String getPrd_number() {
		return prd_number;
	}
	public void setPrd_number(String prd_number) {
		this.prd_number = prd_number;
	}
	public String getPrd_food_sortation() {
		return prd_food_sortation;
	}
	public void setPrd_food_sortation(String prd_food_sortation) {
		this.prd_food_sortation = prd_food_sortation;
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

	
	
	
	
	
	
}

