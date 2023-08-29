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
    

    /* 호버 색상 */
     .offer .position-relative .btn.btn-outline-primary:hover {
        background-color: #f59c16;
        border-color: #f08f11;
        color: white;
    }
</style>
</head>


<body>
<br>
   <!-- Topbar Start -->
<div class="container-fluid">
    <div class="row py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold" style="font-size: 2.5rem; color: #238efa;">SaleRun</h1>
            </a>
        </div>
        <div class="col-lg-9 col-6 text-right d-flex justify-content-end align-items-center" style="gap: 0.5cm;">
            <!-- 버튼들을 오른쪽으로 10cm 이동 -->
            <!-- 하트,카트 아이콘 컬러 수정-->
			 <div style="margin-left: auto; display: flex; align-items: center;">
			    <a href="" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			        <!-- 하트 아이콘 컬러 변경 -->
			        <i class="fas fa-heart " style="color: #faa15c;"></i>
			        <span class="badge">0</span>
			    </a>
			    <span style="margin-right: 2mm;"></span>
			    <a href="" class="btn border" style="width: 1.5cm; display: inline-flex; justify-content: center; align-items: center;">
			        <!-- 카트 아이콘 컬러 변경 -->
			        <i class="fas fa-shopping-cart " style="color: #faa15c;"></i>
			        <span class="badge">0</span>
			    </a>
			    <a href="" class="nav-item nav-link" style="color: #333333; margin-left: 5mm;">로그인</a>
			    <a href="" class="nav-item nav-link" style="color: #333333;">회원가입</a>
			</div>
        </div>
    </div>
</div>
    <!-- Topbar End -->  
 

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
           <div class="col-lg-3 d-none d-lg-block">
    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-gray text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
        <h5 class="m-0" style="color: #5F5F5F; font-weight: bold;">MENU</h5>
        <i class="fa fa-angle-down text-dark"></i>
    </a>
    <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navar-vertical">
        <div class="navbar-nav w-100 overflow-hidden" style="height: 300px">
            <a href="" class="nav-item nav-link custom-height">마이페이지</a>
            <a href="" class="nav-item nav-link custom-height">장바구니</a>
            <a href="" class="nav-item nav-link custom-height">할인상품</a>
            <a href="" class="nav-item nav-link custom-height">할인혜택</a>
            <a href="" class="nav-item nav-link custom-height">전단광고</a>
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
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold">SaleRun</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                   
                   
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                       
                      <!-- display none  - start -->  
                        <div class="navbar-nav mr-auto py-0" style="display: none;">
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Shop</a>
                            <a href="detail.html" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.html" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                      <!-- display none  - end -->  

                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->





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
</body>

</html>