<%@page import="com.model.wishprd.WishProductDTO"%>
<%@page import="com.model.wishprd.WishProductDAO"%>
<%@page import="com.model.cart.CartJoinDTO"%>
<%@page import="com.model.member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cart.CartDTO"%>
<%@page import="com.model.cart.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>EShopper - Bootstrap Shop Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<style>
.ol-lg-3 col-6 text-right {
   text-align: right;
}
.quick-menu {
   position: fixed;
   top: 50%;
   right: 20px;
   transform: translateY(-50%);
   background-color: #f0f0f0;
   padding: 20px;
   border-radius: 10px;
   box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
   margin-right: 20px;
   margin-top: 30px;
   transition: top 0.3s ease;
    z-index: 999;
}

.quick-images {
   display: flex;
   flex-direction: column;
   gap: 10px;
}

.quick-image img {
   width: 50px;
   height: 50px;
   object-fit: cover;
   border-radius: 5px;
}
</style>

</head>

<body>

    <% 
      // String prd_number = request.getParameter("prd_number"); 상품번호 받아오기

      MemberDTO info = (MemberDTO)session.getAttribute("info");
      CartDAO dao = new CartDAO();
      ArrayList<CartJoinDTO> product_list=dao.cartList(info.getMb_id());
		
      WishProductDAO dao1 = new WishProductDAO();
      ArrayList<WishProductDTO> wp_list=dao1.wpList(info.getMb_id());

/*       CartJoinDTO cartDto = new CartJoinDTO();
      cartDto.setCrt_id(info.getMb_id()); */
      
      // product_list 에 값이 안담긴다. -> 이것만 해결하면 된다.
      
      //CartDTO dto = new CartDTO();
      // 세션 겟 어트리뷰트안에는 상세페이지에서 정해진 값이 들어간다. info는 로그인한 아이디
      //ArrayList<CartDTO> product_list = (ArrayList<CartDTO>)(session.getAttribute("info"));
      // DAO에 조건식에필요한 컬럼이들어있는 조인함수 CART_LIST메소드 만들기
      // ArrayList<CartDTO> product_list=dao.cartList(session.getAttribute("info"));
      // product_list가 null이면 arrayList 다시 생성
  /*       if (product_list.size()==0) {
           product_list = new ArrayList<CartJoinDTO>();
        }  */

  
  
        // 판매가 구하기  반응식 쓰면 될듯
/*       int sum = 0;
        for(int i = 0; i<product_list.size(); i++){
           sum += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
        } */
  
   %>
   
   <jsp:include page="navbar (1).jsp" flush="false"></jsp:include>
   
  <div class="quick-menu">
   <div class="quick-images">
   <i class="fas fa-shopping-cart" style="color: #faa15c; margin-left: 15px;"></i>
      <% for(int i = 0; i < product_list.size(); i++) { %>
         <div class="quick-image">
             <a href="infoProduct.jsp?prd_number=<%= product_list.get(i).getPrd_number() %>">
               <img src="<%= product_list.get(i).getPrd_img_link() %>" alt="">
            </a>
         </div>
      <% } %>
   </div>
