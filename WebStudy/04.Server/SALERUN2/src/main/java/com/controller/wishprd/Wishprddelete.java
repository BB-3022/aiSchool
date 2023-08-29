package com.controller.wishprd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.cart.CartDAO;
import com.model.cart.CartDataDTO;
import com.model.wishprd.WishProductDAO;
import com.model.wishprd.WishProductDTO;


@WebServlet("/Wishprddelete")
public class Wishprddelete extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String wp_number = request.getParameter("wp_number");
		String wp_id = request.getParameter("wp_id");
		WishProductDAO dao = new WishProductDAO();
		WishProductDTO dto = new WishProductDTO(wp_number,wp_id);
		dao.wp_delete(dto);
		response.sendRedirect("mypage.jsp");
		
		
		
		
	}
	

}
