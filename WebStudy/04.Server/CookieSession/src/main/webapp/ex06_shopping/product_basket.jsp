<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 쿠키에 저장된 상품을 출력하는 기능을 구현 
		"product" -> "상품" 변환 (replace()활용 -->
	
	<h1>장바구니</h1>
	
	<fieldset>
		<legend>상품리스트</legend>
		<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			out.print("<ul>");
			for(int i=0;i<cookies.length;i++){
				// contains 함수 사용
				// 쿠키 이름에 "product"가 포함되어있는 쿠키의 값만 출력한다.
				if(cookies[i].getName().contains("product")){
					out.print("<li>"+cookies[i].getValue().replace("product", "상품")+"</li>");
				}
			}
		}out.print("</ul>");
		%>
	</fieldset>
	
	<p><a href="product_list.jsp">계속쇼핑하기</a>
	<p><a href="product_deleteAll.jsp">모든상품삭제</a>
</body>
</html>