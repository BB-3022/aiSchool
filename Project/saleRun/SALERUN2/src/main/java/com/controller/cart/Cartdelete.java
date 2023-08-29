package com.controller.cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.model.cart.CartDAO;
import com.model.cart.CartDataDTO;
import com.model.member.MemberDTO;


@WebServlet("/Cartdelete")
public class Cartdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
//		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String crt_prd_number = request.getParameter("crt_prd_number");
		String crt_id = request.getParameter("crt_id");
		CartDAO dao = new CartDAO();
		CartDataDTO dto = new CartDataDTO(crt_prd_number,crt_id);
		dao.delete(dto);
		response.sendRedirect("Cart.jsp");
		
		
		
		
	}

}
