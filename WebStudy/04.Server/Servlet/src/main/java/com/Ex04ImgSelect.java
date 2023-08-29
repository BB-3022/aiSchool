package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 클라이언트의 요청은 request에 들어가 있다.
		// 파라미터는 텍스트 형태로 넘어간다.
		// 웹 에서는 name = value 와 같은 파라미터 값으로 서블릿에 전달된다.
		// request의 파라미터 값을 가져온다.
		String select = request.getParameter("select");
		
		// select 가 제대로 넘어 왔는지 출력문을 통해 확인한다.
		// html 에서 실행 -> 웹 에서 입력 후 제출 -> 콘솔창에서 확인
		System.out.println(select);
		
		// 정수 헝태의 1,2,3 을 사용하고 싶으면, int sum = Integer.parseInt(select);
		
		// 응답 객체를 통해서 out 객체를 만들어 준다.
		// out 객체를 통해서 글자와 태그를 사용 할 수 있다.
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		String path = "";
		
		switch(select) {
		case "1":
			path = "IMG/img2.png";
			break;
		case "2":
			path = "IMG/img3.png";
			break;
		case "3":
			path = "IMG/img4.jpg";
			break;
		}
		out.print("<img scr='"+path+"'>");
		out.print("</body>");
		out.print("</html>");
	}

}
// 서블릿을 실행하면 HTML 문서를 만들어 낸다.
// webapp 바로 밑에서
