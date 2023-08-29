package com.model.map;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.model.Detailpage.DetailpageDTO;

public class MapDAO {
   private Connection conn;
   private PreparedStatement psmt;
   private ResultSet rs;
   
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


   public ArrayList<MapDTO> searchPlaces(String m_addr, String[] m_name) {
      
      getConnection() ;
      
      // 검색 결과를 저장할 리스트 생성
      ArrayList<MapDTO> list = new ArrayList<>();
      
      // 체크박스로 선택된 판매처 이름들을 OR 연산자로 조합하여 m_nameCondition에 저장
      String m_nameCondition = String.join(" OR ", Collections.nCopies(m_name.length, "M_NAME LIKE ?"));
      // SQL 쿼리 작성
      /* String question = "? or".repeat(m_name.length) - " or"; */ 
            String sql = "SELECT M_NAME, M_LATITUDE, M_LONGITUDE FROM MART WHERE (" + m_nameCondition + ") AND M_ADDR LIKE ?";

            
      try {
          // SQL 쿼리 실행을 위한 PreparedStatement 생성
          psmt = conn.prepareStatement(sql);
          // 체크박스로 선택된 판매처 이름 값들을 쿼리의 ? 자리에 대응시켜 설정
          for (int i = 0; i < m_name.length; i++) {
              psmt.setString(i + 1, m_name[i]);
          }
          psmt.setString(m_name.length + 1, "%" + m_addr + "%");

          rs = psmt.executeQuery();

          // 결과셋을 순회하며 데이터를 가져와 DTO 객체에 저장하고 리스트에 추가
          while (rs.next()) {
              String martName = rs.getString("M_NAME");
              String latitude = rs.getString("M_LATITUDE");
              String longitude = rs.getString("M_LONGITUDE");

              // DTO 객체 생성하여 데이터 저장
              MapDTO dto = new MapDTO(martName, latitude, longitude);
              // 리스트에 DTO 객체 추가
              list.add(dto);
          }
      } catch (SQLException e) {
          e.printStackTrace();
      } finally {
          close();
      }
      return list;
   }   
}
