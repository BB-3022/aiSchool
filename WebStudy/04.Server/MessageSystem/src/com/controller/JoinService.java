package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class JoinService implements ICommand{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		MemberDTO dto = new MemberDTO(email, pw, phone, addr);

		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 성공!");
		}else {
			System.out.println("회원가입 실패!");
		}
		
		return "main.jsp" ;
		
		
	}
}
