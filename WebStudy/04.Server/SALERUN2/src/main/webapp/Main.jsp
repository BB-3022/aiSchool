<%@page import="com.model.wishprd.WishProductDTO"%>
<%@page import="com.model.wishprd.WishProductDAO"%>
<%@page import="com.model.cart.CartJoinDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.cart.CartDAO"%>
<%@page import="com.model.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="EUC-KR">
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
   <!-- 상품/혜택 섹션 이미지 크기 수정..실패 --> 
    <style>
    .full-width-image {
    width: 100%;
    height: auto;
}

.custom-height {
        height: 13mm !important;
    }
    
     .offer {
        margin-top: -5mm;
        
        
  /* Back to Top  버튼 수정 */
    .btn.back-to-top {
        color: #238efa; /* Box 아이콘 색상 */
        background-color: #83bdf7; /* 배경색을 설정 */
        border-color: #77a0c9; /* 테두리 색상을 설정 */
    }

    .btn.back-to-top i {
        color: white; /* >>아이콘 색상 */
    }
    
    
    }
   /* 상품,혜택페이지 이동  섹션 -> 빽 컬러 */ 

    .image-wrapper {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
    }

    .image-wrapper img {
        min-width: 100%;
        min-height: 100%;
    }
    
    /* 안먹힘 =>     상품,혜택페이지 이동  섹션 -> 텍스트 컬러 */
    .offer .position-relative {
        color: #333333; !mportant;
    }
    
    /* 호버 색상 */
     .offer .position-relative .btn.btn-outline-primary:hover {
        background-color: #f59c16;
        border-color: #f08f11;
        color: white;
    }
    
    
/* 네비게이션 바를 앞으로 가져오기 위한 z-index 조정 */
    .navbar-vertical {
        z-index: 2;
    }

    /* 메뉴가 확장된 경우에 대한 스타일 */
    .navbar-vertical.show {
        height: auto; /* 메뉴가 자동으로 확장됨 */
        transform: translateY(0);
        transition: transform 0.3s;
    }

    /* 메뉴가 확장될 때 페이지 콘텐츠를 아래로 밀어내기 */
    .page-content {
        transition: transform 0.3s;
    }

    /* 메뉴가 확장될 때 페이지 콘텐츠를 아래로 밀어내기 위한 변환 적용 */
    .navbar-vertical.show ~ .page-content {
        transform: translateY(300px); /* 필요한 만큼 값 조정 */
    }
    
    
</style>
<script>
    $(document).ready(function () {
        // 메뉴 버튼 클릭 시 메뉴 및 페이지 콘텐츠에 'show' 클래스 토글
        $('.navbar-toggler').on('click', function () {
            $('.navbar-vertical').toggleClass('show');
            $('.page-content').toggleClass('show');
        });
    });
</script>

</head>

<body>
<!-- Navbar Start -->
<%
MemberDTO info = (MemberDTO)session.getAttribute("info");

%>


<% if(info!=null) {%>
<% 
CartDAO dao = new CartDAO();
ArrayList<CartJoinDTO> product_list=dao.cartList(info.getMb_id());
	
WishProductDAO dao1 = new WishProductDAO();
ArrayList<WishProductDTO> wp_list=dao1.wpList(info.getMb_id());
%>
<br>
   <!-- Topbar Start -->
<div class="container-fluid">
    <div class="row py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="Main.jsp" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold" style="font-size: 2.5rem; color: #238efa;">SaleRun</h1>
            </a>
        </div>
        <div class="col-lg-9 col-6 text-right d-flex justify-content-end align-items-center" style="gap: 0.5cm;">
            <!-- 버튼들을 오른쪽으로 10cm 이동 -->
            <!-- 하트,카트 아이콘 컬러 수정-->
			 <div style="margin-left: auto; display: flex; align-items: center;">
			    <a href="mypage.jsp#one" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			        <!-- 하트 아이콘 컬러 변경 -->
			        <i class="fas fa-heart " style="color: #faa15c;"></i>
			        <span class="badge"><%=wp_list.size()%></span>
			    </a>
			    <span style="margin-right: 2mm;"></span>
			    <a href="Cart.jsp" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			        <!-- 카트 아이콘 컬러 변경 -->
			        <i class="fas fa-shopping-cart " style="color: #faa15c;"></i>
			        <span class="badge"><%=product_list.size()%></span>
			    </a>
		    <%} else{   %>		
			    <br>
			    <!-- Topbar Start -->
			 <div class="container-fluid">
			     <div class="row py-3 px-xl-5">
			         <div class="col-lg-3 d-none d-lg-block">
			             <a href="Main.jsp" class="text-decoration-none">
			                 <h1 class="m-0 display-5 font-weight-semi-bold" style="font-size: 2.5rem; color: #238efa;">SaleRun</h1>
			             </a>
			         </div>
			         <div class="col-lg-9 col-6 text-right d-flex justify-content-end align-items-center" style="gap: 0.5cm;">
			             <!-- 버튼들을 오른쪽으로 10cm 이동 -->
			             <!-- 하트,카트 아이콘 컬러 수정-->
			 			 <div style="margin-left: auto; display: flex; align-items: center;">
			 			    <a href="mypage.jsp#one" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			 			        <!-- 하트 아이콘 컬러 변경 -->
			 			        <i class="fas fa-heart " style="color: #faa15c;"></i>
			 			        <span class="badge">0</span>
			 			    </a>
			 			    <span style="margin-right: 2mm;"></span>
			 			    <a href="Cart.jsp" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			 			        <!-- 카트 아이콘 컬러 변경 -->
			 			        <i class="fas fa-shopping-cart " style="color: #faa15c;"></i>
			 			        <span class="badge">0</span>
			 			    </a>			    
			    <%} %>
					   	<% if(info != null){ %>
					    <a href="#" class="nav-item nav-link" style="color: #333333; margin-left: 5mm;"
               onclick="confirmLogout()">로그아웃</a>
            <%
					   			
								 }else{ %>	
								<a href="login.jsp" class="nav-item nav-link" style="color: #333333; margin-left: 5mm;">로그인</a>
					   			<a href="login.jsp" class="nav-item nav-link" style="color: #333333;">회원가입</a>
								<% } %>
					  
					</div>
		        </div>
		    </div>
		</div>
 <!-- Topbar End -->  

    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
        
           <div class="col-lg-3 d-none d-lg-block" style="height: 400px">
			    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-gray text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
			        <h5 class="m-0" style="color: #5F5F5F; font-weight: bold;">MENU</h5>
			        <i class="fa fa-angle-down text-dark"></i>
			    </a>
			    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
			        <div class="navbar-nav w-100 overflow-hidden" style="height: 300px">
			            <div class="nav-item dropdown">
			            <a href="mypage.jsp" class="nav-item nav-link custom-height">마이페이지</a>
			            <a href="Cart.jsp" class="nav-item nav-link custom-height">장바구니</a>
			            <a href="searchProduct.jsp" class="nav-item nav-link custom-height">할인상품</a>
			            <a href="Benefit.jsp" class="nav-item nav-link custom-height">할인혜택</a>
			            <a href="Benefit.jsp" class="nav-item nav-link custom-height">전단광고</a>				            
			            </div>
			        </div>
			    </nav>
			</div>



