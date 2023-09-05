<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- c �±� �����ڸ� ���ؼ� JSTL�� ����ϰڴ�! -->
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
		idol.add("����ȩ");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		idol.add("����");
		
		pageContext.setAttribute("idol", idol);
		
	%>
	
	<c:forEach items="${idol}" var="name">
	${name}
	</c:forEach>
	<br>
	
	<%
		MemberDTO dto1 = new MemberDTO("AAA","1111","�Ϲ�","����");
		MemberDTO dto2 = new MemberDTO("EEE","5555","����","����");
		MemberDTO dto3 = new MemberDTO("BBB","2222","�̹�","��õ");
		MemberDTO dto4 = new MemberDTO("CCC","3333","���","�λ�");
		MemberDTO dto5 = new MemberDTO("DDD","4444","���","����");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		
		//pageContext(������) ������ ����
		pageContext.setAttribute("list",list);
	%>
	
	<table border="1px">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<!-- ���� �Ʒ��� JSTL�� ���ؼ� list �ȿ� �ִ� ȸ���� ������ ��� -->
		<!-- list�� ���� �ϳ��� dto �� ����. -->
		<!-- varStatus="i" index�� ����ϸ� 0���� ���´�.-->
		
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