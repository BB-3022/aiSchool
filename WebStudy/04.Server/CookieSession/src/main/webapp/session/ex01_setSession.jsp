<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.catalina.Session"%>
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
		//����(Session)
		// - ������� ������ ���������ִ� ���
		// - ����PC�� ����
		// - �پ��� �ڷ��� �����͸� ���� -> Object ��ü�� ��ȯ�Ǿ� ���� (��ĳ����)
		// - ������ ���� ��, ������ �뷮 ������ ����(���� �뷮�� ���� �޶��� �� �ִ�.)
		// - �� �������� �������� �ʴ´�.
		// * ���ǿ� �����͸� ���к��ϰ� �����ϸ� �ȵȴ�.
		//   ���簡 ���񽺸� �̿��ϴµ� �ʿ��� �������� �����ؾ� �Ѵ�!
		
		// ���ǿ����� �����͸� �����ϴ� ���
		// ���尴ü
		// - setAttribute(name,value)
		// - name �� ���ڿ�
		// - value �� �⺻�ڷ���, ������ ��� ���� ����
		
		session.setAttribute("name", "Justin");
		session.setAttribute("age", 25);
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("cookie");
		list.add("session");
		
		session.setAttribute("list",list);
	%>
	
	<h1>���ǿ����� ������ ���� �Ϸ�</h1>


</body>
</html>