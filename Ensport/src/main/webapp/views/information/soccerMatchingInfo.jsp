<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>축구 경기 매칭 상세 페이지</title>
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/linearicons.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/themify-icons.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/nice-select.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/nouislider.min.css">
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/main.css">
</head>

<body>

	<%@ include file="../common/menubar.jsp" %> 

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>축구 경기 매칭</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">경기매칭<span class="lnr lnr-arrow-right"></span></a>
						<a href="single-product.html">축구</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_Product_carousel">
                    <c:forEach var="at"  items="${slist}" >
                        <div class="single-prd-item" width="250" height="150">
                            <img class="img-fluid" src="${contextPath }${at.filePath}${at.changeName}" >
                        </div>
                       
                        
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3>${p.placeName }</h3>
                    <ul class="list">
                        <li><a class="active" href="#"><span>Category</span> : ${p.categoryName }</a></li>
                    </ul>
                    <p>${p.subInfo }</p>

                    <br>
                    <div class="single-element-widget mt-30">
                        <div class="default-select" id="default-select">
                            <select>
                                <option value="1">7:00~9:00</option>
                                <option value="2">9:30~11:30</option>
                                <option value="3">12:00~14:00</option>
                                <option value="4">14:30~16:30</option>
                                <option value="5">17:00~19:00</option>
                                <option value="6">19:30~21:30</option>
                                <option value="7">22:00~24:00</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <div class="datasheet p-3 mb-2 text-white" style="background-color: #e8f0f2;">
                        <a href="" id="participantCount" class="text-black" style="color: black;">참여인원: </a>
                    </div>
                    <br><br>
                    <div class="card_area d-flex align-items-center">
                        <a class="primary-btn" href="#">예약하기</a>
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">상세설명</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">정보</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
					 aria-selected="false">리뷰</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
					<p>${p.subInfo }</p>
					
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>size</h5>
									</td>
									<td>
										<h5>${p.placeSize }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>parking</h5>
									</td>
									<td>
										<h5>${p.parkingYn }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Date</h5>
									</td>
									<td>
										<h5>${p.placeDate }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>start time</h5>
									</td>
									<td>
										<h5>${p.startTime }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>end time</h5>
									</td>
									<td>
										<h5>${p.endTime }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>mac capacity</h5>
									</td>
									<td>
										<h5>${p.maxCapacity }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>category</h5>
									</td>
									<td>
										<h5>${p.categoryName }</h5>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>Overall</h5>
										<h4>4.0</h4>
										<h6>(03 Reviews)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>Based on 3 Reviews</h3>
										<ul class="list">
											<li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%= request.getContextPath() %>/resources/img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%= request.getContextPath() %>/resources/img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="<%= request.getContextPath() %>/resources/img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="../common/footer.jsp" %> 

	<script src="<%= request.getContextPath() %>/resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="<%= request.getContextPath() %>/resources/js/vendor/bootstrap.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/jquery.nice-select.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/jquery.sticky.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/nouislider.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="<%= request.getContextPath() %>/resources/js/gmaps.min.js"></script>
	<script src="<%= request.getContextPath() %>/resources/js/main.js"></script>
	
</body>

</html>