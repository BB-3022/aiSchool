package com.model.cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartDAO {

   private Connection conn;
   private PreparedStatement psmt;
   private ResultSet rs;
   private int cnt = 0;
   
   //데이터베이스 연결메소드
   public void getConnection() {
      
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
      
      
      String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
      String db_id = "Insa4_Spring_hacksim_2";
      String db_pw = "aishcool2";
      
      conn = DriverManager.getConnection(db_url, db_id, db_pw);
      } catch (ClassNotFoundException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
      }
   }

   //데이터베이스 종료메소드
   public void close() {
      try {
         if(rs != null) {
            System.out.println(1);
            rs.close();
         }
         if(psmt != null) {
            System.out.println(2);
            psmt.close();
         }
         if(conn != null) {
            System.out.println(3);
            conn.close();
         }
      }catch (SQLException e) {
         e.printStackTrace();
      }
   }   
   
   // 상품 테이블 데이터 가져오기 메소드 (상품번호 = ?)
   public ArrayList<CartDTO> dc_price(CartDTO dto) {
      
      ArrayList<CartDTO> product_list = new ArrayList<>();
      
      getConnection();
      
      
      try {
         String sql = "SELECT PRD_NUMBER , PRD_FOOD_SORTATION , PRD_SLR_SORTATION , PRD_NAME , PRD_IMG_LINK , PRD_PRICE , PRD_DC_PRICE , PRD_DC_RATE , PRD_LINK  FROM PRODUCT WHERE PRD_NUMBER=?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getPrd_number());

         
         rs = psmt.executeQuery();
         
         while(rs.next()) {
            String prd_number = rs.getString(1);
            String prd_food_sortation = rs.getString(2);
            String prd_slr_sortation = rs.getString(3);
            String prd_name = rs.getString(4);
            String prd_img_link = rs.getString(5);
            int prd_price = rs.getInt(6);            
            int prd_dc_price = rs.getInt(7);      
            String prd_dc_rate = rs.getString(8);
            String prd_link = rs.getString(9);
            
            CartDTO product_dao = new CartDTO(prd_number, prd_food_sortation, prd_slr_sortation , prd_name ,prd_img_link ,prd_price ,prd_dc_price ,prd_dc_rate ,prd_link);
            product_list.add(product_dao);
            
         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         close();
      }
      
      return product_list;
   }
   
   // 장바구니 테이블 데이터 가져오기 메소드 (조건을 ID로 바꿔야할듯)
   public ArrayList<CartDataDTO> cart_data(CartDataDTO dto) {
      
      ArrayList<CartDataDTO> cart_list = new ArrayList<>();;
      
      getConnection();
      
      
      try {
         String sql = "SELECT CRT_NUMBER , CRT_PRD_QUANTITY , CRT_AMOUNT , CRT_PRD_NUMBER , CRT_ID , CRT_IMG_LINK , CRT_SELLER , CRT_PRODUCT , CRT_LINK , CRT_PRICE  FROM CART WHERE CRT_ID=?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getCrt_id());

         
         rs = psmt.executeQuery();
         
         while(rs.next()) {

            int crt_number = rs.getInt(1);            
            int crt_prd_quantity = rs.getInt(2);            
            int crt_amoint = rs.getInt(3);      
            String crt_prd_number = rs.getString(4);
            String crt_id = rs.getString(5);
            String crt_img_link = rs.getString(6);
            String crt_seller = rs.getString(7);
            String crt_product = rs.getString(8);
            String crt_link = rs.getString(9);
            int crt_price = rs.getInt(10);
            
            CartDataDTO cart_dto = new CartDataDTO(crt_number ,crt_prd_quantity ,crt_amoint, crt_prd_number , crt_id , crt_img_link , crt_seller , crt_product , crt_link ,crt_price);
            cart_list.add(cart_dto);
         
         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cart_list;
   }   
   
   // 장바구니 상품 전체 삭제 메소드
   public void alldelete(CartDataDTO dto) {
      
      getConnection();
      
      
      
      
      try {
         String sql = "DELETE FROM CART WHERE CAT_ID = ?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getCrt_id());
         psmt.executeUpdate();
         
      } catch (SQLException e) {
         
         e.printStackTrace();
      }finally {
         close();
      }
      
   }
   
   // 장바구니 상품 삭제 메소드
   public void delete(CartDataDTO dto) {
      
      getConnection();
      
      
      try {
         String sql = "DELETE FROM CART WHERE CRT_PRD_NUMBER = ? AND CRT_ID = ?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, dto.getCrt_prd_number());
         psmt.setString(2, dto.getCrt_id());
         psmt.executeUpdate();
         
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      
   }   
   
   // 장바구니에서 표현될 상품데이터 조인 메소드
   // 매개변수 세션에담긴 아이디로 조건주기  sql문도 설정해야할듯
   public ArrayList<CartJoinDTO> cartList(String id) {
      
      ArrayList<CartJoinDTO> cart_list = new ArrayList<>();
      getConnection();
      
      
      try {
         String sql = "SELECT PRD_NUMBER , PRD_SLR_SORTATION ,PRD_NAME , PRD_IMG_LINK , PRD_PRICE , PRD_DC_PRICE , PRD_LINK , CRT_PRD_QUANTITY , CRT_ID FROM PRODUCT LEFT JOIN CART ON PRD_NUMBER=CRT_PRD_NUMBER WHERE CRT_ID=?";
         psmt = conn.prepareStatement(sql);
         psmt.setString(1, id);
         
         rs = psmt.executeQuery();
         
         while(rs.next()) {

            String prd_number = rs.getString(1);            
            String prd_slr_sortation = rs.getString(2);            
            String prd_name = rs.getString(3);      
            String prd_img_link = rs.getString(4);
            int prd_price = rs.getInt(5);
            int prd_dc_price = rs.getInt(6);
            String prd_link = rs.getString(7);
            int crt_prd_quantity = rs.getInt(8);
            String crt_id = rs.getString(9);
         
            CartJoinDTO cartlist_dto = new CartJoinDTO(prd_number ,prd_slr_sortation ,prd_name, prd_img_link , prd_price , prd_dc_price , prd_link , crt_prd_quantity , crt_id);
            cart_list.add(cartlist_dto);
         
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return cart_list;
   }
   
   
}