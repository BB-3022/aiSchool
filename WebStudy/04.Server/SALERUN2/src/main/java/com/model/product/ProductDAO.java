package com.model.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
   
   private Connection conn;
   private PreparedStatement psmt;
   private ResultSet rs;
   
   //db 커넥션 연결 메소드 
   public void getConnection() {
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
          String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
          String db_id = "Insa4_Spring_hacksim_2";
          String db_pw = "aishcool2";
          
          conn = DriverManager.getConnection(db_url, db_id, db_pw);
          
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
         System.out.println("db 커넥션 연결 에러 : ojdbc.jar 또는 경로를 체크하세요");
      } catch (SQLException e) {
         e.printStackTrace();
         System.out.println("db 커넥션 연결 에러 : db연결에 필요한 정보가 맞는지 체크하세요");
      }
   }
   
   //db 커넥션 종료
   public void close() {
      try {
         if(rs != null) {
            rs.close();
         }
         if(psmt != null) {
            psmt.close();
         }
         if(conn != null) {
            conn.close();
         }            
      }catch(SQLException e) {
         e.printStackTrace();
         System.out.println("db 커넥션 종료 에러 : db연결에 필요한 정보가 맞는지 체크하세요");
      }
   }

   
//   //상품목록 식료품 카테고리 체크 
//   public ArrayList<ProductDTO> SearchProduct_FoodSortation(String food_sortation){ //체크한 식료품값을 매개변수로 받기 
//      ArrayList<ProductDTO> list = new ArrayList<>();
//      
//      //커넥션 연결 함수 
//      getConnection();
//      
//      //받아온 식료품 카테고리로 상품 조회 
//      String sql = "SELECT * FROM PRODUCT WHERE PRD_FOOD_SORTATION LIKE ? "; 
//      
//      try {
//         psmt = conn.prepareStatement(sql);
//         psmt.setString(1, "%"+food_sortation+"%");
//         rs = psmt.executeQuery();
//         
//         //성공하면 데이터 읽어오기 
//         while(rs.next()) {
//            String prd_food_sortation = rs.getString("prd_food_sortation"); //식료품 구분
//            String prd_slr_sortation = rs.getString("prd_slr_sortation"); //판매처구분
//            String prd_name = rs.getString("prd_name"); //품목명
//            String prd_img_link = rs.getString("prd_img_link"); //이미지 링크
//            int prd_price = rs.getInt("prd_price"); //가격
//            int prd_dc_price = rs.getInt("prd_dc_price"); //할인가격
//            String prd_dc_rate = rs.getString("prd_dc_rate"); //할인율
//            String prd_link = rs.getString("prd_link"); //구매 링크
//
//            // 상품정보 dto로 묶기
//            ProductDTO dto = new ProductDTO(prd_food_sortation, prd_slr_sortation, prd_name, prd_img_link, prd_price, prd_dc_price, prd_dc_rate, prd_link);
//            list.add(dto);
//         }
//      } catch (SQLException e) {
//         e.printStackTrace();
//         System.out.println("에러 : SQLException");
//      }finally {
//         //닫기 함수 
//         close();
//      }
//      return list;
//   } 
//
//   
//   
//   //상품명을 매개변수로 받아서 상품 검색
//   public ArrayList<ProductDTO> searchProductByName(String searchKeyword){
//      ArrayList<ProductDTO> searchProductList = new ArrayList<>();
//      
//      getConnection();
//      
//      String sql = "SELECT * FROM PRODUCT WHERE PRD_NAME LIKE ? ";
//   
//      try {
//         psmt = conn.prepareStatement(sql);
//         psmt.setString(1, "%"+searchKeyword+"%");
//         rs = psmt.executeQuery();
//
//         //성공하면 데이터 읽어오기 
//         while(rs.next()) {
//            String prd_food_sortation = rs.getString("prd_food_sortation"); //식료품 구분
//            String prd_slr_sortation = rs.getString("prd_slr_sortation"); //판매처구분
//            String prd_name = rs.getString("prd_name"); //품목명
//            String prd_img_link = rs.getString("prd_img_link"); //이미지 링크
//            int prd_price = rs.getInt("prd_price"); //가격
//            int prd_dc_price = rs.getInt("prd_dc_price"); //할인가격
//            String prd_dc_rate = rs.getString("prd_dc_rate"); //할인율
//            String prd_link = rs.getString("prd_link"); //구매 링크
//
//            // 상품정보 dto로 묶기
//            ProductDTO dto = new ProductDTO(prd_food_sortation, prd_slr_sortation, prd_name, prd_img_link, prd_price, prd_dc_price, prd_dc_rate, prd_link);
//            searchProductList.add(dto);
//          
//         }
//      } catch (SQLException e) {
//         e.printStackTrace();
//         System.out.println("에러 : SQLException");
//      }finally {
//         //닫기 함수 
//         close();
//      }
//      return searchProductList;
//   } 
   
   
   
   //상품명과 식료품 카테고리 체크박스 동시에 고려하여 상품 검색 
   public ArrayList<ProductDTO> searchProductByNameAndSortation(String searchKeyword, String food_sortation) {
       ArrayList<ProductDTO> searchProductByNameAndSortation = new ArrayList<ProductDTO>();
       
       getConnection();

       String sql = "SELECT * FROM PRODUCT WHERE PRD_NAME LIKE ? AND PRD_FOOD_SORTATION = ?";
       try {
           psmt = conn.prepareStatement(sql);
           psmt.setString(1, "%" + searchKeyword + "%");  // 상품명에 searchKeyword가 포함된 경우
           psmt.setString(2, food_sortation);
           rs = psmt.executeQuery();
           
           //성공하면 데이터 읽어오기
           while (rs.next()) {
               String prd_food_sortation = rs.getString("prd_food_sortation"); //식료품 구분
               String prd_slr_sortation = rs.getString("prd_slr_sortation"); //판매처구분
               String prd_name = rs.getString("prd_name"); //품목명
               String prd_img_link = rs.getString("prd_img_link"); //이미지 링크
               int prd_price = rs.getInt("prd_price"); //가격
               int prd_dc_price = rs.getInt("prd_dc_price"); //할인가격
               String prd_dc_rate = rs.getString("prd_dc_rate"); //할인율
               String prd_link = rs.getString("prd_link"); //구매 링크
   
               // 상품정보 dto로 묶기
               ProductDTO dto = new ProductDTO(prd_food_sortation, prd_slr_sortation, prd_name, prd_img_link, prd_price, prd_dc_price, prd_dc_rate, prd_link);
               searchProductByNameAndSortation.add(dto);
           }

       } catch (SQLException e) {
           e.printStackTrace();
       } finally {
          close();
//           if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
//           if (psmt != null) try { psmt.close(); } catch (SQLException e) { e.printStackTrace(); }
//           if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
       }
       return searchProductByNameAndSortation;
   }

   
      
}