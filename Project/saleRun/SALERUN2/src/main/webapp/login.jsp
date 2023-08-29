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
    <link href="https://cdnjs.cloudflare.com/ajax/ibs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
   <!-- ��ǰ/���� ���� �̹��� ũ�� ����..���� --> 
<style>
@import
   url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css")
   ;

* {
   box-sizing: border-box;
}

body {
   font-family: "Noto Sans", "malgun gothic", AppleGothic, dotum,
      sans-serif;
  margin: 0;
  padding: 0;
}

#home-button {
   display: block;
   margin: 50px; /* ��ư ���� ���� */
   color: #333333; /* ��ư ���� ���� */
   text-decoration: none;
   cursor: pointer; 
}

.wrapper {
   width: 100%;
   height: 100vh;
   display: flex;
   justify-content: center;
   align-items: center;
   background: #ebecf0;
   overflow: hidden;
}

.container {
   border-radius: 10px;
   box-shadow: -5px -5px 10px #fff, 5px 5px 10px #babebc;
   position: absolute;
   width: 768px;
   min-height: 550px;
   overflow: hidden;
}

form {
   background: #ebecf0;
   display: flex;
   flex-direction: column;
   padding: 0 50px;
   height: 100%;
   justify-content: center;
   align-items: center;
}

form input {
   background: #eee;
   padding: 16px;
   margin: 8px 0;
   width: 85%;
   border: 0;
   outline: none;
   border-radius: 20px;
   box-shadow: inset 7px 2px 10px #babebc, inset -5px -5px 12px #fff;
}

button { 
   border-radius: 20px;
   border: none;
   outline: none;
   font-size: 12px;
   font-weight: bold;
   padding: 15px 45px;
   margin: 14px;
   letter-spacing: 1px;
   text-transform: uppercase;
   cursor: pointer;
   transition: transform 80ms ease-in;
}

.form_btn {
   box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc !important;
}

.form_btn:active {
   box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff !important;
}

.overlay_btn {
   background-color: #f7a05e;
   color: #fff;
   box-shadow: -5px -5px 10px #ff6b3f, 5px 5px 8px #bf4b2b !important;
}

.sign-in-container {
   position: absolute;
   left: 0;
   width: 50%;
   height: 100%;
   transition: all 0.5s;
}

.sign-up-container {
   position: absolute;
   left: 0;
   width: 50%;
   height: 100%;
   opacity: 0;
   transition: all 0.5s;
}

.overlay-left {
   display: flex;
   flex-direction: column;
   padding: 0 50px;
   justify-content: center;
   align-items: center;
   position: absolute;
   right: 0;
   width: 50%;
   height: 100%;
   opacity: 0;
   background-color: #f7a05e;
   color: #fff;
   transition: all 0.5s;
}

.overlay-right {
   display: flex;
   flex-direction: column;
   padding: 0 50px;
   justify-content: center;
   align-items: center;
   position: absolute;
   right: 0;
   width: 50%;
   height: 100%;
   background-color: #f7a05e;
   color: #fff;
   transition: all 0.5s;
}

.container.right-panel-active .sign-in-container {
   transform: translateX(100%);
   opacity: 0;
}

.container.right-panel-active .sign-up-container {
   transform: translateX(100%);
   opacity: 1;
   z-index: 2;
}

.container.right-panel-active .overlay-right {
   transform: translateX(-100%);
   opacity: 0;
}

.container.right-panel-active .overlay-left {
   transform: translateX(-100%);
   opacity: 1;
   z-index: 2;
}

.social-links {
   margin: 20px 0;
}

form h1 {
   font-weight: bold;
   margin: 0;
   color: rgb(114, 148, 225);
}

p {
   font-size: 16px;
   font-weight: bold;
   letter-spacing: 0.5px;
   margin: 20px 0 30px;
}

span {
   font-size: 12px;
   color: #000;
   letter-spacing: 0.5px;
   margin-bottom: 10px;
}

.social-links div {
   width: 40px;
   height: 40px;
   display: inline-flex;
   justify-content: center;
   align-items: center;
   margin: 0 5px;
   border-radius: 50%;
   box-shadow: -5px -5px 10px #fff, 5px 5px 8px #babebc;
   cursor: pointer;
}

