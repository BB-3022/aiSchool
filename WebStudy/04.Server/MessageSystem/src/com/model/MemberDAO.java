package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	//클래스로 넘어오면서 예외처리를 해주어야 한다.
	// 1. 데이터 베이스 연결 메소드 getConnection()
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		// 오류가 발생하면 catch 구문에서 걸린다!
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체그하세요!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}
	}
	
	// 2. 데이터 베이스 종료 메소드 close()
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null){
				psmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//3. 회원가입 메소드 join()
	public int join(MemberDTO dto) {
		getConnection();
		
		int cnt=0;
		
		try {
			String sql = "INSERT INTO MSGMEMBER VALUES(?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getAddr());
			
			cnt=psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	//3. 로그인 성공
	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MSGMEMBER WHERE EMAIL=? AND PW=?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				
				String email = rs.getString("email");
				String pw = rs.getString("pw");
				String phone = rs.getString("phone");
				String addr = rs.getString("addr");
				
				info = new MemberDTO(email, pw, phone, addr);
			}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}	
		return info;	
	}

	public int update(MemberDTO changeInfo) {
		getConnection();
		
		int cnt = 0;
		
		try {
			String sql = "UPDATE MSGMEMBER SET PW=?, PHONE=?, ADDR=? WHERE EMAIL=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, changeInfo.getPw());
			psmt.setString(2, changeInfo.getPhone());
			psmt.setString(3, changeInfo.getAddr());
			psmt.setString(4, changeInfo.getEmail());
			
			cnt= psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	//4. 
	
	
}
