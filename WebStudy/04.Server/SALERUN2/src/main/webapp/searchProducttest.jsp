<%@page import="com.model.Detailpage.DetailpageDTO"%>
<%@page import="com.model.Detailpage.DetailpageDAO"%>
<%@page import="com.model.product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
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
</head>

<body>
    <%
      //인코딩
      response.setCharacterEncoding("utf-8");
      request.setCharacterEncoding("utf-8");
      
      String searchKeyword = request.getParameter("searchKeyword");
      String food_sortation = request.getParameter("food_sortation");

      ProductDAO dao = new ProductDAO();
      ArrayList<ProductDTO> searchProductList = new ArrayList<ProductDTO>();
    
  
      if (searchKeyword != null && !searchKeyword.trim().isEmpty()) {
          // 상품명과 체크박스 값을 동시에 고려하여 검색
    	  searchProductList = dao.searchProductByNameAndSortation(searchKeyword, food_sortation);
      } else {
          // 상품명이 없는 경우 체크박스의 값으로 검색
          if (food_sortation == null) {
              food_sortation = "면/통조림/가공식품";
          }
          searchProductList = dao.searchProductByNameAndSortation(searchKeyword, food_sortation);
      } 
      
      

   %>

    
   <jsp:include page="navbar (1).jsp" flush="false"></jsp:include>


<!--  품목 Start  -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
                <!-- Price Start -->

                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">품목</h5>
                        <form id="checkboxForm" action="searchProduct.jsp"  method="post" accept-charset="utf-8" onsubmit="return emulAcceptCharset(this)">
                      
                    <!-- 식료품 카테고리 Start -->
                    <div class="checkbox-section">
                       <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1" value="생수/음료" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "생수/음료".equals(food_sortation) ? "checked" : "" %>>  
                            <label class="custom-control-label" for="price-1">생수/음료</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2" value="과자/초콜릿/시리얼" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "과자/초콜릿/시리얼".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-2">과자/초콜릿/시리얼</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3" value="면/통조림/가공식품" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "면/통조림/가공식품".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-3">면/통조림/가공식품</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4" value="유제품/아이스크림" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "유제품/아이스크림".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-4">유제품/아이스크림</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-5" value="수산물/건어물" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "수산물/건어물".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-5">수산물/건어물</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-6" value="과일" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "과일".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-6">과일</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-7" value="채소" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "채소".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-7">채소</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-8" value="축산/계산" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "축산/계란".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-8">축산/계란</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-9" value="건강식품" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "건강식품".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-9">건강식품</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-10" value="샐러드/간편식" name="food_sortation" 
                            onclick="uncheckOthers(this)"<%= "샐러드/간편식".equals(food_sortation) ? "checked" : "" %>>
                            <label class="custom-control-label" for="price-10">샐러드/간편식</label>
                        </div>
                       <!-- 식료품 카테고리 End -->
                  
                      <!-- 판매처 Start -->
                      <div class="checkbox-container">
                       <div class="border-bottom mb-4 pb-4">
                          <h5 class="font-weight-semi-bold mb-4">판매처</h5>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-11" value="이마트" name="food_sortation">
                                  <label class="custom-control-label" for="price-11">이마트</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-12" value="홈플러스" name="food_sortation">
                                  <label class="custom-control-label" for="price-12">홈플러스</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-13" value="롯데마트" name="food_sortation">
                                  <label class="custom-control-label" for="price-13">롯데마트</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-14" value="CU" name="food_sortation">
                                  <label class="custom-control-label" for="price-14">CU</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-15" value="세븐일레븐" name="food_sortation">
                                  <label class="custom-control-label" for="price-15">세븐일레븐</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                  <input type="checkbox" class="custom-control-input" id="price-16" value="이마트24" name="food_sortation">
                                  <label class="custom-control-label" for="price-16">이마트24</label>
                              </div>
                              <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                                  <input type="checkbox" class="custom-control-input" id="price-17" value="GS25" name="food_sortation">
                                  <label class="custom-control-label" for="price-17">GS25</label>
                              </div>
                      </div>
                      </div>
                      <!-- 판매처 End -->
        
                  <!-- 상품명 검색 Start -->
                  <div class="search-container">
                  <!-- <div class="col-lg-9 col-md-12 mb-4" style="padding: 0 15%; text-align: center;"> -->
                          <div class="input-group">
                              <input type="text" class="form-control" name="searchKeyword" placeholder="상품명을 입력하세요" style="font-size: 14px; border-radius: 5px 0 0 5px;">
                              <div class="input-group-append">
                                  <button type="submit" class="btn btn-primary" style="border-radius: 0 5px 5px 0;">검색
                                      <i class="fa fa-search"></i>
                                  </button>
                              </div>
                          <!-- </div> -->
                  </div>
                  </div>
               <!-- 상품명 검색 End -->
               </div>
                  </form>
              </div>
          </div> 
<!--  Shop Sidebar End -->




