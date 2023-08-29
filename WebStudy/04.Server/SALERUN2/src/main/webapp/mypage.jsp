<%@page import="com.model.cart.CartJoinDTO"%>
<%@page import="com.model.cart.CartDAO"%>
<%@page import="com.model.wishprd.WishProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.wishprd.WishProductDAO"%>
<%@page import="com.model.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* ... 기존 스타일 ... */
    
    #passwordMessage {
        font-size: 14px;
    }
        .form-label {
        font-size: 18px;
        color: #333;
        margin-bottom: 5px;
    }

    .form-control {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        font-size: 16px;
        width: 100%;
        margin-bottom: 15px;
    }

    /* 추가적인 스타일링을 위한 클래스 */
    .custom-input {
        background-color: #f5f5f5;
    }

    .custom-input:focus {
        background-color: #e8e8e8;
    }
    
</style>
</head>
<body>
   <% 
   MemberDTO info = (MemberDTO)session.getAttribute("info");
   WishProductDAO dao = new WishProductDAO();
   ArrayList<WishProductDTO> wp_list=dao.wpList(info.getMb_id());
	
   CartDAO dao1 = new CartDAO();
   ArrayList<CartJoinDTO> product_list=dao1.cartList(info.getMb_id());
   %>


<jsp:include page="navbar (1).jsp" flush="false"></jsp:include>

 <!-- mypage START -->
  <div class="container">
    <h3 class="text-center font-weight-light my-4">회원정보 수정</h3>
    <form action="EditService" method="post" id="editForm">
        <label class="form-label" for="mb_pw">비밀번호</label>
        <input type="password" class="form-control custom-input" name="mb_pw" id="mb_pw">
        <label class="form-label" for="mb_pw_confirm">비밀번호 확인</label>
        <input type="password" class="form-control custom-input" name="mb_pw_confirm" id="mb_pw_confirm">
        <p id="passwordMessage" class="mb-0"></p>

        <label class="form-label" for="mb_name">이름</label>
        <input type="text" class="form-control custom-input" name="mb_name">

        <label class="form-label" for="mb_tel">전화번호</label>
        <input type="text" class="form-control custom-input" name="mb_tel">

        <label class="form-label" for="mb_birth">생년월일</label>
        <input type="text" class="form-control custom-input" name="mb_birth">
         <br>
         <hr width="100%" color="#dee2e6" size="50">
         <br>
         <div class="card-body">
            <div class="css-mypagebutton">
               <button class="css-ufulao e4nu7ef3" type="submit" formaction="DeleteService">
                  <span class="btn css-nytqmg e4nu7ef1">탈퇴하기</span>
               </button>
               <button class="css-1qirdbn e4nu7ef3" type="submit" formaction="EditService">
                  <span class="css-nytqmg e4nu7ef1">회원정보수정</span>
               </button>
            </div>
            <div id="passwordMessage" class="mt-2"></div>
         </div>
      </form>         
         <!-- 관심상품 시작 -->
         <div class="WISHLIST" id="one">
            <div>
               <h3 class="text-center font-weight-light my-4">관심상품 목록</h3>
            </div>
            <div>
               <a class="deleteAll" href="WishprdAlldelete" style="margin-left: 85%">전체삭제</a>
            </div>
            <br>
            <div class="list-group">
               <table class="table table-bordered text-center mb-0">
                  <thead class="bg-secondary text-dark">
                     <tr>
                        <th class="align-middle" style="vertical-align: top;"><input type="checkbox"></th>
                        <th>Products</th>
                        <th>Price</th>
                        <th>Remove</th>
                     </tr>
                  </thead>
                  <%for(int i=0; i<wp_list.size(); i++ ) {%>
                  <tbody class="align-middle">
                     <tr>
                        <td class="align-middle" style="vertical-align: top;"><input type="checkbox"></td>
                        <td class="align-middle"><img src="<%=wp_list.get(i).getPrd_img_link()%>" alt="" style="width: 50px;"> <%=wp_list.get(i).getPrd_name() %></td>
                        <td class="align-middle"><%=wp_list.get(i).getPrd_dc_price() %>원</td>
                  <form action="Wishprddelete" method="post">
                     <input type="hidden" name="wp_number" value="<%=wp_list.get(i).getPrd_number()%>">
                      <input type="hidden" name="wp_id" value="<%=info.getMb_id()%>">       
                     <td class="align-middle"><button type="submit" class="btn btn-sm"><i class="fa fa-times"></i></button></td>
                  </form>                        
                     </tr>
                  </tbody>
                  <%} %>
               </table>
            </div>
         </div>

   </div>

   <!-- mypage END -->

 <script>
   //홈버튼 JavaScript 코드
     document.getElementById('home-button').addEventListener('click', function() {
       window.scrollTo(0, 0); // 맨 위로 스크롤
       // 또는 window.location.href = '홈페이지 주소'; // 실제 홈페이지로 이동
     });
    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js">
    </script>
    
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
   <script src="lib/easing/easing.min.js"></script>
   <script src="lib/owlcarousel/owl.carousel.min.js"></script>

   <!-- Contact Javascript File -->
   <script src="mail/jqBootstrapValidation.min.js"></script>
   <script src="mail/contact.js"></script>

   <!-- Template Javascript -->
   <script src="js/main.js"></script>

 <script>
    function confirmLogout() {
        var logoutConfirmed = confirm("로그아웃 하시겠습니까?");
        if (logoutConfirmed) {
            // '예'를 클릭한 경우, 로그아웃 처리를 위한 페이지로 이동
            window.location.href = "LogoutService";
        }
        // '아니오'를 클릭한 경우, 아무 동작 없음
    }
    
    </script>
      <script>
    $(document).ready(function () {
        // 메뉴 버튼 클릭 시 메뉴 및 페이지 콘텐츠에 'show' 클래스 토글
        $('.navbar-toggler').on('click', function () {
            $('.navbar-vertical').toggleClass('show');
            $('.page-content').toggleClass('show');
        });
    }); 
</script>

<script>
    var passwordInput = document.getElementById("mb_pw");
    var passwordConfirmInput = document.getElementById("mb_pw_confirm");
    var passwordMessage = document.getElementById("passwordMessage");

    passwordConfirmInput.addEventListener("input", validatePassword);

    function validatePassword() {
        var password = passwordInput.value;
        var confirmPassword = passwordConfirmInput.value;

        if (password === confirmPassword) {
            passwordMessage.style.color = "green";
            passwordMessage.textContent = "비밀번호가 일치합니다!";
        } else {
            passwordMessage.style.color = "red";
            passwordMessage.textContent = "비밀번호가 일치하지 않습니다!";
        }
    }
</script>

<script>
	// 회원탈퇴 버튼 클릭 시 알림 창 표시
	document.querySelector('.css-ufulao').addEventListener('click', function (event) {
    	event.preventDefault();
    	if (confirm('회원님의 정보가 모두 사라집니다. 탈퇴하시겠습니까?')) {
        document.getElementById('editForm').action = 'DeleteService';
        document.getElementById('editForm').submit();
    	}
	});


   // 회원정보 수정 버튼 클릭 시 알림 창 표시
   document.querySelector('.css-1qirdbn').addEventListener('click', function (event) {
      event.preventDefault();
      if (confirm('회원정보를 수정하시겠습니까?')) {
         document.getElementById('editForm').submit();
      }
   });

   // 탈퇴하기 버튼 클릭 시 알림 창 표시
  
</script>

</body>
</html>