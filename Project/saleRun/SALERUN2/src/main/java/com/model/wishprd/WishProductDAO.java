package com.model.wishprd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.cart.CartDataDTO;
import com.model.wishprd.WishProductDTO;

public class WishProductDAO {

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

	// 관심상품 조인 메소드
	public ArrayList<WishProductDTO> wpList(String id) {
		
		ArrayList<WishProductDTO> WP_list = new ArrayList<>();
		getConnection();
		
		
		try {
			String sql = "SELECT PRD_NUMBER , PRD_NAME , PRD_IMG_LINK , PRD_DC_PRICE , WP_ID FROM PRODUCT LEFT JOIN WISH_PRD ON PRD_NUMBER=WP_NUMBER WHERE WP_ID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {

				String prd_number = rs.getString(1);								
				String prd_name = rs.getString(2);		
				String prd_img_link = rs.getString(3);
				int prd_dc_price = rs.getInt(4);
				String wp_id = rs.getString(5);
			
				WishProductDTO wplist_dto = new WishProductDTO(prd_number ,prd_name, prd_img_link , prd_dc_price , wp_id);
				WP_list.add(wplist_dto);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return WP_list;
	}
	
	// 관심상품 삭제 메소드
	public void wp_delete(WishProductDTO dto) {
		
		getConnection();
		
		
		try {
			String sql = "DELETE FROM WISH_PRD WHERE WP_NUMBER = ? AND WP_ID = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getWp_number());
			psmt.setString(2, dto.getWp_id());
			psmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		
	}
	
	   // 관심상품 전체삭제 메소드
	   public int wp_alldelete(WishProductDTO dto) {
	      getConnection();
	      
	      try {
	         String sql = "DELETE FROM WISH_PRD WHERE WP_ID = ?";
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, dto.getWp_id());
	         cnt = psmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      return cnt ;
	   }
	   
	   // 관심상품 테이블에 데이터 추가하기 메소드
	   public int wp_addition(WishProductDTO dto) {
	       
	      getConnection();
	      
	      
	      try {
	         String sql = "INSERT INTO WISH_PRD(WP_ID , WP_NUMBER , WP_IDNUM) VALUES(?,?,?)";
	         psmt = conn.prepareStatement(sql);

	         psmt.setString(1, dto.getWp_id());
	         psmt.setString(2, dto.getWp_number());
	         psmt.setString(3, dto.getWp_idnum());
	         cnt = psmt.executeUpdate();
	         
	       } catch (SQLException e) {
	           e.printStackTrace();
	       } finally {
	           close();
	       }
	      
	      return cnt;
	   }
}
