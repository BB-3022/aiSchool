package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/EditService")
public class EditService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_tel = request.getParameter("mb_tel");
		String mb_birth = request.getParameter("mb_birth");
		
		MemberDAO dao = new MemberDAO();
		
		MemberDTO changeInfo = new MemberDTO(info.getMb_id(), mb_pw, mb_name, mb_tel, mb_birth);
		
		int cnt = dao.update(changeInfo);
		
		if(cnt>0) {
			
			session.setAttribute("info", changeInfo);
			
			response.sendRedirect("update.jsp");
			
		}else {
			response.sendRedirect("update.jsp");
		}
	}
}
