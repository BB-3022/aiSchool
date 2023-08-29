package com.model.Detailpage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DetailpageDAO {
	
	
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

	// 낮은 가격순 메소드
	public ArrayList<DetailpageDTO> lowprice() {
		
		ArrayList<DetailpageDTO> lowprice_list = new ArrayList<>();
		
		getConnection();
		
		
		try {
			String sql = "SELECT prd_slr_sortation,prd_name,prd_img_link,prd_price,prd_dc_price,prd_link FROM PRODUCT ORDER BY PRD_DC_PRICE";
			psmt = conn.prepareStatement(sql);

			
			rs = psmt.executeQuery();
			
			while(rs.next()) {


				String prd_slr_sortation = rs.getString(1);
				String prd_name = rs.getString(2);
				String prd_img_link = rs.getString(3);
				int prd_price = rs.getInt(4);				
				int prd_dc_price = rs.getInt(5);		
				String prd_link = rs.getString(6);
				
				DetailpageDTO low_dto = new DetailpageDTO(prd_slr_sortation ,prd_name ,prd_img_link ,prd_price ,prd_dc_price ,prd_link);			
				lowprice_list.add(low_dto);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return lowprice_list;
		
	}

	// 높은 가격순 메소드
	public ArrayList<DetailpageDTO> highprice() {
		
		ArrayList<DetailpageDTO> highprice_list = new ArrayList<>();
		
		getConnection();
		
		
		try {
			String sql = "SELECT prd_slr_sortation,prd_name,prd_img_link,prd_price,prd_dc_price,prd_link FROM PRODUCT ORDER BY PRD_DC_PRICE DESC";
			psmt = conn.prepareStatement(sql);

			
			rs = psmt.executeQuery();
			
			while(rs.next()) {


				String prd_slr_sortation = rs.getString(1);
				String prd_name = rs.getString(2);
				String prd_img_link = rs.getString(3);
				int prd_price = rs.getInt(4);				
				int prd_dc_price = rs.getInt(5);		
				String prd_link = rs.getString(6);
				
				DetailpageDTO low_dto = new DetailpageDTO(prd_slr_sortation ,prd_name ,prd_img_link ,prd_price ,prd_dc_price ,prd_link);			
				highprice_list.add(low_dto);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return highprice_list;
		
	}

	
	
}
