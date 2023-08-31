package com.front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ICommand {
	
	//인터페이스 (추상메서드)
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
}