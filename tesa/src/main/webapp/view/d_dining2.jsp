<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
	<link rel="stylesheet" type="text/css" href="../css/dining.css">
	<!-- Title Page -->
	<section class="bg-title-page_d p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${pageContext.request.contextPath}/images/dining/mainimg.jpg);">
		<h2 class="l-text2_d t-center">
			Tesa Restaurant
		</h2>
	</section>
<section class="sub-menu p-t-10 p-b-10 t-center">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="d_dining.jsp">Restaurant</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="d_best_dining.jsp">Best/New Dining</a></li>
				<li class=" m-r-10 p-r-10"><a href="d_reserve.jsp">Reservation</a></li>
			</ul>
		</nav>
	</div>
	</section>

	<!-- Main page -->
	<section class="bgwhite p-t-55 p-b-65">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7">
							Categories
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="#" class="s-text13 active1">
									한식
								</a>
							</li>

							<li class="p-t-4">
								<a href="#" class="s-text13">
									중식
								</a>
							</li>

							<li class="p-t-4">
								<a href="#" class="s-text13">
									일식
								</a>
							</li>

							<li class="p-t-4">
								<a href="#" class="s-text13">
									양식
								</a>
							</li>

							<li class="p-t-4">
								<a href="#" class="s-text13">
									패스트푸드
								</a>
							</li>
							
							<li class="p-t-4">
								<a href="#" class="s-text13">
									디저트/카페
								</a>
							</li>
						</ul>

						<div class="search-product pos-relative bo4 of-hidden">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-dining" placeholder="음식점을 입력해주세요.">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>

					<!-- Product -->
					<div style="width:77%"class="row">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/rest/victoria.jpg"  alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/rest/oreo.jpg" alt="IMG-DINNING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/rest/treeble.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/rest/natuur.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/rest/rotirori.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/rest/staffhotdog.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/rest/acuapraza.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약 하러가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/rest/arabianbazaar.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/rest/cafed'azur.jpg" alt="IMG-DINING">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											<!-- Button -->
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												예약하러 가기
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										음식점명
									</a>
								</div>
							</div>
						</div>

						<!-- <div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							Block2
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="images/item-11.jpg" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											Button
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										Frayed denim shorts
									</a>

									<span class="block2-oldprice m-text7 p-r-5">
										$29.50
									</span>

									<span class="block2-newprice m-text8 p-r-5">
										$15.90
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							Block2
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="images/item-12.jpg" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											Button
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										Herschel supply co 25l
									</a>

									<span class="block2-price m-text6 p-r-5">
										$75.00
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							Block2
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="images/item-15.jpg" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
										<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a>

										<div class="block2-btn-addcart w-size1 trans-0-4">
											Button
											<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
												Add to Cart
											</button>
										</div>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										Denim jacket blue
									</a>

									<span class="block2-price m-text6 p-r-5">
										$92.50
									</span>
								</div>
							</div>
						</div>
					</div> -->

					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
