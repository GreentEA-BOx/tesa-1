<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
	<link rel="stylesheet" type="text/css" href="../css/dining.css">
<body class="animsition">

	<!-- Title TEXT -->
	<section class="bg-title-page2_d p-t-40 p-b-30 flex-col-c-m">
		<h2 class="l-text100_d t-center">
			수사
		</h2>
		<p class="l-text101_d t-center p-t-30">
			수사는 다양한 일본 지역대표 맛집 요리, 시즌별 즉석요리를 합리적인 가격으로 즐길 수 있는 일본요리 전문점입니다. 
		<p>
	</section>
	
	<!-- sub menu -->
<section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="dining.jsp">HOME</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="dreserve.jsp">Reservation</a></li>
				<li class=" m-r-10 p-r-10 bo17"><a href="javascript:void(0)">Time Table</a></li>
				<li class=""><a href="javascript:void(0)">menu</a></li>
			</ul>
		</nav>
	</div>
	</section>
	
	<!-- Main page -->
	<section class="bgwhite p-t-66 p-b-38">
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
			</div>
			<div class="search-product pos-relative bo4 of-hidden">
							<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="search-dining" placeholder="음식명을 입력해주세요.">

							<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
								<i class="fs-12 fa fa-search" aria-hidden="true"></i>
							</button>
							</div>
							</div>
										
				<div class="col-md-4 p-b-30 m-r-30" >
					<div class="hov-img-zoom">
						<img src="${pageContext.request.contextPath}/images/dining/susa.jpg" style="float:left" alt="IMG-KYUDONG">
					</div>
				</div>
			<div class="m-l-20 m-r-100 p-b-20">
				<ul style="display: flex;">
					<li>
						<img src="${pageContext.request.contextPath}/images/dining/ddet1.png" style="float:left" />
						
					</li>
					<li><p>대표메뉴</p>
							<p>규동, 라멘</p>
					</li>
				</ul>
			</div>
				
			</div>
		</div>
	</section>


	
