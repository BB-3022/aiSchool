<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ������ ������ ��ǰ���� ��Ű�� ����ǵ��� ����� ���� 
		- �Ѱܹ��� value ���� ��Ű�� name���� ���-->
	<%
	// ��ǰ�� name�� product�� value ���� products�� �迭�� �����Ѵ�.	
	String[] products = request.getParameterValues("product");
		
		for(int i=0;i<products.length;i++){
			// �ϳ��� ��ǰ�� ������ ���,Cookie cookie = new Cookie("product", products[i]);
			// ��ǰ�� name(key)�� product, value ���� products[i] ������ ����ȴ�.
			// ��Ű�� name�� �ߺ� �� �� ����.
			// ���� ������ �̸��� ��Ű���� ���� �� ���, �������� ����� ���� ��Ű�� �����ȴ�.
			// value ���� ��Ű�� name���� ����� ���, name�� �ߺ� ���� ������ �� �ִ�.
			
			Cookie cookie = new Cookie(products[i], products[i]);
			response.addCookie(cookie);
			
		}
		
		response.sendRedirect("product_list.jsp");
		
	%>
</body>
</html>