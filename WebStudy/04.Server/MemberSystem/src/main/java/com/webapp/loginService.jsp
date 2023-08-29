<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
	ID, PW 두개의 정보를 받아와서 로그인
	로그인 성공한 사람의 닉네임 콘솔에 출력 --%>
	
	<%
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String nick = null;

	// 1.드라이버 동적연결
	// try-catch가 필요 없다.
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	// 2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	// 권한 가져오기
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	// 3.SQL문 실행
	String sql = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";

	// SQL 을 실행하고, 완성하는 객체 PreparedStatement는, 통로를 의미하는 Connection conn	 으로 부터 받아온다.	
	// 사용하고 싶은 문장을 conn 으로 보내서, sql을 사용 가능하다고 판단되면 PreparedStatement psmt를 반환한다.
	// java -> DB sql문을 전달하는 통로?
	PreparedStatement psmt = conn.prepareStatement(sql);	
	
	// psmt 를 받아왔으면 SQL의 ? 를 채워준다.
	psmt.setString(1, id);
	psmt.setString(2, pw);
			
	// ResultSet : SQL select 문을 실행시 돌아오는 테이블 형태를 담을 수 있는 객체
	// 커서는 항상 컬럼의 위치를 가리킨다.
	// 로그인 성공시, 테이블에 성공 데이터가 생성된다.
	// 로그인 성공시, ResultSet.next() 객체를 사용하여 커서가 이동하면 True를 반환
	// executeQuery와 executeUpdate 가 있다.
	// 테이블에 변화가 생기면 executeUpdate
	// SELECT 인 경우, executeQuery를 사용한다!!
	ResultSet rs = psmt.executeQuery();
	
	// rs.next() 
	//: 커서를 한칸씩 이동 시키면서 데이터가 있는지 없는지에 대한
	//: 값이 있다면 TRUE / 없다면 FALSE 를 반환	
		
	if(rs.next()) {
		// 로그인성공
		//.getString()에 3을 적거나 NICK를 적어도 된다.
		nick=rs.getString(3); 
	}

	// 4.연결종료
	if(rs != null){
		rs.close();
	}if(psmt != null){
		psmt.close();
	}if(conn != null){
		conn.close();
	}
	
	//로그인 성공시 -> loginSuccess.jsp 로 이동
	//로그인 실패시 -> login.jsp 로 이동
	
	if(nick != null){
		//로그인 성공
		//쿼리스트링 방식(get방식)으로 nick을 loginSuccess.jsp로 넘겨준다.
		//get 방식으로 보낼 때 ?뒤에 한글을 보내고 싶을 경우,URLEncoder사용
		nick = URLEncoder.encode(nick, "EUC-KR");
		//response.sendRedirect 자바의 return과 같다
		// return을 만나는 순간 메서드가 종료된다.
		response.sendRedirect("loginSuccess.jsp?nick="+nick);
	}else{
		//로그인 실패
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>