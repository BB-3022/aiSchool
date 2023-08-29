package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	//데이터 베이스에 연결하고 사용하는 것을 담당하는 클래스
	//DAO 클래스가 모든 JDBC 기능을 수행한다.
	public int join(String id, String pw, String nick) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		//0.드라이버 파일을 프로젝트 안에 넣어주기!
		try {
			// 1. 드라이버 설치(동적로딩)
			// 동적로딩 인 이유, 컴파일러는 아래의 코드를 만나기 전까지 어떠한 DBMS에 드라이버를 사용하는지 모르고
			// 아래의 코드를 만나는 순간 해당 드라이버를 찾아서 설치 한다.
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2.커넥션 열기
			// - DB가 존재하는 url, 아이디, 비밀번호
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			
			conn =  DriverManager.getConnection(db_url,db_id,db_pw);
		
			if(conn != null) {
				System.out.println("DB연결 성공!");
			}else {
				System.out.println("DB연결 실패!");
			}
			// 3. SQL문 실행
			// SQL 문을 실행하기 위해서는 조건이 있따.
			// 1) SQL 문장이 이상없는지 검토를 받아야 한다.
			String sql = "INSERT INTO MEMBER VALUES(?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			//psmt 객체가 SQL문을 완성하고 실행 할 수 있는 객체이다.
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);
			// executeUpdate(): SQL 문장을 실행하는 메소드
			// 실행한 문장의 개수를 int 형태로 반환 
			cnt = psmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			// try 잘 실행되거나
			// 중간에 catch로 넘어간다고 하더라도
			// finally에는 마지막에 반드시 넘어오게 되어 있다.
			// 4.연결끊기
			// - 연견을 끊을 때는 역순으로 끊어준다.
			try {
				if(psmt != null)
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return cnt;
	}

	public int delete(String id, String pw) {
		
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		// 1. 데이터베이스 연결
		try {
			// 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//준비물 3개
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			
			conn =  DriverManager.getConnection(db_url,db_id,db_pw);
		
			if(conn != null) {
				System.out.println("DB연결 성공!");
			}else {
				System.out.println("DB연결 실패!");
			}
		
			String sql = "DELETE FROM MEMBER WHERE ID = ? ";
			psmt = conn.prepareStatement(sql);
			
		
			psmt.setString(1, id);
		

			cnt = psmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
	
			try {
				if(psmt != null)
				psmt.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		return cnt;
	}
	

	public int update(String id, String pw) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		// 1. 데이터베이스 연결
		try {
			// 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//준비물 3개
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			
			conn =  DriverManager.getConnection(db_url,db_id,db_pw);
		
			if(conn != null) {
				System.out.println("DB연결 성공!");
			}else {
				System.out.println("DB연결 실패!");
			}
		
			String sql = "UPDATE MEMBER SET PW = ? WHERE ID = ? ";
			psmt = conn.prepareStatement(sql);
			
		
			psmt.setString(2, id);
			psmt.setString(1, pw);

			cnt = psmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
	
			try {
				if(psmt != null)
				psmt.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
		}
		return cnt;
	}
	

	public MemberVO login(String id, String pw) {
		MemberVO info = null;
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		//1. 데이터베이스 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// DB가 존재하는 url, 아이디, 비밀번호
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			// 권한 가져오기
			conn = DriverManager.getConnection(db_url,db_id, db_pw);
			
			//select
			String sql = "select * from MEMBER where ID = ? and PW = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			// ResultSet : sql select 문을 실행시 돌아오는 테이블 형태를 담을 수 있는 객체
			
			rs = psmt.executeQuery();
			// rs.next() 
			//: 커서를 한칸씩 이동 시키면서 데이터가 있는지 없는지에 대한
			//: 값이 있다면 TRUE / 없다면 FALSE 를 반환
			
			if(rs.next()) {
				//로그인 성공
				String login_id = rs.getString(1); // 1 대신 "ID" 써도 된다.
				String login_pw = rs.getString(2); // "PW"
				String login_nick = rs.getString(3); // "NICK"
				
				info = new MemberVO(login_id, login_pw, login_nick);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			// 역순으로 자원을 반납
			// PreparedStatement
			try {
				if(rs != null);
				rs.close();
				if(psmt != null)
					psmt.close();
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return info;
		}

	public void select() {
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// DB가 존재하는 url, 아이디, 비밀번호
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "shopping";
			String db_pw = "12345";
			// 권한 가져오기
			conn = DriverManager.getConnection(db_url,db_id, db_pw);
			
			//select
			String sql = "select * from member";
			psmt = conn.prepareStatement(sql);
			
			// ResultSet : sql select 문을 실행시 돌아오는 테이블 형태를 담을 수 있는 객체
			
			rs = psmt.executeQuery();
			// rs.next() : 커서를 한칸씩 이동 시키면서 데이터가 있는지 없는지에 대한
			// 결과값을 T/F 로 받아오는 메서드
			
			System.out.println("아이디\t비밀번호\t닉네임\t");
			System.out.println("---------------------");
			
			while(rs.next()) {
				String id = rs.getString(1);
				String pw= rs.getString(2);
				String nick = rs.getString(3);
			
				System.out.println(id + "\t" + pw + "\t" + nick);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			// 역순으로 자원을 반납
			// PreparedStatement
			try {
				if(rs != null);
				rs.close();
				if(psmt != null)
					psmt.close();
				if(conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	
	
	
	
	
	
}
