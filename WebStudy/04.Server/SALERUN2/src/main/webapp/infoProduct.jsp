<%@page import="com.model.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="css/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<style>
</style>


</head>

<body>
<% 
    MemberDTO info = (MemberDTO)session.getAttribute("info");

%>
	
<jsp:include page="navbar (1).jsp" flush="false"></jsp:include>

	<!-- Page Header Start -->

	<!-- Page Header End -->


	<!-- Shop Detail Start -->
	<div class="container-fluid py-5" style="margin-top: -50px">
		<div class="row px-xl-5">
			<div class="col-lg-5 pb-5">
				<div id="product-carousel" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner border">
						<div class="carousel-item active">
							<img class="w-100 h-100"
								src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/4656666748/B.png?719000000"
								alt="Image">
						</div>

						<div class="carousel-item">
							<img class="w-100 h-100"
								src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/3919708482/B.jpg?882000000"
								alt="Image">
						</div>
					</div>
					<a class="carousel-control-prev" href="#product-carousel"
						data-slide="prev"> <i class="fa fa-2x fa-angle-left text-dark"></i>
					</a> <a class="carousel-control-next" href="#product-carousel"
						data-slide="next"> <i
						class="fa fa-2x fa-angle-right text-dark"></i>
					</a>
				</div>
			</div>

			<!-- 공유하기 기능 추가 -->
			<div class="col-lg-7 pb-5">
				<div class="d-flex align-items-center mb-4 pt-2">
					<h3 class="font-weight-semi-bold">광동 옥수수수염차 500ml</h3>

					<!-- 추가된 버튼과 클립보드 복사 기능 -->

					<button id="copyURLBtn" class="btn btn-primary ml-auto">
						<i class="fas fa-link mr-1"></i> Copy URL
					</button>
				</div>
				<div id="copySuccess" class="alert alert-success d-none">URL
					copied successfully!</div>

				<!-- 공유하기 기능 추가 완료 -->

				<div class="d-flex mb-3">
					<div class="text-primary mr-2">
						<small class="fas fa-star"></small> <small class="fas fa-star"></small>
						<small class="fas fa-star"></small> <small class="fas fa-star"></small>
						<small class="fas fa-star-half-alt"></small>
					</div>
					<small class="pt-1">(4 Reviews)</small>
				</div>
				<div class="org_price">
					<del>2,200원</del>
				</div>
				<div class="dis_price">
					<h4>2,090원</h4>
				</div>
				<p class="mb-4"></p>
				<div class="d-flex mb-3">
					<p class="text-dark font-weight-medium mb-0 mr-3">원산지</p>
					<div class="border-left mx-3" style="height: 10px;"></div>
					<!-- 작은 세로선 -->
					<p class="mb-0">상품설명 또는 구매정보 페이지 참조</p>
				</div>
				<div class="d-flex mb-3">
					<p class="text-dark font-weight-medium mb-0 mr-3">원재료</p>
					<div class="border-left mx-3" style="height: 10px;"></div>
					<!-- 작은 세로선 -->
					<p class="mb-0">컨텐츠 참조</p>
				</div>	
				<div class="d-flex align-items-center mb-4 pt-2">
					<div class="input-group quantity mr-3" style="width: 130px;">
    <div class="input-group-btn">
        <button class="btn btn-primary btn-minus" onclick="decrementValue()">
            <i class="fa fa-minus"></i>
        </button>
    </div>
    <input type="text" class="form-control bg-secondary text-center" value="1" id="quantityInput">
    <div class="input-group-btn">
        <button class="btn btn-primary btn-plus" onclick="incrementValue()">
            <i class="fa fa-plus"></i>
        </button>
    </div>
