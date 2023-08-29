package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/deleteService")
public class deleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//JDBC를 사용하는 기능 전부 DAO가 처리
		MemberDAO dao = new MemberDAO();
		
		MemberDTO dto = new MemberDTO(id, pw);
		
		//dto가 받아온, id 와 pw를 dao로 보낸다.
		// 
		int cnt = dao.delete(dto);
		
		if(cnt>0) {
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("delete.jsp");
		}
	
	}

}
