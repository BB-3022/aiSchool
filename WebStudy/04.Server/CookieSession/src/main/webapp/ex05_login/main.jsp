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
	String ID = (String)session.getAttribute("id");
	%>
	
	<%=ID%>�� ȯ���մϴ�.
	<a href="../LogoutService">�α׾ƿ�</a>

</body>
</html>