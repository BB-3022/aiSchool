<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
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
		MemberDAO dao = new MemberDAO();
		
		//하나의 DTO는 한사람에 대한 정보가 들어가 있다.
		// 여러명의 정보가 필요하기 때문에 ArrayList 로 받아온다.
		ArrayList <MemberDTO> list = dao.select();
		
		//System.out.println("현재회원 수 : " + list.size());
		
	%>
	
	<Table border="1px">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>성별</th>
			<th>나이</th>
		</tr>
	
	<!-- 내가 가진 list 크기만큼 반복을 돌면서 회원의 정보를 출력 -->
	<%
		for(int i=0;i<list.size();i++){
			out.print("<tr>");
			out.print("<td>" + (i+1) + "</td>");
			out.print("<td>" + list.get(i).getId() + "</td>");
			out.print("<td>" + list.get(i).getNick() + "</td>");
			out.print("<td>" + list.get(i).getEmail() + "</td>");
			out.print("<td>" + list.get(i).getPhone() + "</td>");
			out.print("<td>" + list.get(i).getGender() + "</td>");
			out.print("<td>" + list.get(i).getAge() + "</td>");
			out.print("</tr>");
		}
	%>
	</Table>
</body>
</html>