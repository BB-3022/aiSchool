package com.controller.cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.cart.CartDAO;
import com.model.cart.CartDataDTO;

/**
 * Servlet implementation class Cartaddition
 */
@WebServlet("/Cartaddition")
public class Cartaddition extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	      int crt_number = Integer.parseInt(request.getParameter("crt_number"));
	      int crt_prd_quantity = Integer.parseInt(request.getParameter("crt_prd_quantity"));
	      String crt_prd_number = request.getParameter("crt_prd_number");
	      String crt_id = request.getParameter("crt_id");
	      
	      CartDAO dao = new CartDAO();
	      CartDataDTO dto = new CartDataDTO(crt_number,crt_prd_quantity,crt_prd_number,crt_id);
	      int cnt = dao.prd_addition(dto);
	      response.sendRedirect("Cart.jsp");
	      
	      if(cnt>0) {
	         System.out.println("성공");
	      }
	      else {
	         System.out.println("실패");
	      }
	
	
	
	
	
	
	
	
	
	}

	
	
	
	
	
}
