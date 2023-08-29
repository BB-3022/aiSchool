package com.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.member.MemberDAO;
import com.model.member.MemberDTO;




@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		String mb_id = info.getMb_id();
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.delete(info);
		
		if(cnt > 0) {
			response.sendRedirect("Main.jsp");
			System.out.println("탈퇴성공");
		}else {
			response.sendRedirect("mypage.jsp");
			System.out.println("탈퇴실패");
		}
		
	}

}
