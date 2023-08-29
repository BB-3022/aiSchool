package com.model.cart;

public class CartDataDTO {

   private int crt_number;
   private int crt_prd_quantity;
   private int crt_amount;
   private String crt_prd_number;
   private String crt_id;
   private String crt_img_link;
   private String crt_seller;
   private String crt_product;
   private String crt_link;
   private int crt_price;
   
   
   public CartDataDTO(int crt_number, int crt_prd_quantity, int crt_amount, String crt_prd_number, String crt_id,
         String crt_img_link, String crt_seller, String crt_product, String crt_link, int crt_price) {
      this.crt_number = crt_number;
      this.crt_prd_quantity = crt_prd_quantity;
      this.crt_amount = crt_amount;
      this.crt_prd_number = crt_prd_number;
      this.crt_id = crt_id;
      this.crt_img_link = crt_img_link;
      this.crt_seller = crt_seller;
      this.crt_product = crt_product;
      this.crt_link = crt_link;
      this.crt_price = crt_price;
   }


   
   
   
   
   
   


   
   
   public String getCrt_img_link() {
      return crt_img_link;
   }












   public void setCrt_img_link(String crt_img_link) {
      this.crt_img_link = crt_img_link;
   }












   public String getCrt_seller() {
      return crt_seller;
   }












   public void setCrt_seller(String crt_seller) {
      this.crt_seller = crt_seller;
   }












   public String getCrt_product() {
      return crt_product;
   }












   public void setCrt_product(String crt_product) {
      this.crt_product = crt_product;
   }












   public String getCrt_link() {
      return crt_link;
   }












   public void setCrt_link(String crt_link) {
      this.crt_link = crt_link;
   }












   public int getCrt_price() {
      return crt_price;
   }












   public void setCrt_price(int crt_price) {
      this.crt_price = crt_price;
   }












   public CartDataDTO(String crt_prd_number, String crt_id) {

      this.crt_prd_number = crt_prd_number;
      this.crt_id = crt_id;
   }
   public String getCrt_id() {
      return crt_id;
   }
   public void setCrt_id(String crt_id) {
      this.crt_id = crt_id;
   }
   public int getCrt_number() {
      return crt_number;
   }
   public void setCrt_number(int crt_number) {
      this.crt_number = crt_number;
   }
   public int getCrt_prd_quantity() {
      return crt_prd_quantity;
   }
   public void setCrt_prd_quantity(int crt_prd_quantity) {
      this.crt_prd_quantity = crt_prd_quantity;
   }
   public int getCrt_amount() {
      return crt_amount;
   }
   public void setCrt_amount(int crt_amount) {
      this.crt_amount = crt_amount;
   }
   public String getCrt_prd_number() {
      return crt_prd_number;
   }
   public void setCrt_prd_number(String crt_prd_number) {
      this.crt_prd_number = crt_prd_number;
   }
   
   

   
   












   public CartDataDTO(int crt_number, int crt_prd_quantity, String crt_prd_number, String crt_id) {
      this.crt_number = crt_number;
      this.crt_prd_quantity = crt_prd_quantity;
      this.crt_prd_number = crt_prd_number;
      this.crt_id = crt_id;
   }












   public CartDataDTO(String crt_prd_number) {
      this.crt_prd_number = crt_prd_number;
   }


   
   
   
}