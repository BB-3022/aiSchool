<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<%
	//넘어온 데이터를 기준으로 JDBC 를 통해 테이블에 값 넣기(회원가입)
	//id, pw, nick, email, phone, gender, age
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	int age = Integer.parseInt(request.getParameter("age"));
	
	// JDBC 순서
	// 0.드라이버 파일 프로젝트에 넣기
	
	// 1.드라이버 동적연결
	// try-catch가 필요 없다.
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	// 2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	// 3.SQL문 실행
	String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
	//PSMT 가 필요하다
	// 사용하고 싶은 문장을 conn 으로 보내서, sql을 사용 가능하다고 판단되면 PreparedStatement psmt를 반환한다.
	PreparedStatement psmt = conn.prepareStatement(sql);	
	
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, nick);
	psmt.setString(4, email);
	psmt.setString(5, phone);
	psmt.setString(6, gender);
	psmt.setInt(7, age);
			
	// 실행 - 실행완료가 되었을 경우 psmt 에 1의 값이 생성된다?
	psmt.executeUpdate();
	
	// 4.연결종료
	if(psmt != null){
		psmt.close();
	}if(conn != null){
		conn.close();
	}
	// 문제
	// 회원가입 후 main 페이지로 돌아가는 기능을 완성하시오
	response.sendRedirect("main.jsp");
	
	
	// 값을 가져왔는지 확인
	//System.out.print(id);
	//System.out.print(pw);
	//System.out.print(nick);
	//System.out.print(email);
	//System.out.print(phone);
	//System.out.print(gender);
	//System.out.print(age);
	

	%>
</body>
</html>