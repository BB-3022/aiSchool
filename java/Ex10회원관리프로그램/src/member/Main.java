package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//DAO 클래스 안에있는 메소드를 사용하기 위해
		MemberDAO dao = new MemberDAO();
		
		Scanner sc = new Scanner(System.in);
		// CRUD -> 어떠한 프로그램이든 기본적으로 존재해야하는 기능들
		// Create Read Update Delete
		
		while(true) {
			System.out.print("1.회원가입 2.로그인 3.회원목록 4.회원정보수정 5.회원탈퇴 6.종료  >>"  );
			int menu = sc.nextInt();
		
			if(menu==1) {
				System.out.println("======회원가입======");
				// 아이디, 비밀번호, 닉네임
				System.out.print("아이디 입력 : ");
				String id = sc.next();
				System.out.print("비밀번호 : ");
				String pw = sc.next();
				System.out.print("닉네임 : ");
				String nick = sc.next();
				
				int cnt = dao.join(id, pw, nick);
				
				
				// 1.드라이버 설치(동적로딩)
				//Class.forName("oracle.jdbc.driver.OracleDriver"); 
				//오류 : Unhandled exception type ClassNotFoundException
				//오타가 있거나 파일이 존재하지 않을 때 클래스를 못찾는 예외사항이 발생한다.
				//해결방법 : try-catch
				// try에 예회사항이 발생할 만한 코드를 작성
				// catch 해당 예외사항이 발생하면 오류를 감지 및 포착
				
				
				if(cnt >0) {
					System.out.println("회원가입 성공!");
				}else {
					System.out.println("회원가입 실패...");
				}
				
			}else if(menu==2) {
				//로그인
				//사용자한테 아이디랑 비밀번호 입력받아서
				//테이블에 해당 데이터가 있는지 확인 후!
				//닉네임을 가져와서 "***님 로그인 성공하셨습니다.!" 출력
		
				System.out.print("아이디 >> ");
				String id = sc.next();
				System.out.print("비밀번호 >> ");
				String pw = sc.next();
				
				MemberVO info = dao.login(id,pw);
				
				if(info!=null) {
					System.out.println(info.getNick()+"로그인 성공!");
				}else {
					System.out.println("로그인 실패");
				}
				
				
			}else if(menu==3) {
				// 전체 회원의 정보가 보여지게 만들자
				// 아이디     비밀번호    닉네임
				// -----------------------
				//  a        b        c
				
				dao.select();
				
				
				
			}else if(menu==4) {
				// 회원정보 수정
				// 사용자로부터 아이디를 입력받아서 비밀번호 변경하기
				System.out.print("비밀번호를 바꾸고 싶은 아이디 입력 >> ");
				String id = sc.next();
				System.out.print("새 비밀 번호를 입력 >> ");
				String pw = sc.next();
	
				int cnt = dao.update(id,pw);
				
				
				if(cnt >0) {
					System.out.println("비밀번호가 변경 되었습니다");
				}else {
					System.out.println("변경 실패");
				}
		
			}else if(menu==5) {
				// 사용자한테 아이디랑 비밀번호를 입력받아서
				// 해당 아이디 비밀번호가 있으면, 테이블에서 저옵가 사라지게 만들자
				// 성공-> 회원탈퇴 완료!
				
				System.out.print("회원 탈퇴 아이디 >> ");
				String id = sc.next();
				System.out.print("회원 탈퇴 비밀번호 >> ");
				String pw = sc.next();
				
				int cnt = dao.delete(id, pw);
				

				if(cnt >0) {
					System.out.println("회원 탈퇴 완료!");
				}else {
					System.out.println("회원 탈퇴 실패");
				}
				
			}else if(menu==6) {
				System.out.println("프로그램을 종료합니다.");
				break;
			}else {
				System.out.println("정확한 숫자를 입력해주세요");
			}
		}
	}

}
