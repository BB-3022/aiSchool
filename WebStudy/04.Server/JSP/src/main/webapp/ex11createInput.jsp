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
	<% int num = Integer.parseInt(request.getParameter("num")); %>
	
	<div>
		
		<fieldset>
			<legend>������÷ �ۼ�</legend>
			<form action="ex11randomResult.jsp" method="post">
				���� : <input type="text" name="title">
				<br>
				<%
				String food = "";
				for(int i=1; i<=num; i++){
				out.print("������"+i+" : "+"<input type='text' name='item'><br>");
				}
				%>
				<input type="submit">
			</form>
		</fieldset>
	</div>

</body>
</html>