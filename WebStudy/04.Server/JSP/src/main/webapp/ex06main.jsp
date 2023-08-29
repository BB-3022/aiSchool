<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="ex06error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
	// 에러가 발생했을 때만 error.jsp 를 보여준다. 
	
	String name = "박병관";
	int age = 20;
	int error = 15/0;
	String PhoneNumber = "010-4611-5278";
	String info = "040101-1111111";
	%>
	
</body>
</html>