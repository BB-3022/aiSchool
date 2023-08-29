<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 유저가 선택한 상품들을 쿠키에 저장되도록 기능을 구현 
		- 넘겨받은 value 값을 쿠키의 name으로 사용-->
	<%
	// 상품의 name이 product의 value 값을 products에 배열로 저장한다.	
	String[] products = request.getParameterValues("product");
		
		for(int i=0;i<products.length;i++){
			// 하나의 상품만 선택할 경우,Cookie cookie = new Cookie("product", products[i]);
			// 상품의 name(key)이 product, value 값이 products[i] 값으로 저장된다.
			// 쿠키는 name이 중복 될 수 없다.
			// 만약 동일한 이름의 쿠키값이 저장 될 경우, 마지막에 저장된 값만 쿠키로 생성된다.
			// value 값을 쿠키의 name으로 사용할 경우, name을 중복 없이 저장할 수 있다.
			
			Cookie cookie = new Cookie(products[i], products[i]);
			response.addCookie(cookie);
			
		}
		
		response.sendRedirect("product_list.jsp");
		
	%>
</body>
</html>