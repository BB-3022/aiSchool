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

	<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	String sql = "DELETE FROM MEMBER WHERE ID=? AND PW=?";

	PreparedStatement psmt = conn.prepareStatement(sql);	
	
	psmt.setString(1, id);
	psmt.setString(2, pw);
	
	// executeUpdate ������ ������ ������ ��ȯ�Ѵ�.
	int cnt=0;
	cnt = psmt.executeUpdate();
	
	if(psmt != null){
		psmt.close();
	}if(conn != null){
		conn.close();
	}
	
	if(cnt > 0){
		//ȸ��Ż�� ����
		out.print("<script>");
		out.print("alert('ȸ��Ż�� ����!')");
		out.print("location.href='main.jsp'");
		out.print("</script>");
		
		//response.sendRedirect("main.jsp");
	}else{
		//ȸ��Ż�� ����
		response.sendRedirect("delete.jsp");
	}
	
	
	%>
</body>
</html>