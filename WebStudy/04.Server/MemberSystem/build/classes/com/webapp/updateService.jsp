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
		// 7���� �ʿ� ���� ���� �����´�.
		// id�� pw�� ��ġ�ϴ� ������ ã��
		// �Է��� nick, email, phone, gender, age�� �����Ͻÿ�.
		// ���� ������ -> main.jsp �̵�
		// ���� ���н� -> update.jsp �̵�
		
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	int age = Integer.parseInt(request.getParameter("age"));
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);

	String sql = "UPDATE MEMBER SET NICK = ?, EMAIL = ?, PHONE = ?, GENDER = ?, AGE = ? WHERE ID =? and PW =?";
	
	PreparedStatement psmt = conn.prepareStatement(sql);	
	
	psmt.setString(1, nick);
	psmt.setString(2, email);
	psmt.setString(3, phone);
	psmt.setString(4, gender);
	psmt.setInt(5, age);
	psmt.setString(6, id);
	psmt.setString(7, pw);
			
	int cnt=0;
	cnt=psmt.executeUpdate();
	
	
	if(psmt != null){
		psmt.close();
	}if(conn != null){
		conn.close();
	}

	if(cnt > 0){
		response.sendRedirect("main.jsp");
	}else{
		
		response.sendRedirect("update.jsp");
	}
	%>
</body>
</html>