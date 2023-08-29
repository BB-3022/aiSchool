package commodel;

public class CoffeeDTO {
   private String menuNm;
   private int price;
   private String size;
   
   
   
   
   public CoffeeDTO(String menuNm, int price, String size) {
      super();
      this.menuNm = menuNm;
      this.price = price;
      this.size = size;
   }
   
   
   public String getNm() {
      return menuNm;
   }
   public void setNameNm(String menuNm) {
      this.menuNm = menuNm;
   }
   public int getPrice() {
      return price;
   }
   public void setPrice(int price) {
      this.price = price;
   }
   public String getSize() {
      return size;
   }
   public void setSize(String size) {
      this.size = size;
   }

   
   
   // 객체 내 정보를 보여주기 위한 메소드
   @Override
   public String toString() {
      return "CoffeeDTO [menuNm=" + menuNm + ", price=" + price + ", size=" + size + "]";
   }
   
   
   
   
}