<style>
/* 메뉴 백 컬러 변경  --> head로 옮기면 적용불가.   */ 
    .bg-gray {
        background-color: #f7a05e; /* 배경색을 오렌지으로 변경 */
    }

    .bg-gray:hover {
        background-color: #fab987; /* hover 시 배경색을 연한 오렌지으로 변경 */
    }
</style>
            
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="Main.jsp" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold">SaleRun</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                   
                   
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                       
                      <!-- display none  - start -->  
                        <div class="navbar-nav mr-auto py-0" style="display: none;">
                            <a href="Main.jsp" class="nav-item nav-link active">Home</a>
                            <a href="searchProduct.jsp" class="nav-item nav-link">Shop</a>
                            <a href="infoProduct.jsp" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="Cart.jsp" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.jsp" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                        </div>
                      <!-- display none  - end -->  

                    </div>
                </nav>
                
   <!--    상품 슬라이드  start  -->
  <div id="header-carousel" class="carousel slide" data-ride="carousel">
        <!--  이미지 불투명도 수정  -->           
   <div class="carousel-inner">
    <div class="carousel-item active" style="height: 410px;">
        <!-- 이미지를 그대로 출력 -->
        <img class="img-fluid" src="img/KoreaCow.png" alt="Image">
        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
            <div class="p-3" style="max-width: 700px; display: none;">
                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                <a href="searchProduct.jsp" class="btn btn-light py-2 px-3">Shop Now</a>
            </div>
        </div>
    </div>
    <div class="carousel-item" style="height: 410px;">
        <!-- 이미지를 그대로 출력 -->
        <img class="img-fluid" src="img/Koreacow.png" alt="Image">
        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
            <div class="p-3" style="max-width: 700px;">
                <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                <a href="searchProduct.jsp" class="btn btn-light py-2 px-3">Shop Now</a>
            </div>
        </div>
     </div>
    </div>
                 <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                 </a>
   </div>
   <!--    상품 슬라이드  end  -->
            
         </div>
     </div>
 </div>
    <!-- Navbar End -->

<!-- 상품/혜택 Start -->
 <div class="container-fluid offer pt-5">
    <div class="row px-xl-5">
        <!-- 배경색 없애고 이미지 넣기 -->
        <div class="col-md-6 " style="margin-light: 30px;">
            <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                <div class="image-wrapper">
                    <img src="img/benefit2.png" alt="img/benefit2.png" class="img-full">
                </div>
                <div class="position-relative" style="z-index: 1;">
                    <h5 class="text-uppercase mb-3" style="color:#333333;">제휴카드와 멤버십 혜택</h5>
                    <h1 class="mb-4 font-weight-semi-bold" style="color:#333333;">할인혜택 GO</h1>
                    <a href="Benefit.jsp" class="btn btn-outline-primary py-md-2 px-md-3" style="color:#333333;">Check Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="position-relative text-center text-md-left text-white mb-2 py-5 px-5">
                <div class="image-wrapper">
                    <img src="img/grocery_bag.png" alt="img/grocery_bag.png" class="img-full">
                </div>
                <div class="position-relative" style="z-index: 1;">
                    <h5 class="text-uppercase  mb-3" style="color:#333333;">현명한 소비를 위한</h5>
                    <h1 class="mb-4 font-weight-semi-bold" style="color:#333333;">할인상품 GO</h1>
                    <a href="searchProduct.jsp" class="btn btn-outline-primary py-md-2 px-md-3" style="color:#333333;">Shop Now</a>
                </div>
            </div>
        </div>
        
    </div>
</div>


    <!-- Back to Top -->
<style>
    /* Back to Top  버튼 수정 -> 이것도 head로 옮기면 적용불가   */
    .btn.back-to-top {
        color: #238efa; /* Box 아이콘 색상 */
        background-color: #faa15c; /* 배경색을 설정 */
        border-color: #f59c16; /* 테두리 색상을 설정 */
    }
    .btn.back-to-top i {
        color: white; /* >>아이콘 색상 */
    }
    
    
    }
</style>
<a href="#" class="btn btn-primary back-to-top">
    <i class="fa fa-angle-double-up"></i>
</a>



    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
</body>

</html>