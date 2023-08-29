package com.model.wishprd;

public class WishProductDTO {

   private String prd_number;
   private String prd_name;
   private String prd_img_link;
   private int prd_dc_price;
   private String wp_id;
   private String wp_number;
   private String wp_idnum;
   
   public String getWp_idnum() {
      return wp_idnum;
   }
   public void setWp_idnum(String wp_idnum) {
      this.wp_idnum = wp_idnum;
   }
   public String getWp_number() {
      return wp_number;
   }
   public void setWp_number(String wp_number) {
      this.wp_number = wp_number;
   }
   public String getPrd_number() {
      return prd_number;
   }
   public void setPrd_number(String prd_number) {
      this.prd_number = prd_number;
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
   public int getPrd_dc_price() {
      return prd_dc_price;
   }
   public void setPrd_dc_price(int prd_dc_price) {
      this.prd_dc_price = prd_dc_price;
   }
   public String getWp_id() {
      return wp_id;
   }
   public void setWp_id(String wp_id) {
      this.wp_id = wp_id;
   }
   public WishProductDTO(String prd_number, String prd_name, String prd_img_link, int prd_dc_price, String wp_id) {
      this.prd_number = prd_number;
      this.prd_name = prd_name;
      this.prd_img_link = prd_img_link;
      this.prd_dc_price = prd_dc_price;
      this.wp_id = wp_id;
   }
   public WishProductDTO(String wp_number, String wp_id) {

      this.wp_number = wp_number;
      this.wp_id = wp_id;
   }
   public WishProductDTO(String wp_id, String wp_number, String wp_idnum) {
      this.wp_id = wp_id;
      this.wp_number = wp_number;
      this.wp_idnum = wp_idnum;
   }
   public WishProductDTO(String wp_id) {
      this.wp_id = wp_id;
   }

   
   
   
}