<%@page import="java.util.ArrayList"%>
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
		// ���ǿ������� ������ �������� ���
		// - Ư�� Ÿ�Կ� ������ ��� �ڷ����� ��ȯ����� �Ѵ�.(�ٿ�ĳ����)
		String name = (String)session.getAttribute("name");
	
		// �⺻������ Ÿ���� �����͸� ���ǿ����� �������� ��쿡��
		// ���� Ÿ������ ��ȯ����� �Ѵ�. 
		// ���� ������ null�� ���� ����ó���� �� �� �ִ�.
		// �⺻ ������ Ÿ���� ����Ÿ������ ��ȯ -> Wrapper Ŭ����
		
		// ������ : char -> Charater
		// ���� : byte -> Byte, short -> Short, int -> Interger, long -> Long
		// �Ǽ� : float -> Float, double -> Double
		// �� : boolean -> Boolean
		
		//int age = (int)session.getAttribute("age");
		
		Integer age = (Integer)session.getAttribute("age1");
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
	%>
	
	<h1>���ǿ� ����� ������ Ȯ��</h1>
	<%=name  %>
	<%=age  %>
	<%=session.getAttribute("age1")  %>
	<%=list!=null ? list.get(0) : null %>
	<%=list!=null ? list.get(1) : null %>
	
</body>
</html>