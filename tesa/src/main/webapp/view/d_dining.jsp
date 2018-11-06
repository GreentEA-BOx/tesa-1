<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dining.css">
	
	<!-- Title Page -->
	<section class="bg-title-page_d p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${pageContext.request.contextPath}/images/dining/mainimg.jpg);">
		<h2 class="l-text2_d t-center">
			Restrauant
		</h2>
	</section>
<section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="dn_res_list">Restaurant</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="/tesa/view/d_best_dining.jsp">Best/New Dining</a></li>
				<li class=" m-r-10 p-r-10"><a href="/tesa/view/d_reserve.jsp">Reservation</a></li>
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
								<a href="dn_res_list" class="s-text13">
									전체
								</a>
							</li>
							
							<li class="p-t-4">
								<a href="res_cate1" class="s-text13">
									한식
								</a>
							</li>

							<li class="p-t-4">
								<a href="res_cate2" class="s-text13">
									중식
								</a>
							</li>

							<li class="p-t-4">
								<a href="res_cate3" class="s-text13">
									일식
								</a>
							</li>

							<li class="p-t-4">
								<a href="res_cate4" class="s-text13">
									양식
								</a>
							</li>

							<li class="p-t-4">
								<a href="res_cate5" class="s-text13">
									디저트/카페
								</a>
							</li>
							
							<li class="p-t-4">
								<a href="res_cate6" class="s-text13">
									뷔페/푸드코트
								</a>
							</li>
							<li class="p-t-4">
								<a href="res_cate7" class="s-text13">
									분식
								</a>
							</li>
							<li class="p-t-4">
								<a href="res_cate8" class="s-text13">
									패스트푸드
								</a>
							</li>
							
						</ul>
	

						<div class="search-product pos-relative bo4 of-hidden">
							<form action="res_search" method="post">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-dining" placeholder="음식점을 입력해주세요.">
							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>

				 <div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					
					<!-- Product --> 
					<div class="row">
							<c:forEach items="${list}" var="res">
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							
							<div class="block2">
								<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<a href = "${pageContext.request.contextPath}/view/d_detail.jsp">
									<img src="${pageContext.request.contextPath}/images/dining/rest/${res.dn_res_image}" alt="IMG-DINING">
								</a>
								</div>

								<div class="block2-txt p-t-20 t-center">
									<a href="d_detail.jsp" class="block2-name dis-block s-text3 p-b-5">
										${res.dn_res_name}
									</a>
								</div>
							</div>
						</div>
				</c:forEach>	
					</div>
					<!-- Pagination -->
					<div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div>
				</form>
				</div>
			</div>
			
		</div>	
	</section>