<!-- Shop Product Start -->
<div class="col-lg-9 col-md-12">
    
   <div class="row pb-3">
                <%
                // 페이지에 표시할 각 행의 제품 수와 행 수를 설정
                int itemsPerRow = 4;
                int rowsPerPage = 3;
                
                // 총 상품 수와 행 수 계산
                int totalItems = searchProductList.size();
                int totalRows = (int) Math.ceil((double) totalItems / itemsPerRow);
                
                // 현재 페이지 파라미터 가져오기
                String pageNumParam = request.getParameter("page");
                int currentPage = (pageNumParam != null) ? Integer.parseInt(pageNumParam) : 1;
                
                // 현재 페이지에 표시할 상품 범위 계산
                int startItemIndex = (currentPage - 1) * (itemsPerRow * rowsPerPage);
                int endItemIndex = Math.min(startItemIndex + (itemsPerRow * rowsPerPage), totalItems);
                
                // 각 행마다 상품을 출력하는 루프
                for (int rowIndex = 0; rowIndex < rowsPerPage; rowIndex++) {
                    out.print("<div class='row pb-1'>");
                    for (int itemIndex = startItemIndex + (rowIndex * itemsPerRow); itemIndex < endItemIndex && itemIndex < (startItemIndex + ((rowIndex + 1) * itemsPerRow)); itemIndex++) {
                        ProductDTO product = searchProductList.get(itemIndex);
                %>
                    <!-- 상품 아이템 카드 -->
                    <div class='col-lg-3 col-md-6 col-sm-12 pb-1'>
                        <div class='card product-item border-0 mb-4'>
                            <!-- 상품 이미지 -->
                            <div class='card-header product-img position-relative overflow-hidden bg-transparent border p-0 d-flex align-items-center justify-content-center' style='height: 200px;'>
                                <img class='img-fluid' style='width: 400px; height: 400px;' src='<%= product.getPrd_img_link() %>' alt='행사상품'>
                            </div>
                            <!-- 상품 정보 -->
                            <div class='card-body border-left border-right text-center p-0 pt-4 pb-3'>
                                <h6 class='text-truncate mb-3'>
                                    <%= product.getPrd_name() %>
                                </h6>
                                <div class='d-flex justify-content-center'>
                                    <h6>
                                        <%= product.getPrd_dc_price() %>원
                                        (<%= product.getPrd_dc_rate() %>)
                                    </h6>
                                    <h6 class='text-muted ml-2'>
                                        <del><%= product.getPrd_price() %>원</del>
                                    </h6>
                                </div>
                                <!-- 홈플러스 로고 -->
                                <div class='logo-image'>
                                    <a target='_blank' href='<%= product.getPrd_link() %>'>
                                        <img src='img/logo/homeplus.jpg' alt='홈플러스 로고' class='logo-image__img' width='100px' height='100px'>
                                    </a>
                                </div>
                            </div>
                            <!-- 버튼 영역 -->
                            <div class='card-footer d-flex justify-content-between bg-light border'>
                                <a href='' class='btn btn-sm text-dark p-0'>
                                    <i class='fas fa-eye text-primary mr-1'></i>View Detail
                                </a>
                                <a href='' class='btn btn-sm text-dark p-0'>
                                    <i class='fas fa-shopping-cart text-primary mr-1'></i>Add To Cart
                                </a>
                            </div>
                        </div>
                    </div>
                <% 
                    }
                    out.print("</div>");
                }
                %>
            </div>
            
            <!-- 페이지네이션 -->
            <div class="col-12 pb-1">
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center mb-3">
                        <!-- 이전 페이지로 가는 링크 -->
                        <li class="page-item <%= (currentPage == 1) ? "disabled" : "" %>">
                            <a class="page-link" href="?page=<%= currentPage - 1 %>" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <!-- 페이지 번호 링크 -->
                        <% for (int i = 1; i <= totalRows; i++) { %>
                        <li class="page-item <%= (currentPage == i) ? "active" : "" %>">
                            <a class="page-link" href="?page=<%= i %>"><%= i %></a>
                        </li>
                        <% } %>
                        <!-- 다음 페이지로 가는 링크 -->
                        <li class="page-item <%= (currentPage == totalRows) ? "disabled" : "" %>">
                            <a class="page-link" href="?page=<%= currentPage + 1 %>" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
         </div>
<!-- 상품 목록 끝 -->
<!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="" class="text-decoration-none">
                    <h1 class="mb-4 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border border-white px-3 mr-1">E</span>Shopper</h1>
                </a>
                <p>Dolore erat dolor sit lorem vero amet. Sed sit lorem magna, ipsum no sit erat lorem et magna ipsum dolore amet erat.</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                            <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                            <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 py-4" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 py-4" placeholder="Your Email"
                                    required="required" />
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                    &copy; <a class="text-dark font-weight-semi-bold" href="#">Your Site Name</a>. All Rights Reserved. Designed
                    by
                    <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">HTML Codex</a><br>
                    Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->

   <!-- 인크루드 네비바 다시 안올라가는 버그가 해결되는 코드...? -->
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
   <!-- 여기까지 버그 해결되는 이상한 코드 끝 -->


<script>
/* 체크박스 1개만 선택될 수 있게 하는 함수  */
function emulAcceptCharset(form) {
    if (form.canHaveHTML) { // detect IE
        document.charset = form.acceptCharset;
    }
    return true;
}

function uncheckOthers(clickedCheckbox) {
    const checkboxes = document.querySelectorAll('input[type="checkbox"][name="food_sortation"]');
    checkboxes.forEach(checkbox => {
        if (checkbox !== clickedCheckbox) {
            checkbox.checked = false;
        }
    });
}
</script>     

    
    
</body>

</html>