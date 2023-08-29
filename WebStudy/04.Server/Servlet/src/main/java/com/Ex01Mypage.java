package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Hello World");
		
		// 응답객체(response)에 인코딩 적용 : 한글인식
		
		response.setCharacterEncoding("EUC-KR");
		
		// Web Page Text 및 Tag 를 사용하기 위해서는 out 객체 필요
		PrintWriter out = response.getWriter();
		
		// 페이지를 요청한 client 의 IP 획득
		String ip = request.getRemoteAddr();
		System.out.println(ip);
		
		
			out.print("<html>");
			out.print("<body>");
			
		if(ip.equals("192.168.0.103")) {
			out.print("<h1>지후야 들어왔니?!!!</h1>");
		}else if(ip.equals("192.168.0.59")) {
			out.print("<h1>병관선생님 들어왔어요?</h1>");
		}else {
			out.print("<h1>누구세요?</h1>");
		}
			out.print("<img src='img.jpg'>");
			out.print("</body>");
			out.print("</html>");
	}

}