.social-links a {
   color: #f7a05e;
}

.social-links div:active {
   box-shadow: inset 1px 1px 2px #babebc, inset -1px -1px 2px #fff;
}

input[type="date"] {
   background-color: #eee;
}

       
  /* Back to Top  ��ư ���� */
    .btn.back-to-top {
        color: #238efa; /* Box ������ ���� */
        background-color: #83bdf7; /* ������ ���� */
        border-color: #77a0c9; /* �׵θ� ������ ���� */
    }

    .btn.back-to-top i {
        color: white; /* >>������ ���� */
    }
    
    
    }
  
    
    /* ȣ�� ���� */
     .offer .position-relative .btn.btn-outline-primary:hover {
        background-color: #f59c16;
        border-color: #f08f11;
        color: white;
    }
    
        
/* �׺���̼� �ٸ� ������ �������� ���� z-index ���� */
    .navbar-vertical {
        z-index: 2;
    }

    /* �޴��� Ȯ��� ��쿡 ���� ��Ÿ�� */
    .navbar-vertical.show {
        height: auto; /* �޴��� �ڵ����� Ȯ��� */
        transform: translateY(0);
        transition: transform 0.3s;
    }

    /* �޴��� Ȯ��� �� ������ �������� �Ʒ��� �о�� */
    .page-content {
        transition: transform 0.3s;
    }

    /* �޴��� Ȯ��� �� ������ �������� �Ʒ��� �о�� ���� ��ȯ ���� */
    .navbar-vertical.show ~ .page-content {
        transform: translateY(300px); /* �ʿ��� ��ŭ �� ���� */
    }
    
</style>
  
 

</head>

<body>
  
    <!-- Navbar Start -->

<jsp:include page="navbar (1).jsp" flush="false"></jsp:include>
 



 <div class="loginpage">
      <div class="container">
         <div class="sign-up-container">

            <!-- ȸ������ -->
 <form action="JoinService" method="post">
               <h4 style="color: #f7a05e">ȸ������ �Է�</h4>
               
               <input type="text" placeholder="���̵�" name="mb_id"> <input type="password" placeholder="��й�ȣ" name="mb_pw"> <input type="text" placeholder="�̸�" name="mb_name"> <input type="text" placeholder="��ȭ��ȣ" name="mb_tel"> <input type="date" name="mb_birth" style="color:#6F6F6F">
               <button class="form_btn" style="color: #f7a05e">����</button>
            </form>
         </div>
         <div class="sign-in-container">

            <!-- �α��� -->
            <form action="LoginService" method="post">
               <h1 style="color: #f7a05e">Login</h1>
               <br>
               
               <!-- <span>or use your account</span> -->
               <input type="text" placeholder="���̵�" name="mb_id"> <input type="password" placeholder="��й�ȣ" name="mb_pw">
               <br>
               <button class="form_btn" style="color: #f7a05e">Ȯ��</button>
            </form>
         </div>
         <div class="overlay-container">
            <div class="overlay-left">
               <h1 style="color: white">ȯ���մϴ� :D</h1>
               <br>
               <br>
               <!--    <p>To keep connected with us please login with your personal info</p>-->

               <button id="signIn" class="overlay_btn">�α���</button>
            </div>
            <div class="overlay-right">
               <h1 style="color: white">�ȳ��ϼ��� :)</h1>
               <br>
               <br>
               <!--    <p>Enter your personal details and start journey with us</p>-->
               <button id="signUp" class="overlay_btn">ȸ������</button>
            </div>
         </div>
      </div>
   </div>
   
<!-- joinLoing END -->
   
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
  const signUpBtn = document.getElementById("signUp");
  const signInBtn = document.getElementById("signIn");
  const container = document.querySelector(".container");

  signUpBtn.addEventListener("click", () => {
    container.classList.add("right-panel-active");
  });
  signInBtn.addEventListener("click", () => {
    container.classList.remove("right-panel-active");
  });
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
</script>s





</body>

</html>