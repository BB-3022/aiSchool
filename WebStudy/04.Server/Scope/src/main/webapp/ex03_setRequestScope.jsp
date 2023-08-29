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
		//Request Scope
		// - 하나 이상의 JSP 페이지에서 정보를 유지시키는 영역
		// - forward 방식으로 이동할 때 정보를 유지시킬 수 있다.
		request.setAttribute("nickName", "스코프");
	
		// Redirect: 다음페이지로 이동하는 방법
		// - 페이지 이동(단순이동, 데이터베이스에 변화를 주는 이동 ex.로그인..?)
		// - 요청이 두 번 발생 하기 때문에 정보전달이 되지 않는다.
		// - 내부, 외부 페이지에 접근 할 수 있다.
		// - 정보 유지가 안된다.
		//response.sendRedirect("ex04_getRequestScope.jsp");
		
		//forward : 다음 페이지로 정보를 전달 할 때 사용하는 방법
		// - 페이지 이동(조회된 정보를 유지할 때)
		// - 요청은 한 번만 발생
		// - 내부 페이지만 접근 가능하다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_getRequestScope.jsp");
		dispatcher.forward(request, response);
	%>
	<h1> Request 영역 </h1>
	<%=request.getAttribute("nickName") %>
</body>
</html>