</div>
					<button class="btn btn-primary px-3"
						onclick="location.href='Cart.jsp'">
						<i class="fa fa-shopping-cart mr-1"></i> Add Cart
					</button>
					
               <!-- 관심상품 저장 -->
               <form action="Wishprdaddition" method="post">
                  <input type="hidden" name="wp_id" value="<%=info.getMb_id()%>">
                   <input type="hidden" name="wp_number" value="<%="1661"%>">
                   <input type="hidden" name="wp_idnum" value="<%=info.getMb_id()+"1661"%>">  
                  <button class="btn border" type="submit"> <i class="fas fa-heart text-primary"></i> <span class="badge"></span></button>
               </form>

				</div>
				<div class="d-flex pt-2">
					<p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
					<div class="d-inline-flex">
						<a class="text-dark px-2" href="https://www.facebook.com"> <i
							class="fab fa-facebook-f"></i>
						</a> <a class="text-dark px-2" href="https://twitter.com"> <i
							class="fab fa-twitter"></i>
						</a> <a class="text-dark px-2" href="https://www.linkedin.com"> <i
							class="fab fa-linkedin-in"></i>
						</a> <a class="text-dark px-2" href="https://www.pinterest.co.kr">
							<i class="fab fa-pinterest"></i>
						</a>



					</div>
				</div>

				<div class="salerun-content" style="margin-top: 20px;">
					<h1 class="salerun-title">Salerun</h1>
					<p class="salerun-description">Discover Amazing Deals!</p>
				</div>
				</a>
			</div>
		</div>
	</div>
	<div class="row px-xl-5">
		<div class="col">
			<div
				class="nav nav-tabs justify-content-center border-secondary mb-4">
				<a class="nav-item nav-link active" data-toggle="tab"
					href="#tab-pane-1">상품설명</a> <a class="nav-item nav-link"
					data-toggle="tab" href="#tab-pane-2">상세정보</a> <a
					class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">리뷰(4)</a>
			</div>
			<div class="tab-content">
				<div class="tab-pane fade show active text-center" id="tab-pane-1">
					<div class="d-flex flex-column align-items-center">
						<img
							src="https://view01.wemep.co.kr/wmp-product/1/248/122932481/pd_m2ajpcm9yyto.jpg"
							alt="Product Image" class="product_image">
						<h3 class="font-weight-semi-bold">구수한 옥수수의 맛과 향을 담은 차음료</h3>
						<h3 class="font-weight-semi-bold">[광동] 옥수수수염차</h3>
					</div>
					<p>'옥미수'라 불리던 옥수수수염차는 예로부터 선조들이 즐겨 마시던 전통 곡물차였어요. 요즘엔 옥수수나 티백으로
						우리거나, 버리기 직전의 옥수수수염을 물과 함께 한소끔 끓여 마시곤 해요. 옥수수수염, 볶은 옥수수의 추출물을 병
						하나에 담아낸 차음료지요. 옥수수 특유의 구수한 맛과 향, 깔끔한 목 넘김을 자랑하기에 오랜 시간 동안 사랑
						받아왔어요. 보존료를 일절 넣지 않아 안심하고 드셔도 좋아요. 집에서 끓여 마시는 곡물차 대신, 광동 옥수수수염차를
						냉장고에 채워보세요.</p>
				</div>

				<div class="tab-pane fade" id="tab-pane-2">
					<div class="d-flex flex-column align-items-center">
						<img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/40/0000/0015/A00000015566101ko.jpg?l=ko"
							alt="Product Image" class="product_image">
					</div>
					<h4 class="mb-3">상품정보 제공고시</h4>
					<div class="row">
						<table class="description"
							style="border-collapse: separate; border-spacing: 10px; border: 1px solid #ccc; border-left: none; border-right: none;">
							<tr>
								<td style="background-color: #f0f8ea;"><strong>제품명</strong></td>
								<td>광동옥수수수염차 500ml</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>식품의
										유형</strong></td>
								<td>액상차</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>생산자
										및 소재지(수입품의 경우 생산자, 수입자 및 제조국)</strong></td>
								<td>(주)삼양패키징광혜원공장 충북진천군 광혜원면 죽현길 114</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>제조연월일,
										소비기한(품질유지기한)</strong></td>
								<td>상기제품은 제품별로 제조일, 유통기한이 상이하여 개별제조연월 정보제공이 어렵습니다</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>포장
										단위별 내용물의 용량(중량),수량</strong></td>
								<td>500ML</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>원재료명
										및 함량</strong></td>
								<td>정제수, 볶은옥수수추출액(옥수수 중국산80%, 국산20%), 현미농축액(국산),
									옥수수수염농축액(중국산), 비타민C, 효소처리스테비아, 탄산수소나트륨, 글리신, 합성향료</td>
							</tr>
							<tr>
								<td style="background-color: #f0f8ea;"><strong>영양성분
										표시 대상 여부</strong></td>
								<td>총열량 : 5kcal, 1회 제공량 : 500ml 5kcal<br> 탄수화물 1g(0%),
									당류 0g(%), 단백질 0g(%), 지방 0g(%), 포화지방 0g(%), 트랜스지방 0g(%)
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tab-pane fade" id="tab-pane-3">
					<div class="row">
						<div class="col-md-6">
							<h4 class="mb-4">4개의 리뷰가 있습니다</h4>
							<div class="media mb-4">
								<img
									src="https://search.pstatic.net/common?type=b&size=216&expire=1&refresh=true&quality=100&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2F108%2F201111300918558491.jpg"
									alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
								<div class="media-body">
									<h6>
										최성원<small> - <i>2023 08 10</i></small>
									</h6>
									<div class="text-primary mb-2">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<p>저희 상품이라서가 아니라, 옥수수 차 종류중 단연 최고입니다.</p>
								</div>
							</div>
							<div class="media mb-4">
								<img
									src="https://search.pstatic.net/common?type=b&size=216&expire=1&refresh=true&quality=100&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2F170%2F201410201856016791.jpg"
									alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
								<div class="media-body">
									<h6>
										이재용<small> - <i>2023 08 08</i></small>
									</h6>
									<div class="text-primary mb-2">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star-half-alt"></i>
									</div>
									<p>좋아하는 음료인데요, 여러 판매처들과 가격 비교 후 최저가의 정보를 알아볼 수 있어 좋았습니다.</p>
								</div>
							</div>
							<div class="media mb-4">
								<img
									src="https://search.pstatic.net/common?type=b&size=216&expire=1&refresh=true&quality=100&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2Fportrait%2F202305%2F20230504165031977.jpg"
									style="width: 45px;">
								<div class="media-body" style="margin-left: 14px">
									<h6>
										유재석<small> - <i>2023 08 11</i></small>
									</h6>
									<div class="text-primary mb-2">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<p>최고입니다.</p>
								</div>
							</div>
							<div class="media mb-4">
								<img
									src="https://search.pstatic.net/common?type=b&size=144&expire=1&refresh=true&quality=100&direct=true&src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2Fportrait%2F202105%2F20210520175734713.jpg"
									style="width: 45px;">
								<div class="media-body" style="margin-left: 14px">
									<h6>
										성시경<small> - <i>2023 08 12</i></small>
									</h6>
									<div class="text-primary mb-2">
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i>
									</div>
									<p>숙취 해소에 가장 좋아요.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<h4 class="mb-4">리뷰를 남겨주세요</h4>
							<small>Your email address will not be published. Required
								fields are marked *</small>
							<div class="d-flex my-3">
								<p class="mb-0 mr-2">별점 * :</p>
								<div class="text-primary">
									<i class="far fa-star"></i> <i class="far fa-star"></i> <i
										class="far fa-star"></i> <i class="far fa-star"></i> <i
										class="far fa-star"></i>
								</div>
							</div>
							<form>
								<div class="form-group">
									<label for="message">내용 *</label>
									<textarea id="message" cols="30" rows="5" class="form-control"></textarea>
								</div>
								<div class="form-group">
									<label for="name">이름 *</label> <input type="text"
										class="form-control" id="name">
								</div>
								<div class="form-group">
									<label for="email">이메일 *</label> <input type="email"
										class="form-control" id="email">
								</div>
								<div class="form-group mb-0">
									<input type="submit" value="리뷰 남기기"
										class="btn btn-primary px-3">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- Shop Detail End -->


	<!-- Products Start -->
	<div class="container-fluid py-5">
		<div class="text-center mb-4">
			<h3 class="font-weight-semi-bold">관련상품</h3>
		</div>
		<div class="row px-xl-5">
			<div class="col">
				<div class="owl-carousel related-carousel">

					<div class="card product-item border-0">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100"
								src="https://img2.tmon.kr/cdn4/deals/2023/07/03/18937037118/18937037118_front_5739071d74.jpg"
								alt="">
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">(웅진)결명자차</h6>
							<div class="d-flex justify-content-center">
								<h6>1,950원</h6>
								<h6 class="text-muted ml-2">
									<del>2,200원</del>
								</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a href="infoProduct.jsp" class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>상품상세</a> <a href="Cart.jsp"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>장바구니</a>
						</div>
					</div>

					<div class="card product-item border-0">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100"
								src="https://img2.tmon.kr/cdn4/deals/2023/07/03/18937037118/18937037118_front_5739071d74.jpg"
								alt="">
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">(웅진)결명자차</h6>
							<div class="d-flex justify-content-center">
								<h6>1,950원</h6>
								<h6 class="text-muted ml-2">
									<del>2,200원</del>
								</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a href="infoProduct.jsp" class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>상품상세</a> <a href="Cart.jsp"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>장바구니</a>
						</div>
					</div>

					<div class="card product-item border-0">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100"
								src="https://img2.tmon.kr/cdn4/deals/2023/07/03/18937037118/18937037118_front_5739071d74.jpg"
								alt="">
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">(웅진)결명자차</h6>
							<div class="d-flex justify-content-center">
								<h6>1,950원</h6>
								<h6 class="text-muted ml-2">
									<del>2,200원</del>
								</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a href="infoProduct.jsp" class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>상품상세</a> <a href="Cart.jsp"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>장바구니</a>
						</div>
					</div>

					<div class="card product-item border-0">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100"
								src="https://img2.tmon.kr/cdn4/deals/2023/07/03/18937037118/18937037118_front_5739071d74.jpg"
								alt="">
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">(웅진)결명자차</h6>
							<div class="d-flex justify-content-center">
								<h6>1,950원</h6>
								<h6 class="text-muted ml-2">
									<del>2,200원</del>
								</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a href="infoProduct.jsp" class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>상품상세</a> <a href="Cart.jsp"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>장바구니</a>
						</div>
					</div>

					<div class="card product-item border-0">
						<div
							class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
							<img class="img-fluid w-100"
								src="https://img2.tmon.kr/cdn4/deals/2023/07/03/18937037118/18937037118_front_5739071d74.jpg"
								alt="">
						</div>
						<div
							class="card-body border-left border-right text-center p-0 pt-4 pb-3">
							<h6 class="text-truncate mb-3">(웅진)결명자차</h6>
							<div class="d-flex justify-content-center">
								<h6>1,950원</h6>
								<h6 class="text-muted ml-2">
									<del>2,200원</del>
								</h6>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-between bg-light border">
							<a href="infoProduct.jsp" class="btn btn-sm text-dark p-0"><i
								class="fas fa-eye text-primary mr-1"></i>상품상세</a> <a href="Cart.jsp"
								class="btn btn-sm text-dark p-0"><i
								class="fas fa-shopping-cart text-primary mr-1"></i>장바구니</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Products End -->

	


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


	<!-- JavaScript Libraries -->

	<script src="js/easing.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>


	<!-- Template Javascript -->
	<script src="js/main.js"></script>

	<!-- Copy URL Javascript -->

	<script>
	document.addEventListener('DOMContentLoaded', function() {
    // 버튼 클릭 시 URL 복사 및 알림 표시
    const copyURLBtn = document.getElementById('copyURLBtn');
    copyURLBtn.addEventListener('click', function() {
        const url = window.location.href;
        const copySuccessAlert = document.getElementById('copySuccess');
        
        // 클립보드에 복사
        navigator.clipboard.writeText(url).then(function() {
            // 알림 표시
            copySuccessAlert.classList.remove('d-none');
            setTimeout(function() {
                copySuccessAlert.classList.add('d-none');
            }, 3000); // 3초 후 알림 숨김
    	 }).catch(function() {
            console.error('Failed to copy URL to clipboard.');
        });
    });
});

	
	
	document.addEventListener('DOMContentLoaded', function() {
	    // 하트 버튼을 찾아냅니다.
	    const heartButton = document.querySelector('.btn.border');
	    
	    // 수를 저장할 변수를 선언합니다.
	    let count = 0;
	    
	    // 하트 버튼을 클릭했을 때 실행할 함수를 정의합니다.
	    function increaseCount() {
	        count++; // 수를 1 증가시킵니다.
	        
	        // 수를 표시하는 <span> 태그를 찾아서 업데이트합니다.
	        const countSpan = document.querySelector('.col-lg-3.col-6.text-right .badge');
	        countSpan.textContent = count; // 업데이트된 수를 표시합니다.
	    }
	    
	    // 하트 버튼에 클릭 이벤트 리스너를 추가합니다.
	    heartButton.addEventListener('click', increaseCount);
	});
	

// 금액 수량에 따른 총액 변화 기능

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
    function incrementValue() {
        var inputElement = document.getElementById('quantityInput');
        var currentValue = parseInt(inputElement.value, 10);
        inputElement.value = currentValue - 1;
    }

    function decrementValue() {
        var inputElement = document.getElementById('quantityInput');
        var currentValue = parseInt(inputElement.value, 10);
        if (currentValue > 1) {
            inputElement.value = currentValue + 1;
        }
    }
</script>
</body>

</html>