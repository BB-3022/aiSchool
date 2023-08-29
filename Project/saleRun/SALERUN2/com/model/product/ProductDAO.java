package com.model.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	//db 커넥션 연결 메소드 
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		    String db_url = "jdbc:oracle:thin:project-db-stu3.smhrd.com:1524:xe";
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
	
	//상품정보 식료품 카테고리별 목록보기
	
	
	//검색한 상품정보 표출하기 
	
	
}
