<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ��Ű�� ����� ��ǰ�� ����ϴ� ����� ���� 
		"product" -> "��ǰ" ��ȯ (replace()Ȱ�� -->
	
	<h1>��ٱ���</h1>
	
	<fieldset>
		<legend>��ǰ����Ʈ</legend>
		<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			out.print("<ul>");
			for(int i=0;i<cookies.length;i++){
				// contains �Լ� ���
				// ��Ű �̸��� "product"�� ���ԵǾ��ִ� ��Ű�� ���� ����Ѵ�.
				if(cookies[i].getName().contains("product")){
					out.print("<li>"+cookies[i].getValue().replace("product", "��ǰ")+"</li>");
				}
			}
		}out.print("</ul>");
		%>
	</fieldset>
	
	<p><a href="product_list.jsp">��Ӽ����ϱ�</a>
	<p><a href="product_deleteAll.jsp">����ǰ����</a>
</body>
</html>