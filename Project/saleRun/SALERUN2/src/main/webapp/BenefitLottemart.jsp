 
 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

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

    /* navbar end  */    
    
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
    
/* navbar end  */    
 body {
  font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum, sans-serif;
  margin: 0;
  padding: 0;
}

  .navbar a:hover {
    color: #005b96; 
  }

  .centered-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            width: 90%;
        }

  .product {
    position: absolute;
    top: 200px;
    left: 200px;
  }

 
  .centered-button-container {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh; 
  }

  .centered-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
   
    width: 200px;
    height: 60px;
    font-size: 18px;
    
    background-color: #b7e4c7;
    border: none;
    color: white;
  }
  
  .benefit-button {
    position: absolute;
    top: 70%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 200px;
    height: 60px;
    font-size: 18px;
    background-color: #b7e4c7;
    border: none;
    color: white;
  }

        #user-info {
            margin-bottom: 20px;
        }

        #wishlist {
            width: 100%;
            border-collapse: collapse;
        }

        #wishlist th,
        #wishlist td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        #wishlist th {
            background-color: #f2f2f2;
        }

        #actions {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        button {
            padding: 10px 20px;
            background-color: #2291ac;
            color: white;
            border: none;
            cursor: pointer;
            margin: 5px;
        }

        button.cancel {
            background-color: #98a5a8;
        }       
    
      #home-button {
  display: block;
  padding: 100px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }
    
  a {
  text-decoration : none;} 
  
  h1 {
    display : block;
  margin-top: 50px; /* 버튼 간격 설정 */
  margin-left: 50px; /* 버튼 간격 설정 */
  color: #333333; /* 버튼 색상 설정 */
  text-decoration: none;
  cursor: pointer;
  }
  
 
  /* 체크박스 안보이게 */
  .custom-control-input {
        display: none;
    }
    
    
    </style>
    
  <!--  탭섹션 보완 js -->
<script>
  function showTab(tabName) {
    var tabs = document.getElementsByClassName("tab-content");
    for (var i = 0; i < tabs.length; i++) {
      tabs[i].style.display = "none";
    }
    document.getElementById(tabName).style.display = "block";
  }
  
  function showItems(itemsClassName) {
    var items = document.getElementsByClassName(itemsClassName);
    for (var i = 0; i < items.length; i++) {
      items[i].style.display = "block";
    }
  }
  
</script>
  

</head>

<body>


  <jsp:include page="navbar(2).jsp" flush="false"></jsp:include>

  
   <!-- Shop Start -->
   	 <div class="container-fluid  style="margin-bottom:100px; margin-top: 0; padding-top: 0;">
        <div class="row">
        
   <!--  Sidebar Start -->
   <!--       <div class="col-lg-3 col-md-12">  -->   
            
				<style>
				    /* 사이드 메뉴바 스타일 */
				    .sidebar {
				        width: 15%; /* 사이드 메뉴바 너비 */
				        background-color: #f5f5f5;
				        padding: 30px;
				        float: left;
				        margin-left:30px;
				    }
				    
				    /* 오렌지색 텍스트 스타일 */
				    .orange-text {
				        color: #c96314;
				        text-decoration: none;
				    }
				
				    /* 호버 시 연한 오렌지색 스타일 */
				    .orange-text:hover {
				        color: lightcoral; !important;
				    }
				</style>

      <!-- 사이드 메뉴바 내용 -->
      <div class="sidebar">
         <!-- 대형마트 -->
			    <div class="border-bottom mb-4 pb-4">
        <form >
            <h5 class="mb-4">대형마트</h5>
            <a href="BenefitEmart.jsp" class="orange-text">이마트</a>
            <br>
            <br>
            <a href="BenefitLottemart.jsp" class="orange-text">롯데마트</a>
            <br>
            <br>
            <a href="BenefitHomeplus.jsp" class="orange-text">홈플러스</a>
        </form>
    </div>
    <!-- 편의점 -->
    <div class="border-bottom mb-4 pb-4">
        <h5 class="mb-4">편의점</h5>
        <form>
            <a href="BenefitCU.jsp" class="orange-text">CU</a>
            <br>
            <br>
            <a href="BenefitGS25.jsp" class="orange-text">GS25</a>
            <br>
            <br>
            <a href="Benefit7-ELEVEn.jsp" class="orange-text">7-ELEVEn</a>
            <br>
            <br>
            <a href="Benefitemart24.jsp" class="orange-text">emart24</a>
            <br>
            <br>
            <a href="BenefitMINISTOP.jsp" class="orange-text">MINISTOP</a>
            <br>
            <br>
            <a href="BenefitC-SPACE.jsp" class="orange-text">C-SPACE</a>
         </form>
      </div>
    </div>
	      
	       
                 <!-- Page content-->
                <div class="#" style="margin-left:30px; width: 80%;">
                  <h3 class="#">롯데마트</h3>
                  <br>
                  <br>  
                  <div style="display: flex; flex-wrap: wrap; justify-content: space-between;">
                  <img src="img/benefit/mart1.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart2.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart3.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart4.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart5.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>                  
                  <img src="img/benefit/mart6.png" alt="마트 이미지" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>                  
                </div>
                </div>
    </div>



  				
  				
  				
       </div>
     <!-- Sidebar End -->
            
            
        

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


 

<script>
function goToEmart() {
    window.location.href = 'BenefitEmart.jsp';
}

function goToLotteMart() {
    window.location.href = 'BenefitLottemart.jsp';
}

function goToHomePlus() {
    window.location.href = 'BenefitHomeplus.jsp';
}

function goToCU() {
    window.location.href = 'BenefitCU.jsp';
}

function goToGS25() {
    window.location.href = 'BenefitGS25.jsp';
}

function goToSevenEleven() {
    window.location.href = 'Benefit7-ELEVEn.jsp';
}

function goToEmart24() {
    window.location.href = 'Benefitemart24.jsp';
}

function goToMinistop() {
    window.location.href = 'BenefitMINISTOP.jsp';
}

function goToCSpace() {
    window.location.href = 'BenefitC-SPACE.jsp';
}
</script>

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

</body>

</html>