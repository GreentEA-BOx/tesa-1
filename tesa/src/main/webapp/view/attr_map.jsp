<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<!-- Menu -->
<section class="bg-title-page p-t-40 p-b-50 sub-attrmain flex-col-c-m">
	<h2 class="l-text2 t-center">Attrection</h2>
</section>
<!-- content page -->
<section class="bgwhite p-t-60">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-lg-9 p-b-75">
				<div class="p-r-50 p-r-0-lg">
					<div class="item-blog-txt">

						<!-- item blog -->
						<div class="item-blog p-b-80">
							<h3 class="m-text5 t-center">Map</h3>
							<div id="map_map">
							<div class="item-slick1 item1-slick1" style="background-image: url(../images/map/ad1.png);">
							<div class="wrap-btn-slide1 w-size1 animated visible-true" data-appear="zoomIn">
							<!-- Button -->
							<a href="product.html" class="flex-c-m bo-rad-23 s-text2 bgwhite trans-0-4 test100" style="position:absolute;
   							margin: 250px 0px 0px 550px; width:20px; height:20px;background-color:#e65540;color: #ffffff;" onmouseover="map_hov1()" onmouseout="map_hov2()">1</a>
   							<div id="map_hov"></div>
						 	</div>
							</div>
							</div>
							
						</div>

					</div>
				</div>
			</div>

			<div class="col-md-4 col-lg-3 p-b-75">
				<div class="rightbar">
					<!-- Search -->
					<div class="pos-relative bo11 of-hidden">
						<input class="s-text7 size16 p-l-23 p-r-50" type="text"
							name="search-product"
							placeholder="검색">

						<button class="flex-c-m size5 ab-r-m color1 color0-hov trans-0-4">
							<i class="fs-13 fa fa-search" aria-hidden="true"></i>
						</button>
					</div>

					<!-- Categories -->
					<h4 class="m-text23 p-t-56 p-b-34">
						상세정보
						</h4>

					<ul>
						<li class="p-t-6 p-b-8 bo6"><a href="#"
							class="s-text13 p-t-5 p-b-5" onmouseup="map1()"> 어드벤처 1층 </a></li>

						<li class="p-t-6 p-b-8 bo7"><a href="#"
							class="s-text13 p-t-5 p-b-5" onmouseup="map2()"> 어드벤처 2층 </a></li>
							
						<li class="p-t-6 p-b-8 bo7"><a href="#"
							class="s-text13 p-t-5 p-b-5" onmouseup="map3()"> 어드벤처 3층 </a></li>
							
						<li class="p-t-6 p-b-8 bo7"><a href="#"
							class="s-text13 p-t-5 p-b-5" onmouseup="map4()"> 매직아일랜드 </a></li>

						<li class="p-t-6 p-b-8 bo7"><a href="#"
							class="s-text13 p-t-5 p-b-5" onmouseup="map5()"> 키디존 </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
