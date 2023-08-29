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
	ID, PW �ΰ��� ������ �޾ƿͼ� �α���
	�α��� ������ ����� �г��� �ֿܼ� ��� --%>
	
	<%
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String nick = null;

	// 1.����̹� ��������
	// try-catch�� �ʿ� ����.
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	// 2.Ŀ�ؼ� ����
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";
	
	// ���� ��������
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	// 3.SQL�� ����
	String sql = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";

	// SQL �� �����ϰ�, �ϼ��ϴ� ��ü PreparedStatement��, ��θ� �ǹ��ϴ� Connection conn	 ���� ���� �޾ƿ´�.	
	// ����ϰ� ���� ������ conn ���� ������, sql�� ��� �����ϴٰ� �ǴܵǸ� PreparedStatement psmt�� ��ȯ�Ѵ�.
	// java -> DB sql���� �����ϴ� ���?
	PreparedStatement psmt = conn.prepareStatement(sql);	
	
	// psmt �� �޾ƿ����� SQL�� ? �� ä���ش�.
	psmt.setString(1, id);
	psmt.setString(2, pw);
			
	// ResultSet : SQL select ���� ����� ���ƿ��� ���̺� ���¸� ���� �� �ִ� ��ü
	// Ŀ���� �׻� �÷��� ��ġ�� ����Ų��.
	// �α��� ������, ���̺� ���� �����Ͱ� �����ȴ�.
	// �α��� ������, ResultSet.next() ��ü�� ����Ͽ� Ŀ���� �̵��ϸ� True�� ��ȯ
	// executeQuery�� executeUpdate �� �ִ�.
	// ���̺� ��ȭ�� ����� executeUpdate
	// SELECT �� ���, executeQuery�� ����Ѵ�!!
	ResultSet rs = psmt.executeQuery();
	
	// rs.next() 
	//: Ŀ���� ��ĭ�� �̵� ��Ű�鼭 �����Ͱ� �ִ��� �������� ����
	//: ���� �ִٸ� TRUE / ���ٸ� FALSE �� ��ȯ	
		
	if(rs.next()) {
		// �α��μ���
		//.getString()�� 3�� ���ų� NICK�� ��� �ȴ�.
		nick=rs.getString(3); 
	}

	// 4.��������
	if(rs != null){
		rs.close();
	}if(psmt != null){
		psmt.close();
	}if(conn != null){
		conn.close();
	}
	
	//�α��� ������ -> loginSuccess.jsp �� �̵�
	//�α��� ���н� -> login.jsp �� �̵�
	
	if(nick != null){
		//�α��� ����
		//������Ʈ�� ���(get���)���� nick�� loginSuccess.jsp�� �Ѱ��ش�.
		//get ������� ���� �� ?�ڿ� �ѱ��� ������ ���� ���,URLEncoder���
		nick = URLEncoder.encode(nick, "EUC-KR");
		//response.sendRedirect �ڹ��� return�� ����
		// return�� ������ ���� �޼��尡 ����ȴ�.
		response.sendRedirect("loginSuccess.jsp?nick="+nick);
	}else{
		//�α��� ����
		response.sendRedirect("login.jsp");
	}
	
	%>
</body>
</html>