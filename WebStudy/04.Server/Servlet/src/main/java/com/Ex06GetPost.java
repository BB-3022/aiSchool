package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06GetPost
 */
@WebServlet("/Ex06GetPost")
public class Ex06GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Get방식 메소드 호출");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Post방식 메소드 호출");
		// Post 방식의 인코딩
		// req 객체에서 데이터를 꺼내고 있다.
		// req 안에 인코딩을 해주면 된다.
		req.setCharacterEncoding("EUC-KR");

		// 포스트 방식의 데이터는 패킷 바디안에 form 양식으로 담겨서 전달
		String post = req.getParameter("post");
		System.out.println(post);
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	// service()는 get, post 방식 모두 처리 가능하다.
	// get, post 따로 처리하고 싶을 경우
	// do get, do post

//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//		String get = request.getParameter("get");
//		System.out.println(get);

//	}

}
