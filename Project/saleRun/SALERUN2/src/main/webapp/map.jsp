<%@page import="com.model.map.MapDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
      #map {
         width: 75%;
         height: 400px;
         margin: 0 auto;
         margin-top: 30px;
         
      }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }
        .content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .content {
            display: block;
        }
       .martList {
           display: flex;
           justify-content: center;
           align-items: center;
           width: 100%;
       }
       .list {
           display: flex;
           flex-wrap: nowrap; /* üũ�ڽ��� ���η� �� �ٿ� �������� ���� */
       }
       .martList .custom-checkbox {
           margin-right: 20px;      
       }
       .search {
       height : 40px;
       width: 400px;
       border: 1px solid #1b5ac2;
       background: #ffffff;
       }
       .searchBar{
       font-size: 16px;
       width:325px;
       padding: 7px;
       border: 0px;
       outline: none;
       float: left;
       }
       .searchBtn{
       width: 50px;
       height: 100%;
       border: 0px;
       background: #1b5ac2;
       outline: none;
       float: right;
       color: #ffffff
       }
       .customoverlay {
       position:relative;
       bottom:85px;
       border-radius:6px;
       border: 1px solid #ccc;
       border-bottom:2px solid #ddd;
       float:left;
       }
      .customoverlay:nth-of-type(n) {
      border:0; 
      box-shadow:0px 1px 2px #888;
      }
      .customoverlay a {
      display:block;
      text-decoration:none;
      color:#000000;
      text-align:center;
      border-radius:6px;
      font-size:14px;
      font-weight:bold;
      overflow:hidden;
      background: #d95050;
      }
      .customoverlay .title {
      display:block;
      text-align:center;
      background:#fff;
      margin-right:35px;
      padding:10px 15px;
      font-size:14px;
      font-weight:bold;
      }
      .customoverlay:after {
      content:'';
      position:absolute;
      margin-left:-12px;
      left:50%;
      bottom:-12px;
      width:22px;
      height:12px;
      background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>
</head>
<body>

<jsp:include page="navbar (1).jsp" flush="false"></jsp:include>

   <div class="martList">
       <form class="d-flex flex-wrap" action="mapService" method="post">
          <div class="list">
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-all" name="m_name" value="�̸�Ʈ">
               <label class="custom-control-label" for="price-all">�̸�Ʈ</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-1" name="m_name" value="Ȩ�÷���">
               <label class="custom-control-label" for="color-1">Ȩ�÷���</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-2" name="m_name" value="�Ե���Ʈ">
               <label class="custom-control-label" for="color-2">�Ե���Ʈ</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-3" name="m_name" value="CU">
               <label class="custom-control-label" for="color-3">CU</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-4" name="m_name" value="�����Ϸ���">
               <label class="custom-control-label" for="color-4">�����Ϸ���</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-4" name="m_name" value="�̸�Ʈ24">
               <label class="custom-control-label" for="color-4">�̸�Ʈ24</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="GS25">
               <label class="custom-control-label" for="color-5">GS25</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="�̴Ͻ���">
               <label class="custom-control-label" for="color-5">�̴Ͻ���</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="C-SPACE">
               <label class="custom-control-label" for="color-5">C-SPACE</label>
           </div>
           <div class="search">
            <input class="searchBar" type="text" placeholder="�˻� ���� �Է�" name="m_addr">
            <button class="searchBtn" type="submit">�˻�</button>
          </div>
          </div>
       </form>
   </div>


   <div id="map"></div>
   <script src="./js/jquery-3.7.0.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d509a93b508920896c521a91ee47ca0"></script>
   
   <%
     // ���ǿ��� ������ ��������
     ArrayList<MapDTO> place = (ArrayList<MapDTO>) session.getAttribute("place");
     %>

<script>
    // ���� �����̳ʿ� �ɼ� ����
    var container = document.getElementById('map');
    
    // ���� �ʱ�ȭ ��ġ ����, level�� ǥ�� ũ�� ����
    var options = {
        center: new kakao.maps.LatLng(35.1466, 126.9223),
        level: 3
    };

    // īī�� ���� ����
    // �ʱ�ȭ �ɼ� ������ ���� ���� map ����
    var map = new kakao.maps.Map(container, options);

    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
    var imageSize = new kakao.maps.Size(24, 35);
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

    var markers = []; // ��Ŀ���� ���� �迭
    var currentOverlay = null; // ���� ǥ�� ���� Ŀ���� ��������
    <% if (place != null && !place.isEmpty()) { %>
        <% for (MapDTO dto : place) { %>
            var lat = <%= dto.getM_latitude() %>;
            var lng = <%= dto.getM_longitude() %>;
            var title = '<%= dto.getM_name() %>';

            var marker = new kakao.maps.Marker({
                map: map,
                position: new kakao.maps.LatLng(lat, lng),
                title: title,
                image: markerImage
            });

            markers.push(marker); // ��Ŀ�� �迭�� �߰�

            kakao.maps.event.addListener(marker, 'click', makeClickListener(marker));
        <% } %>
    <% } %>

    // ��Ŀ���� ��ġ ������ �̿��� ������ �߽ɰ� ������ ����
    var bounds = new kakao.maps.LatLngBounds();
    for (var i = 0; i < markers.length; i++) {
        bounds.extend(markers[i].getPosition()); // LatLngBounds ��ü�� ��ǥ �߰�
    }
    map.setBounds(bounds); // ������ �߽ɰ� ���� ����

    // Ŭ���� ��Ŀ�� Ŀ���� �������̸� ǥ���ϴ� �Լ�
    function showOverlay(marker) {
        var content = '<div class="customoverlay">' +
                      '<a>' +
                      '  <span class="title">' + marker.getTitle() + '</span>' +
                      '  </a>' +
                      '</div>'; // Ŀ���� �������̿� ǥ��� ����
    
        var position = marker.getPosition();
                  
        currentOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: position,
            content: content,
            yAnchor: 1 
        });
    }

    // ��Ŀ Ŭ�� �̺�Ʈ �����ʸ� ����� �Լ�
    function makeClickListener(marker) {
        return function() {
            if (currentOverlay) {
                currentOverlay.setMap(null);
            }
            showOverlay(marker);
        };
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