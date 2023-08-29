package com.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request 객체로 부터 Session 을 불러와야 한다.
		HttpSession session = request.getSession();
		
		//removeAttribute : 특정한 정보를 삭제
		//invalidate : 로그아웃과 같이 모든 정보를 삭제
		session.invalidate();
		
		response.sendRedirect("main.jsp");
		
		
	
		
		
		
	}

}
