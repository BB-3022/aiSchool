<%@page import="com.MemberDTO"%>
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
	session.setAttribute("id","hodddady");
	
	%>
		<%--
	EL의 조건
	- EL은 java의 저장된 아무 변수의 값을 꺼내서 쓸 수 있는 것이 아니라
	Scope에 저장된 값만 꺼내서 사용할 수 있다.
	 
	Scope영역이란 page, request, session, application
	--%>

	<!-- session 에 저장된 id 라는 이름의 값을 웹페이지에 표현하시오 -->
	
	${id} 님 환영합니다! 
	
	<%--
	EL의 다양한 연산자
	--%>
	
	<%
		pageContext.setAttribute("num",10);
		pageContext.setAttribute("isCheck",true);
	%>
	
	${num} <br>
	${num + 10} <br>
	${num *3} <br>
	${num / 2} <br>
	${num div 2} <br>
	${num % 2} <br>
	${num mod 2} <br>
	${num > 5 and num > 3} <br>
	${num > 5 or num > 3} <br>
	
	${isCheck} <br>
	${!isCheck} ${not isCheck} <br>
	${num > 3} ${num gt 3} <br>
	${num < 20} ${num lt 20} <br>  
	${num >= 3} ${num ge 3} <br> 
	${num <= 20} ${num le 3} <br> 
	
	${num == 10} ${num eq 10} <br>
	${num != 20} ${num} <br>
	
	<%--
	EL 에서 DTO, VO를 가져오면 어떻게 가져올까?
	 --%>
	
	<%
		MemberDTO dto = new MemberDTO("pbk","1234","호두","광주");
		pageContext.setAttribute("dto",dto);
	%>
	
	<!-- page 영역에 저장된 dto의 아이디 값을 표현식을 사용하여 웹페이지에 표현하시오 -->
	<!--값이 저장될 때 Object 형식으로 저장되기 때문에  
	(MemberDTO)pageContext.getAttribute("dto");
	다운캐스팅 해주면서 불러온다.
	dto이름으로 저장했기 때문에 dto 로 불러온다
	-->
	<%
	MemberDTO info = (MemberDTO)pageContext.getAttribute("dto");
	%>
	
	<%= info.getId() %> <br>
	
	<!-- 
		EL을 사용하여 dto 안에 있는 private 필드값을 가져오기 위해서는
		반드시 getter 메소드가 필요하다 
	 -->
	
	${dto.id} <br>
	${dto.pw} <br>
	${dto.nick} <br>
	${dto.addr} <br>
	
	<!-- 만약 EL로 없는 값을 가져오면 어떻게 될까? -->
	
	${empty good} 
	${not empty good} 
	
	<!-- 만약 동일한 이름의 값이 여러 영역에 들어가 있다면
	EL에서는 어떻게 값을 가져올까? 
	
	EL에서 값을 가져오겠다
	예시) ${name}하게 되는 순간 EL은 pageContext 영역부터 name의 값이 있는지 찾게 된다.
	
	찾는순서
	page -> request -> session -> application
	
	EL 에서 특정영역의 값을 찾고자 할 때 name 앞에 특정영역 Scope를 붙여 준다.
	-->
	
	<%
		pageContext.setAttribute("name","박병관");
		request.setAttribute("name","호두야");
		session.setAttribute("name","조준용");
		application.setAttribute("name","황해도");
	%>
	<!-- 가장 작은 영역인 pageContext 값인 박병관 출력 -->
	${name}
	${naem}
	
	
</body>
</html>