package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.ICommand;
import com.model.MessageDAO;
import com.model.MessageDTO;

public class MsgSendService implements ICommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String send_name = request.getParameter("send_name");
		String receive_email = request.getParameter("receive_email");
		String content = request.getParameter("content");
		
		MessageDTO dto = new MessageDTO(send_name, receive_email, content);
					
		MessageDAO dao = new MessageDAO();
		dao.insert(dto);
		
		// #two 메세지를 작성했던 위치로 돌아가?
		return "main.jsp#two";
		
	}
	
	
		

		

}
