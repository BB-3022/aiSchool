package com.controllor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. email.pw, phone, addr 값을 콘솔(이클립스)에 출력
		
		request.setCharacterEncoding("EUC-KR");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		
		// 데이터가 넘어오는 것을 확인
		// System.out.println(email+"/"+pw+"/"+phone+"/"+addr);
		
		MemberDTO dto = new MemberDTO(email, pw, phone, addr);
		// toString()을 사용, main에서 로그인 기능 수행 시 dto의 정보를 출력하여 확인한다!
		//System.out.println(dto.toString());
		
		// DAO 클래스 안에 있는 기능을 사용하기 위해서 객체를 생성해야 한다.
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 성공!");
		}else {
			System.out.println("회원가입 실패!");
		}
		
		response.sendRedirect("main.jsp");
		
	}
}
