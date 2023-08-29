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
           flex-wrap: nowrap; /* 체크박스가 가로로 한 줄에 나오도록 설정 */
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
               <input type="checkbox" class="custom-control-input" id="color-all" name="m_name" value="이마트">
               <label class="custom-control-label" for="price-all">이마트</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-1" name="m_name" value="홈플러스">
               <label class="custom-control-label" for="color-1">홈플러스</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-2" name="m_name" value="롯데마트">
               <label class="custom-control-label" for="color-2">롯데마트</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-3" name="m_name" value="CU">
               <label class="custom-control-label" for="color-3">CU</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-4" name="m_name" value="세븐일레븐">
               <label class="custom-control-label" for="color-4">세븐일레븐</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-4" name="m_name" value="이마트24">
               <label class="custom-control-label" for="color-4">이마트24</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="GS25">
               <label class="custom-control-label" for="color-5">GS25</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="미니스톱">
               <label class="custom-control-label" for="color-5">미니스톱</label>
           </div>
           <div class="custom-control custom-checkbox mb-3 mr-3">
               <input type="checkbox" class="custom-control-input" id="color-5" name="m_name" value="C-SPACE">
               <label class="custom-control-label" for="color-5">C-SPACE</label>
           </div>
           <div class="search">
            <input class="searchBar" type="text" placeholder="검색 지역 입력" name="m_addr">
            <button class="searchBtn" type="submit">검색</button>
          </div>
          </div>
       </form>
   </div>


   <div id="map"></div>
   <script src="./js/jquery-3.7.0.js"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d509a93b508920896c521a91ee47ca0"></script>
   
   <%
     // 세션에서 데이터 가져오기
     ArrayList<MapDTO> place = (ArrayList<MapDTO>) session.getAttribute("place");
     %>

<script>
    // 지도 컨테이너와 옵션 설정
    var container = document.getElementById('map');
    
    // 지도 초기화 위치 설정, level로 표시 크기 설정
    var options = {
        center: new kakao.maps.LatLng(35.1466, 126.9223),
        level: 3
    };

    // 카카오 지도 생성
    // 초기화 옵션 설정을 토대로 지도 map 생성
    var map = new kakao.maps.Map(container, options);

    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
    var imageSize = new kakao.maps.Size(24, 35);
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

    var markers = []; // 마커들을 담을 배열
    var currentOverlay = null; // 현재 표시 중인 커스텀 오버레이
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

            markers.push(marker); // 마커를 배열에 추가

            kakao.maps.event.addListener(marker, 'click', makeClickListener(marker));
        <% } %>
    <% } %>

    // 마커들의 위치 정보를 이용해 지도의 중심과 레벨을 조정
    var bounds = new kakao.maps.LatLngBounds();
    for (var i = 0; i < markers.length; i++) {
        bounds.extend(markers[i].getPosition()); // LatLngBounds 객체에 좌표 추가
    }
    map.setBounds(bounds); // 지도의 중심과 레벨 조정

    // 클릭한 마커의 커스텀 오버레이를 표시하는 함수
    function showOverlay(marker) {
        var content = '<div class="customoverlay">' +
                      '<a>' +
                      '  <span class="title">' + marker.getTitle() + '</span>' +
                      '  </a>' +
                      '</div>'; // 커스텀 오버레이에 표출될 내용
    
        var position = marker.getPosition();
                  
        currentOverlay = new kakao.maps.CustomOverlay({
            map: map,
            position: position,
            content: content,
            yAnchor: 1 
        });
    }

    // 마커 클릭 이벤트 리스너를 만드는 함수
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