package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("EUC-KR");
		
		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_tel = request.getParameter("mb_tel");
		String mb_birth = request.getParameter("mb_birth");

		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(new MemberDTO(mb_id, mb_pw, mb_name, mb_tel, mb_birth));
		
		//회원가입 후 main.jsp로 이동하기
		//response.sendRedirect("main.jsp");
	
	}

}
