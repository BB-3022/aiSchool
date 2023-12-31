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
	<%
	
	// 1.드라이버 동적연결
	// try-catch가 필요 없다.
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	// 2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	// 권한 가져오기
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	if(conn != null){
		System.out.println("DB 연결성공!");
	}else{
		System.out.println("DB 연결실패!");
	}
	// 3.SQL문 실행
	String sql = "SELECT ID,NICK,EMAIL,PHONE,GENDER,AGE FROM MEMBER";

	PreparedStatement psmt = conn.prepareStatement(sql);	
			
	ResultSet rs = psmt.executeQuery();
	
	out.print("<table border = '1'>");
	out.print("<tr><th>ID</th><th>NICK</th><th>EMIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
	
	while(rs.next()){
		
		String id = rs.getString(1);
		String nick = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String gender = rs.getString(5);
		int age = rs.getInt(6);
		
		//System.out.println(id + "/" + nick + "/" + email + "/" + phone + "/" + gender + "/" + age + "/");
		if(!id.equals("admin")){
			out.print("<tr>");
			out.print("<td>"+id+"</td>");
			out.print("<td>"+nick+"</td>");
			out.print("<td>"+email+"</td>");
			out.print("<td>"+phone+"</td>");
			out.print("<td>"+gender+"</td>");
			out.print("<td>"+age+"</td>");
			out.print("</tr>");
		}
	}//end while
	
	out.print("</table>");
	
	%>
</body>
</html>