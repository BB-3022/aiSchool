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
		선언문
		 - JSP 안에서 필드(전역변수) 또는 메소드를 만들고 싶을 때 사용
	 --%>
	 
	 <%!
	 	// 선언문
	 	// JSP 에서 변수나 메소드를 정의하기 위해서 사용
	 	public String name = "박병관";
	 	public int plus(int num1, int num2){
	 		return num1 + num2;
	 	}
	 
	 %>
	 <%
	 	// 스크립트릿 
	 	// 안에 작성된 코드는 서블릿 코드로 변환되었을 때,서비스 메소드 내부로 들어간다.
	 	// 지역변수, 접근제한자를 사용 할 수 없다.
	 	String name2 = "조준용";
	 %>
	 
	 <%=plus(30,40) %>
</body>
</html>