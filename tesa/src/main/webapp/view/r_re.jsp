<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="../css/r_style.css">
</head>
<!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-40 flex-col-c-m">
	<h5 style="margin-bottom: 2%" class="l-text5 t-center">스테이지 좌석신청</h5>
	<!-- <h5 class="l-text4 t-center">공연과 함께 더 재미있는 하루를 만들어요!</h5> -->
</section>
<section class="bg-title-page p-t-80 p-b-80 flex-col-c-m"
	style="background-image: url(../images/r_detail.jpg);">
	<h5 style="padding-bottom:3%;" class="l-text4 t-center">공연을 더 가까이에서 만나고 싶다면?</h5>
	<h5 style="margin-bottom: 2%; width:930px;" class="l-text7 t-center btnw1">가든스테이지에서
		진행되는 공연을 <c class="c">좌석예약</c>을 통해<d class="d"> 더 앞에서! 더 편하게! 즐겨보세요.</d></h5>
	<div class="flex-w flex-m m-t-10 m-b-10 re_btn">
	<ul>
		<li class="r_reli"><p
			class="flex-c-m r_rebtn con-tc s-text1 trans-0-4">
			좌석 예약 시간</p><p class="r_ree">공연 전일 오후 8:00 ~ 익일 오전 8:00</p></li>
		<!-- Button -->
		<li class="r_reli"><p
			class="flex-c-m r_rebtn con-tc s-text1 trans-0-4">
			좌석 예약 공연</p><p class="r_ree">드라큐라의 사랑</p></li>
			</ul>
	</div>
	<h5 class="text1">※ 가든 스테이지 좌석 예약 시 무대 가까이에서 공연을 즐길 수 있습니다</h5>
	<div class="cardbig1">

		<div class="card1 dis-inline-block">
			<p class="cardtitle1"><img src="../images/r_danger.png">좌석예약 전 확인하세요</p>
			<p class="carddate1">좌석예약은 ID당 1일 1회 신청 가능합니다.</p>
			<p class="carddate1">접속 기기의 시간 설정에 따라 신청 페이지 오픈 시각의 차이가 발생할 수
				있습니다.</p>
			<p class="carddate1">오후 8시 이전에 예약 신청 페이지를 미리 열어두면 오류가 발생할 수 있습니다.</p>
			<p class="carddate1">원활한 관람을 위해 공연시작 15분 전까지 착석을 완료해주시기 바랍니다.
				(공연시작 30분 전부터 착석 가능)</p>
			<p class="carddate1">공연시작 10분전까지 입장하지 않을 경우, 이용이 불가합니다.</p>
		</div>
	</div>
</section>
<section style="margin-left:3%;" class="bg-title-page p-t-50 p-b-50 flex-col-c-m">
	<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw2">
					<button
						class="flex-c-m sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color"
						onclick="javascript:r_reserve()">
						좌석 신청하기</button>
					<button
						class="flex-c-m sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4">
						공연 스케줄 확인하기</button>
							<button
						class="flex-c-m sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4">
						좌석 배치도 보기</button>
						</div>

</section>

<script>
function r_reserve(){
	window.open("${pageContext.request.contextPath}/r_reserve/r_reserve.jsp","좌석 예약","width=730,height=600,resizable=no;")
}
</script>