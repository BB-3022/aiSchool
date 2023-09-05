<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- c 태그 지시자를 통해서 JSTL을 사용하겠다! -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("제이홉");
		idol.add("지수");
		idol.add("제니");
		idol.add("로제");
		idol.add("리사");
		
		pageContext.setAttribute("idol", idol);
		
	%>
	
	<c:forEach items="${idol}" var="name">
	${name}
	</c:forEach>
	<br>
	
	<%
		MemberDTO dto1 = new MemberDTO("AAA","1111","일번","광주");
		MemberDTO dto2 = new MemberDTO("EEE","5555","오번","전주");
		MemberDTO dto3 = new MemberDTO("BBB","2222","이번","인천");
		MemberDTO dto4 = new MemberDTO("CCC","3333","삼번","부산");
		MemberDTO dto5 = new MemberDTO("DDD","4444","사번","서울");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		
		//pageContext(스코프) 영역에 저장
		pageContext.setAttribute("list",list);
	%>
	
	<table border="1px">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>닉네임</td>
			<td>주소</td>
		</tr>
		<!-- 여기 아래에 JSTL을 통해서 list 안에 있는 회원의 정보를 출력 -->
		<!-- list의 값이 하나씩 dto 에 담긴다. -->
		<!-- varStatus="i" index를 사용하면 0부터 나온다.-->
		
		<c:forEach varStatus="i" items="${list}" var="dto" >
			<tr>
		 		<td>${i.count}</td> 
				<td>${dto.id}</td>
				<td>${dto.pw}</td>
				<td>${dto.nick}</td>
				<td>${dto.addr}</td>
			</tr>
		</c:forEach>	 
	</table>
	
	
	
	
	
	
	
</body>
</html>