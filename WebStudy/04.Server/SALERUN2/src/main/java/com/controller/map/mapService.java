package com.controller.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.map.MapDAO;
import com.model.map.MapDTO;

@WebServlet("/mapService")
public class mapService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      request.setCharacterEncoding("EUC-KR");
      HttpSession session = request.getSession();

      // 사용자가 검색하는 값을 받아온다.
      String m_addr = request.getParameter("m_addr");

      // 선택된 체크박스의 값을 받아온다.
      String[] m_name = request.getParameterValues("m_name");

      // DAO에 체크박스와 검색 지역 값을 전달하여 데이터베이스 조회
      MapDAO dao = new MapDAO();
      ArrayList<MapDTO> place = dao.searchPlaces(m_addr, m_name);

      // 콘솔에 값 출력
      for (int i = 0; i < place.size(); i++) {
         System.out.println(place.get(i).getM_name());
         System.out.println(place.get(i).getM_latitude());
         System.out.println(place.get(i).getM_longitude());
      }

      if(place!=null) {
          // 세션에 조회 결과를 저장 
         session.setAttribute("place", place);
         response.sendRedirect("map.jsp");
      }


   }

}