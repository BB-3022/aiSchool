<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	div,h2,fieldset, input{
		margin : auto;
		text-align:center;
		margin-top : 10px;
	}
</style>
</head>
<body>
	<h2>랜덤당첨게임</h2>
		<fieldset>
			<legend>랜덤당첨결과</legend>
			<%
			request.setCharacterEncoding("EUC-KR");
			response.setCharacterEncoding("EUC-KR");
			
			String title = request.getParameter("title");
			String[] item = request.getParameterValues("item");
			Random rd = new Random();
			 %>
		      
		      <%= title %> <br>
		      <%= item[rd.nextInt(item.length)] %>

		
		</fieldset>

</body>
</html>