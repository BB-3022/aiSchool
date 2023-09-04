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
	EL�� ����
	- EL�� java�� ����� �ƹ� ������ ���� ������ �� �� �ִ� ���� �ƴ϶�
	Scope�� ����� ���� ������ ����� �� �ִ�.
	 
	Scope�����̶� page, request, session, application
	--%>

	<!-- session �� ����� id ��� �̸��� ���� ���������� ǥ���Ͻÿ� -->
	
	${id} �� ȯ���մϴ�! 
	
	<%--
	EL�� �پ��� ������
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
	EL ���� DTO, VO�� �������� ��� �����ñ�?
	 --%>
	
	<%
		MemberDTO dto = new MemberDTO("pbk","1234","ȣ��","����");
		pageContext.setAttribute("dto",dto);
	%>
	
	<!-- page ������ ����� dto�� ���̵� ���� ǥ������ ����Ͽ� ���������� ǥ���Ͻÿ� -->
	<!--���� ����� �� Object �������� ����Ǳ� ������  
	(MemberDTO)pageContext.getAttribute("dto");
	�ٿ�ĳ���� ���ָ鼭 �ҷ��´�.
	dto�̸����� �����߱� ������ dto �� �ҷ��´�
	-->
	<%
	MemberDTO info = (MemberDTO)pageContext.getAttribute("dto");
	%>
	
	<%= info.getId() %> <br>
	
	<!-- 
		EL�� ����Ͽ� dto �ȿ� �ִ� private �ʵ尪�� �������� ���ؼ���
		�ݵ�� getter �޼ҵ尡 �ʿ��ϴ� 
	 -->
	
	${dto.id} <br>
	${dto.pw} <br>
	${dto.nick} <br>
	${dto.addr} <br>
	
	<!-- ���� EL�� ���� ���� �������� ��� �ɱ�? -->
	
	${empty good} 
	${not empty good} 
	
	<!-- ���� ������ �̸��� ���� ���� ������ �� �ִٸ�
	EL������ ��� ���� �����ñ�? 
	
	EL���� ���� �������ڴ�
	����) ${name}�ϰ� �Ǵ� ���� EL�� pageContext �������� name�� ���� �ִ��� ã�� �ȴ�.
	
	ã�¼���
	page -> request -> session -> application
	
	EL ���� Ư�������� ���� ã���� �� �� name �տ� Ư������ Scope�� �ٿ� �ش�.
	-->
	
	<%
		pageContext.setAttribute("name","�ں���");
		request.setAttribute("name","ȣ�ξ�");
		session.setAttribute("name","���ؿ�");
		application.setAttribute("name","Ȳ�ص�");
	%>
	<!-- ���� ���� ������ pageContext ���� �ں��� ��� -->
	${name}
	${naem}
	
	
</body>
</html>