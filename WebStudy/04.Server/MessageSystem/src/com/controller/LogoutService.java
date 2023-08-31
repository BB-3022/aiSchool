package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.ICommand;

public class LogoutService implements ICommand{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request 객체로 부터 Session 을 불러와야 한다.
		HttpSession session = request.getSession();
		
		//removeAttribute : 특정한 정보를 삭제
		//invalidate : 로그아웃과 같이 모든 정보를 삭제
		session.invalidate();
		
		return "main.jsp";
		
	}

}
