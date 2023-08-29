package com.model.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.websocket.Session;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt=0;
	
	//클래스로 넘어오면서 예외처리를 해주어야 한다.
	// 1. 데이터 베이스 연결 메소드 getConnection()
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
		String db_id = "Insa4_Spring_hacksim_2";
		String db_pw = "aishcool2";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		// 오류가 발생하면 catch 구문에서 걸린다!
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
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
	
	// 3. 회원가입 메소드 join(MemberDTO member)
	public int join(MemberDTO member) {
		
		getConnection();
		int cnt = 0;
		
		try {
			String sql = "INSERT INTO MEMBER (MB_SNS, MB_TYPE, MB_ID, MB_PW, MB_NAME, MB_TEL, MB_BIRTH ) VALUES (null, null, ?, ?, ?, ?, ?)";
		    
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, member.getMb_id());
			psmt.setString(2, member.getMb_pw());
			psmt.setString(3, member.getMb_name());
			psmt.setString(4, member.getMb_tel());
			psmt.setString(5, member.getMb_birth());
			
			return cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	// 4. 로그인 메서드 login(String id, String pw)
	// - 회원정보가 있는 경우, nick을 반환
	// - 없으면 null을 반환
	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEMBER WHERE MB_ID=? AND MB_PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMb_id());
			psmt.setString(2, dto.getMb_pw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String mb_id = rs.getString("mb_id");
				String mb_pw = rs.getString("mb_pw");
				String mb_name = rs.getString("mb_name");
				String mb_tel = rs.getString("mb_tel");
				String mb_birth = rs.getString("mb_birth");
				
				info = new MemberDTO(mb_id, mb_pw, mb_name, mb_tel, mb_birth);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
		
	}
	
	// 5. 회원탈퇴 메서드 delete(MemberDTO dto)
	public int delete(MemberDTO dto) {
		// 아이디와 비밀번호가 일치하는 계정을 찾아서 삭세한 다음
		// 삭제 성공 -> 1 반환
		// 삭제 실패 -> 0 반환
		
		getConnection();
		
		//SQL 문장이 틀릴수도 있으니, try-catch로 예외처리가 필요하다.
		try {
			String sql = "DELETE FROM MEMBER WHERE MB_ID=? AND MB_PW=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMb_id());
			psmt.setString(2, dto.getMb_pw());
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally { 
			close();
		}
		return cnt;
	}

	
	// 6. 회원정보 수정 update(MemberDTO dto)
	public int update(MemberDTO dto) {
		getConnection();

		try {
			String sql = "UPDATE MEMBER SET MB_PW = ?, MB_NAME = ?, MB_TEL = ?, MB_BIRTH = ? WHERE MB_ID =? ";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getMb_pw());
			psmt.setString(2, dto.getMb_name());
			psmt.setString(3, dto.getMb_tel());
			psmt.setString(4, dto.getMb_birth());
			psmt.setString(5, dto.getMb_id());
					
			cnt=psmt.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally { 
			close();
		}	
		return cnt;
	}
	
	// 7.
//	public ArrayList<MemberDTO> select(){
//		
//		ArrayList<MemberDTO> list = new ArrayList<>();
//		
//		getConnection();
//		
//		try {
//			String sql = "SELECT * FROM MEMBER";
//			psmt = conn.prepareStatement(sql);
//			
//			rs = psmt.executeQuery();
//			
//			while(rs.next()){
//				String id = rs.getString("id");
//				String pw = rs.getString("pw");
//				String nick = rs.getString("nick");
//				String email = rs.getString("email");
//				String phone = rs.getString("phone");
//				String gender = rs.getString("gender");
//				int age = rs.getInt("age");
//				
//				MemberDTO dto = new MemberDTO(id, pw, nick, email, phone, gender, age);
//				list.add(dto);
//			}
//			
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}finally { 
//			close();
//		}		
//		
//		return list;
//	}
}
