<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
	
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/r_style.css">
</head>
	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m">
		<h5 style="margin-bottom: 2%" class="l-text5 t-center">${cdelist.C_TITLE}</h5>
		<h5 class="l-text6 t-center">${cdelist.C_CONTENT}</h5>
		<!-- <div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw btn2">
			<label class="l-texth">#</label>
			Button
			<button
				class="flex-c-m sizefullbbb con-tc con-rad3 hov1 s-text5 trans-0-4"
				onclick="r_re()">드라큘라</button>
			<button
				class="flex-c-m sizefullbbb con-tc con-rad3 hov1 s-text5 trans-0-4"
				onclick="r_re()">사랑</button>
		</div> -->
	</section>
	<!-- Slide -->
	<section class="slide1">
		<div class="wrap-slick1">
			<div class="slick1">
				<div class="item-slick1 item1-slick1" style="background-image: url(${pageContext.request.contextPath}/images/${cdelist.C_I_1});">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-250 p-b-250">
						<div class="wrap-btn-slide1 w-size1 animated visible-false">
						</div>
					</div>
				</div>
				<div class="item-slick1 item2-slick1" style="background-image: url(${pageContext.request.contextPath}/images/${cdelist.C_I_2});">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-250 p-b-250">
						<div class="wrap-btn-slide1 w-size1 animated visible-false">
						</div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1" style="background-image: url(${pageContext.request.contextPath}/images/${cdelist.C_I_3});">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-250 p-b-250">
						<div class="wrap-btn-slide1 w-size1 animated visible-false">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="bg-title-page p-t-80 p-b-80 flex-col-c-m"
	 	style="background-image: url(../images/r_card.jpg);">
	<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw">
					<!-- Button -->
					<button
						class="flex-c-m sizefullbbbb con-tc con-cardbtn hov1 s-text1 trans-0-4 dis-inline" onclick="location.href='r_join.jsp'">
						참여신청</button>
					<!-- Button -->
					<button
						class="flex-c-m sizefullbbbb con-tc con-cardbtn hov1 s-text1 trans-0-4 btn2 dis-inline" onclick="r_re()">
						스테이지 좌석예약</button>
						</div>
		※ 가든 스테이지 좌석 예약 시 무대 가까이에서 공연을 즐길 수 있습니다
		<div class="cardbig">
		<div class="card dis-inline-block">
		<img class="cardimg" src="${pageContext.request.contextPath}/images/r_icon1.png">
		<p class="cardtitle">공연기간</p>
		<p class="carddate">
		<fmt:formatDate value="${cdelist.C_SDATE}"  pattern="yyyy-MM-dd"/></p>
		<p class="carddate">~</p>
		<p class="carddate">
		<fmt:formatDate value="${cdelist.C_EDATE}"  pattern="yyyy-MM-dd"/></p>
		</div>
		
		<div class="card dis-inline-block">
		<img class="cardimg" src="${pageContext.request.contextPath}/images/r_icon2.png">
		<p class="cardtitle">소요시간</p>
		<p class="carddate">${cdelist.RUNNINGTIME}분</p>
		</div>
		
		<div class="card dis-inline-block">
		<img class="cardimg" src="${pageContext.request.contextPath}/images/r_icon3.png">
		<p class="cardtitle">공연시간</p>
		<p class="carddate">${cdelist.STARTTIME}~${cdelist.ENDTIME}</p>
		</div>
		</div>
	</section>
	<section class="bg-title-page p-t-80 p-b-40 flex-col-c-m">
		<h5 style="margin-bottom: 2%" class="l-texthh t-center">공연 장소</h5>
			<img src="${pageContext.request.contextPath}/images/${cdelist.C_M_IMAGE}">
			<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw">
			<button class="flex-c-m sizefullbbbb con-tc con-cardbtn2 hov1 s-text1 trans-0-4 con-list" onclick="location.href='/tesa/consert'">
						목록</button>
					<!-- Button -->
					</div>
	</section>

	<script>
		function r_list(){
			location.href="r_show.jsp";
		}
	</script>
	<script>
		function r_re(){
			location.href="r_re.jsp";
		}
	</script>