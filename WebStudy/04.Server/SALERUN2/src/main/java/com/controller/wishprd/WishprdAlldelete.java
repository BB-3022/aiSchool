package com.controller.wishprd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.model.member.MemberDTO;
import com.model.wishprd.WishProductDAO;
import com.model.wishprd.WishProductDTO;


@WebServlet("/WishprdAlldelete")
public class WishprdAlldelete extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      HttpSession session = request.getSession();
      MemberDTO info = (MemberDTO)session.getAttribute("info");
      WishProductDAO dao = new WishProductDAO();
      WishProductDTO dto = new WishProductDTO(info.getMb_id());
      int cnt = dao.wp_alldelete(dto);
      response.sendRedirect("mypage.jsp#one");
      
      if(cnt>0) {
         System.out.println("전체삭제성공");
      }
      else {
         System.out.println("전체삭제실패");
      }
   }

}