package com.controller.wishprd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.wishprd.WishProductDAO;
import com.model.wishprd.WishProductDTO;

@WebServlet("/Wishprdaddition")
public class Wishprdaddition extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      String wp_id = request.getParameter("wp_id");
      String wp_number = request.getParameter("wp_number");
      String wp_idnum = request.getParameter("wp_idnum");
      WishProductDAO dao = new WishProductDAO();
      WishProductDTO dto = new WishProductDTO(wp_id,wp_number,wp_idnum);
      int cnt = dao.wp_addition(dto);
      response.sendRedirect("infoProduct.jsp");
      
      if(cnt>0) {
         System.out.println("성공");
      }
      else {
         System.out.println("실패");
      }
      
   }

}