<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/r_style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/r_script.js"></script>
</head>
<!-- Title Page -->
<section class="bg-title-page p-t-130 p-b-140 flex-col-c-m"
	style="background-image: url(${pageContext.request.contextPath}/images/r_main.jpg);">
	<h5 style="margin-bottom: 2%" class="l-text3 t-center">공연</h5>
	<h5 class="l-text4 t-center">공연과 함께 더 재미있는 하루를 만들어요!</h5>
</section>
<!-- tq -->
<!-- Cart -->
<section class="cart bgwhite p-t-50 p-b-100">
	<div class="container">
		<div class="flex-w flex-m w-full-sm con-date">
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn1" class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn" >
					</button>
			</div>
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn2"
					class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn">
					</button>
			</div>
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn3"
					class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn" >
					</button>
			</div>
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn4"
					class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn">
					</button>
			</div>
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn5"
					class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn" >
					</button>
			</div>
			<div class="size10 trans-0-4 m-t-10 m-b-10">
				<!-- Button -->
				<button id="datebtn6"
					class="flex-c-m sizefullb con-tc con-rad hov1 s-text1 trans-0-4 datebtn" >
					</button>
			</div>
		</div>
		<!-- sub -->
		<div class="row">
			<ul class="con-items t-center">
				<li class="con-item1">
					<div class="con-sub">
						<a href="#">전체</a><a href="#">스테이지</a><a href="#">페스티벌</a><a
							href="#">기타공연</a>
					</div>
				</li>
			</ul>
		</div>

		<!-- list -->
		<div class="row">
		<c:forEach items="${clist}" var="m">
			<ul class="con-items">
				<li class="con-item">
					<p class="con-img">
						<img src="${pageContext.request.contextPath}/images/${m.C_I_THUMBNAIL}">
					</p>
					<div class="con-text">
						<p class="con-title">${m.C_TITLE}</p>
						<p class="con-content">${m.C_CONTENT}</p>
						<div class="con-times p-t-20">
							<p>
								<span class="con-subject">공연 시간</span>
								<span class="con-time">
									 ${m.STARTTIME} ~ ${m.ENDTIME}
									 </span>
							</p>
						</div>
						<div class="con-times">
							<p>
								<span class="con-subject">공연 장소</span><span class="con-time">${m.C_M_MAP}</span>
							</p>
						</div>
						<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw">
							<button
								class="flex-c-m sizefullbb con-tc con-rad2 hov1 s-text1 trans-0-4"
								onclick="conreseat'">좌석예약</button>
						</div>
						<!-- <div class="con-hash">
							<p>
								#<a>드라큘라</a>&nbsp;#<a>응 노잼</a>
							</p>
						</div> -->
					</div> <!-- <a href="javascript:void(0)" class="con-detail t-center text-white">상세보기</a> -->
					<a href="c_detail/${m.C_CODE}" class="con-detail t-center text-white">상세보기</a>
				</li>
			</ul>
	</c:forEach>
		</div>
		<div class="margin-top2">※위 일정은 공연 사정에 따라 변경 또는 취소될 수 있습니다.</div>
	</div>
</section>
