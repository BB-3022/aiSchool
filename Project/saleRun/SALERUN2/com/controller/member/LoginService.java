package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();

		//사용자가 입력한 id, pw 를 가져오기
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
	
		MemberDTO dto = new MemberDTO(mb_id, mb_pw);
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO info = dao.login(dto);
	
		if(info != null){
	        session.setAttribute("info", info);
	        System.out.println("로그인성공");
	        response.sendRedirect("mypage.jsp");
		}else{
			response.sendRedirect("login.jsp");
			 System.out.println("로그인실패");
		}
		
		
	}

}
