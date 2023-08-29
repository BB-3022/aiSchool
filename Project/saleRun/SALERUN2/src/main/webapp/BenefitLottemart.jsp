 
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
   <!-- ��ǰ/���� ���� �̹��� ũ�� ����..���� --> 
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
        
        
  /* Back to Top  ��ư ���� */
    .btn.back-to-top {
        color: #238efa; /* Box ������ ���� */
        background-color: #83bdf7; /* ������ ���� */
        border-color: #77a0c9; /* �׵θ� ������ ���� */
    }

    .btn.back-to-top i {
        color: white; /* >>������ ���� */
    }
    

    /* ȣ�� ���� */
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
  padding: 100px; /* ��ư ���� ���� */
  color: #333333; /* ��ư ���� ���� */
  text-decoration: none;
  cursor: pointer;
  }
    
  a {
  text-decoration : none;} 
  
  h1 {
    display : block;
  margin-top: 50px; /* ��ư ���� ���� */
  margin-left: 50px; /* ��ư ���� ���� */
  color: #333333; /* ��ư ���� ���� */
  text-decoration: none;
  cursor: pointer;
  }
  
 
  /* üũ�ڽ� �Ⱥ��̰� */
  .custom-control-input {
        display: none;
    }
    
    
    </style>
    
  <!--  �Ǽ��� ���� js -->
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
				    /* ���̵� �޴��� ��Ÿ�� */
				    .sidebar {
				        width: 15%; /* ���̵� �޴��� �ʺ� */
				        background-color: #f5f5f5;
				        padding: 30px;
				        float: left;
				        margin-left:30px;
				    }
				    
				    /* �������� �ؽ�Ʈ ��Ÿ�� */
				    .orange-text {
				        color: #c96314;
				        text-decoration: none;
				    }
				
				    /* ȣ�� �� ���� �������� ��Ÿ�� */
				    .orange-text:hover {
				        color: lightcoral; !important;
				    }
				</style>

      <!-- ���̵� �޴��� ���� -->
      <div class="sidebar">
         <!-- ������Ʈ -->
			    <div class="border-bottom mb-4 pb-4">
        <form >
            <h5 class="mb-4">������Ʈ</h5>
            <a href="BenefitEmart.jsp" class="orange-text">�̸�Ʈ</a>
            <br>
            <br>
            <a href="BenefitLottemart.jsp" class="orange-text">�Ե���Ʈ</a>
            <br>
            <br>
            <a href="BenefitHomeplus.jsp" class="orange-text">Ȩ�÷���</a>
        </form>
    </div>
    <!-- ������ -->
    <div class="border-bottom mb-4 pb-4">
        <h5 class="mb-4">������</h5>
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
                  <h3 class="#">�Ե���Ʈ</h3>
                  <br>
                  <br>  
                  <div style="display: flex; flex-wrap: wrap; justify-content: space-between;">
                  <img src="img/benefit/mart1.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart2.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart3.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart4.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>
                  <img src="img/benefit/mart5.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>                  
                  <img src="img/benefit/mart6.png" alt="��Ʈ �̹���" style="max-width: 15cm; width: 100%; height: auto;">
                  <br>                  
                </div>
                </div>
    </div>



  				
  				
  				
       </div>
     <!-- Sidebar End -->
            
            
        

    <!-- Back to Top -->
		<style>
		    /* Back to Top  ��ư ���� -> �̰͵� head�� �ű�� ����Ұ�   */
		    .btn.back-to-top {
		        color: #238efa; /* Box ������ ���� */
		        background-color: #faa15c; /* ������ ���� */
		        border-color: #f59c16; /* �׵θ� ������ ���� */
		    }
		    .btn.back-to-top i {
		        color: white; /* >>������ ���� */
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
   //Ȩ��ư JavaScript �ڵ�
     document.getElementById('home-button').addEventListener('click', function() {
       window.scrollTo(0, 0); // �� ���� ��ũ��
       // �Ǵ� window.location.href = 'Ȩ������ �ּ�'; // ���� Ȩ�������� �̵�
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
        var logoutConfirmed = confirm("�α׾ƿ� �Ͻðڽ��ϱ�?");
        if (logoutConfirmed) {
            // '��'�� Ŭ���� ���, �α׾ƿ� ó���� ���� �������� �̵�
            window.location.href = "LogoutService";
        }
        // '�ƴϿ�'�� Ŭ���� ���, �ƹ� ���� ����
    }
    
    </script>
      <script>
    $(document).ready(function () {
        // �޴� ��ư Ŭ�� �� �޴� �� ������ �������� 'show' Ŭ���� ���
        $('.navbar-toggler').on('click', function () {
            $('.navbar-vertical').toggleClass('show');
            $('.page-content').toggleClass('show');
        });
    }); 
</script>

</body>

</html>