</div>



   <!-- Cart Start -->
   <div class="container-fluid pt-5" style="margin-top: -60px;">
      <div class="table-caption" style="margin-left: 50px; font-size: 20px; font-weight: bold;">
            <span>장바구니</span>
      </div>
      <div class="row px-xl-5">
         <div class="col-lg-8 table-responsive mb-5">
            
            <table class="table table-bordered text-center mb-0">
               <thead class="bg-secondary text-dark">
                  <tr>
                     <th colspan="2">상품</th>
                     <th>가격</th>
                     <th>수량</th>
                     <th>금액</th>
                     <th>제거</th>
                  </tr>
               </thead>
               
               <!-- 한 품목 시작 -->

               <% for(int i = 0 ; i<product_list.size(); i++) {%>
               <tbody class="align-middle">
                  <tr>
                     <td class="align-middle" style="vertical-align: top; text-align: right;"><input type="checkbox"></td>
                     <td class="align-middle"><img src="<%=product_list.get(i).getPrd_img_link()%>" alt="" style="width: 50px;"><%=product_list.get(i).getPrd_name()%></td>
                     <td class="align-middle"><%=product_list.get(i).getPrd_dc_price()%></td>
                     <td class="align-middle"><%=product_list.get(i).getCrt_prd_quantity()%>
                      
                   
                         
                     </td>
                     <td class="align-middle"><%=product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity()%></td>
                     <form action="Cartdelete" method="post">
                     <td class="align-middle">
                   <input type="hidden" name="crt_prd_number" value="<%=product_list.get(i).getPrd_number()%>">
                   <input type="hidden" name="crt_id" value="<%=info.getMb_id()%>">       
                        <button id="delete" style="background-color: #f7b78e;" class="btn btn-sm" type="submit">
                           <i class="fa fa-times"></i>
                        </button></td>
                     </form> 
                  </tr>
               </tbody>
            <% } %>
            <!-- 한 품목 끝이자 판매가 시작 -->
            </table>
         </div>
         
         <!-- 판매처 정보 표시  -->
         <div class="col-lg-3" style="margin-top: -7px;">
            <!-- GS25 -->
            <% 
            int GS25_dc_total = 0;
            int GS25_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("GS25")){                  
                  GS25_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  GS25_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(GS25_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">GS25</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=GS25_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=GS25_dc_total%>원</h6>
                  </div>
                    <a href="BenefitGS25.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://gs25.gsretail.com/" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" onclick="goToOfflineLocation('GS25')">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>

            <!-- CU -->
            <% 
            int CU_dc_total = 0;
            int CU_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("CU")){                  
                  CU_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  CU_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            %>
            <% if(CU_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">CU</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=CU_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=CU_dc_total%>원</h6>
                  </div>
                   <a href="BenefitCU25.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://cu.bgfretail.com/index.do" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>
            <!-- 7-ELEVEn -->
            <% 
            int ELEVEn_dc_total = 0;
            int ELEVEn_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("7-ELEVEn")){                  
                  ELEVEn_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  ELEVEn_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(ELEVEn_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">7-ELEVEN</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=ELEVEn_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=ELEVEn_dc_total%>원</h6>
                  </div>
                     <a href="Benefit7-ELEVEn.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://www.7-eleven.co.kr/" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>
            <!-- emart24 -->
            <% 
            int emart24_dc_total = 0;
            int emart24_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("emart24")){                  
                  emart24_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  emart24_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(emart24_total!=0) {%>   

            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">Emart24</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=emart24_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=emart24_dc_total%>원</h6>
                  </div>
                   <a href="Benefitemart24.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://www.emart24.co.kr/" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>
            <!-- MINISTOP -->
            <% 
            int MINISTOP_dc_total = 0;
            int MINISTOP_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("MINISTOP")){                  
                  MINISTOP_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  MINISTOP_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(MINISTOP_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">MINISTOP</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=MINISTOP_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=MINISTOP_dc_total%>원</h6>
                  </div>
                    <a href="BenefitMINISTOP.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://www.ministop.co.kr/" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>
            <!-- C·SPACE -->
            <% 
            int CSPACE_dc_total = 0;
            int CSPACE_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("C·SPACE")){                  
                  CSPACE_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  CSPACE_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(CSPACE_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">C·SPACE</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=CSPACE_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=CSPACE_dc_total%>원</h6>
                  </div>
                    <a href="BenefitC-SPACE.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://www.cspace.co.kr/main/main.html" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>                                           
            <!-- 이마트 -->
            <% 
            int emart_dc_total = 0;
            int emart_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("EMART")){                  
                  emart_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  emart_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(emart_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">EMART</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=emart_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=emart_dc_total%>원</h6>
                  </div>
                    <a href="BenefitEmart.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://store.emart.com/main/main.do" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>
            <!-- 롯데마트 -->
            <% 
            int lotte_dc_total = 0;
            int lotte_total = 0;
            
            for(int i = 0 ; i<product_list.size(); i++) {
               if(product_list.get(i).getPrd_slr_sortation().equals("LOTTEMART")){                  
                  lotte_dc_total += product_list.get(i).getPrd_dc_price()*product_list.get(i).getCrt_prd_quantity();
                  lotte_total += product_list.get(i).getPrd_price()*product_list.get(i).getCrt_prd_quantity();
               }
            }
            
            %>
            <% if(lotte_total!=0) {%>   
            <div class="card border-secondary mb-5">
               <div class="card-header bg-secondary border-0">
                  <h4 class="font-weight-semi-bold m-0">LOTTEMART</h4>
               </div>
               <div class="card-footer border-secondary bg-transparent">
                  <div class="d-flex justify-content-between mt-2">
                     <h6 class="font-weight-bold">판매가</h6>
                     <h6 class="font-weight-bold"><%=lotte_total%>원</h6>
                     <h6 style='color: orange' class="font-weight-bold">할인가</h6>
                     <h6 style='color: orange' class="font-weight-bold"><%=lotte_dc_total%>원</h6>
                  </div>
                    <a href="BenefitLottemart.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">결제혜택 확인</a>
     				<a href="https://www.lotteon.com/p/display/main/lottemart?mall_no=4" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3" target="_blank">온라인 구매하기</a>
      				<a href="map.jsp" style="background-color: #f7b78e;" class="btn btn-block my-3 py-3">오프라인 판매처</a>
               </div>
            </div>
      <% } else {%>
   <% }%>   
      </div>
   </div>
   <!-- Cart End -->















   <!-- Back to Top -->
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
	window.addEventListener("scroll", function() {
		   var quickMenu = document.querySelector(".quick-menu");
		   if (quickMenu) {
		      if (window.pageYOffset > 1500) {
		         quickMenu.style.top = "30px";
		      } else {
		         quickMenu.style.top = "50%";
		      }
		   }
		});
	
	</script>
</body>

</html>