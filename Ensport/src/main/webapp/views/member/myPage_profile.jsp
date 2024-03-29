<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="col-lg-4">
		<div class="blog_right_sidebar">
			<aside class="single_sidebar_widget search_widget align-self-center">
				<img class="" src="resources/img/elements/soccer_icon1.png" alt="">
				<span class="mx-auto" data-html="true" data-toggle="tooltip" data-placement="top" title="
<pre>

<h4>ENSPORTS Levels</h4>

Level 1. 아기 스포츠단
Level 2. 우리동네 와일드카드
Level 3. 동호회 에이스
Level 4. 국내리그 스타
Level 5. 우주제일운동왕

</pre>">
					<b id="myEnsportsLevel"></b>
				</span>
				<div class="br"></div>
			</aside>
			<aside class="single_sidebar_widget author_widget">
				<img class="author_img rounded-circle" src="${contextPath}/resources/img/blog/sonny.jpg" alt="" >
				<h4><i class="bi bi-person-fill"></i> ${loginUser.userNickname }</h4>
				<div class="social_icon">
					<p>${loginUser.email}</p>
				</div>
				<div class="br"></div>
			</aside>
			<aside class="single_sidebar_widget post_category_widget">
				<h4 class="widget_title">내가 쓴 글</h4>
				<ul class="list cat-list">
					<li>
						<a href="${contextPath }/myPageBoard.me?currentPage=1"	class="d-flex justify-content-between">
							<p>게시글</p>
							<p id="boardCount"></p>
						</a>
					</li>
					<li>
						<a href="${contextPath }/myPageReply.me?currentPage=1" class="d-flex justify-content-between">
							<p>댓글</p>
							<p id="replyCount"></p>
						</a>
					</li>
					<li>
						<a href="${contextPath }/myPageReview.me?currentPage=1" class="d-flex justify-content-between">
						<p>리뷰</p>
						<p id="reviewCount"></p>
					</a>
					</li>
					<li>
						<a href="${contextPath }/myPageQa.me?currentPage=1" class="d-flex justify-content-between">
							<p>문의사항</p>
							<p id="qaCount"></p>
						</a>
					</li>
				</ul>
				<div class="br"></div>
			</aside>

			<!-- 내 경기 정보 -->
			<aside class="single_sidebar_widget post_category_widget">
				<h4 class="widget_title">나의 경기</h4>
				<ul class="list cat-list">
					<li>
						<a href="${contextPath }/myPageReservation.me?currentPage=1" class="d-flex justify-content-between">
							<p>경기 예약 내역</p>
							<p id="reservationCount"></p>
						</a>
					</li>
				<li>
					<a href="${contextPath }/myPageMyPlace.me?currentPage=1" class="d-flex justify-content-between">
						<p>찜한 경기장</p>
						<p id="myPlaceCount"></p>
					</a>
				</li>
				</ul>
				<div class="br"></div>
			</aside>

			<!-- 내 경기 정보 -->
<!-- 			<aside class="single_sidebar_widget post_category_widget"> -->
<!-- 				<h4 class="widget_title">나의 캐시</h4> -->
<!-- 				<ul class="list cat-list"> -->
<!-- 					<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 							<p>캐시 충전하기 (후순위)</p> -->
<!-- 							<p>0 ￦</p> -->
<!-- 					</a></li> -->
<!-- 				</ul> -->
<!-- 			</aside> -->
		</div>
	</div>
	
	
	<script type="text/javascript">
	
		$(function(){
			
			
			$('[data-toggle="tooltip"]').tooltip();
			
			
			let userId = "${loginUser.userId}";
			let userNo = ${loginUser.userNo};
			
			$.ajax({
				url: "myPageProfile.me",
				data: { userNo : userNo,
						userId : userId
				},
				success: function(result){
					
// 					console.log("=============");
// 					console.log(result);
// 					console.log("=============");
					
					//JSON data로 변환
					var data = JSON.parse(result);
					
					$("#boardCount").text(data.boardCount);
					$("#replyCount").text(data.replyCount);
					$("#qaCount").text(data.qaCount);
					$("#reviewCount").text(data.reviewCount);
					$("#reservationCount").text(data.reservationCount);
					$("#myPlaceCount").text(data.myPlaceCount);
					
					
					var rvCount = data.reviewCount;
					
					//등급 산정하기
					if(rvCount < 4){
						$("#myEnsportsLevel").text("Lv 1. 아기 스포츠단");
					}else if(rvCount < 8){
						$("#myEnsportsLevel").text("Lv 2. 우리동네 와일드카드");
					}else if(rvCount < 13){
						$("#myEnsportsLevel").text("Lv 3. 동호회 에이스");
					}else if(rvCount < 19){
						$("#myEnsportsLevel").text("Lv 4. 국내리그 스타");
					}else{
						$("#myEnsportsLevel").text("Lv 5. 우주제일운동왕");
					}
					
				},
				error: function(){
					console.log("불러오기 실패");	
				}
				
			});
			
		});
	
	</script>
	

</body>
</html>