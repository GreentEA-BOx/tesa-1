<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
	<link rel="stylesheet" type="text/css" href="../css/dining.css">
	<!-- Title Page -->
	<section class="bg-title-page_d p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${pageContext.request.contextPath}/images/dining/mainimg.jpg);">
		<h2 class="l-text2_d t-center">
			Best New Dining
		</h2>
	</section>
<section class="sub-menu p-t-10 p-b-10">
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

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-1" name="sorting">
									<option>분류</option>
									<option>Best</option>
									<option>New</option>
								</select>
							</div>

							<div class="rs2-select2 bo4 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-1" name="sorting">
									<option>가격</option>
									<option>10000원 미만</option>
									<option>10000원 ~ 30000원</option>
									<option>30000원 ~ 50000원</option>
									<option>50000원 ~ 100000원</option>
									<option>100000원 이상</option>

								</select>
							</div>
						</div>

						<span class="s-text8 p-t-5 p-b-5">
						</span>
					</div>

					<!-- Product -->
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/bnd/kyu.jpg"  alt="IMG-DINING">

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
										규동(수사)
									</a>

									<span class="block2-price m-text6 p-r-5">
										8000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/bnd/bur.jpg" alt="IMG-DINNING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										스파이스 치킨버거 Set(Hols 수제버거)
									</a>

									<span class="block2-price m-text6 p-r-5">
										7000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/bnd/coco.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										바나나 코코넛(Slow Cafe)
									</a>

									<span class="block2-price m-text6 p-r-5">
										7000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/bnd/don.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										규카츠(하지메마시떼)
									</a>

									<span class="block2-price m-text6 p-r-5">
										10000원
									</span>

								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelbest_d">
									<img src="../images/dining/bnd/ke.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										치킨케밥Set(메이드인터키)
									</a>

									<span class="block2-price m-text6 p-r-5">
										9000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/bnd/ore.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										오레오 츄러스 SET(츄러스킹)
									</a>

									<span class="block2-price m-text6 p-r-5">
										7000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
									<img src="../images/dining/bnd/ozing.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										오징어 꽃이 피었습니다(신당동떡볶이)
									</a>

									<span class="block2-price m-text6 p-r-5">
										12000원
									</span>
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/bnd/sal.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										샐러드바(Salad In My Life)
									</a>

									<span class="block2-price m-text6 p-r-5">
										성인 : 12000원
										5세이하 : 5000원							
									</span>
									
								</div>
							</div>
						</div>

						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
									<img src="../images/dining/bnd/sset.jpg" alt="IMG-DINING">

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
									<a href="ddetail.jsp" class="block2-name dis-block s-text3 p-b-5">
										스시 커플세트(이쿠죠)
									</a>

									<span class="block2-price m-text6 p-r-5">
										25000원
									</span>
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
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
	</section>