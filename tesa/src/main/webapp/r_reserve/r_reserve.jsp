<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<!--===============================================================================================-->
<link href='//fonts.googleapis.com/css?family=Kotta+One'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/r_css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="${pageContext.request.contextPath}/js/r_js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/r_js/jquery.seat-charts.js"></script>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/r_style.css">
<script>
	$(function() {
		$('#decreaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat, 10);
			num--;
			if (num <= 0) {
				alert('1명이상 선택해주세요.');
				num = 1;
			}
			$('#numberUpDown').text(num);
			$('.numberUpDown').text(num);
		});
		$('#increaseQuantity').click(function(e) {
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat, 10);
			num++;

			if (num > 5) {
				alert('아이디 하나당 최대 3장입니다.');
				num = 5;
			}
			$('#numberUpDown').text(num);
			$('.numberUpDown').text(num);
		});
	});
</script>
<!-- chk -->
<script>
	$(document).ready(function() {
		$("#reser_chk").click(function() {
			var submenu = $(this).prev("#reserbefore");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		})
		});
	$(document).ready(function() {
		$("#reser_chk2").click(function() {
			var submenu = $(this).prev("#reserafter");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		})
		});
</script>
<!-- huchoice -->
<script>
	$(document).ready(function() {
		$("#menu>a").click(function() {
			var submenu = $(this).next("ul");
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		}).mouseover(function() {
			$(this).next("ul").slideDown();
		});
	});
</script>
</head>

<title>좌석 예약</title>
<!-- Title Page -->
<body class="r_reservebody">
	<section
		class="bg-title-page p-t-40 p-b-40 flex-col-c-m reser_titlesec">
		<h5 style="margin-bottom: 2%" class="reser_title">스테이지 좌석 예약</h5>
	</section>
	<section class="bg-title-page p-t-80 p-b-80 flex-col-c-m">
		<ul>
			<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
			<li class="reser_li">예약전 확인사항</li>
		</ul>

		<p>
			<textarea class="wintextarea" id="reserbefore" readonly>익일 공연만 예약이 가능합니다. (예약시간 : 공연 전일 오후 8:00 ~ 익일 오전 8:00 까지)

1매 2좌석 이용 가능합니다.

원활한 관람을 위해 공연시간 15분전까지는 반드시 입장을 완료해 주시기 바랍니다.(공연시간 30분전부터 입장 가능)

공연시간 10분전까지 입장하지 않을 경우 예약석 이용이 불가합니다.

예약증은 출력물 또는 핸드폰으로 찍은 출력증 사진도 사용 가능합니다.

사정에 따라 미리 안내 드리지 못하고 공연이 취소 될 수 있으며 예약석을 이용할 수 없는 경우도 있습니다.

편리한 관람을 위하여 질서 유지에 협조해 주시기 바랍니다.

본 예약증은 비매품이며, 판매할 수 없습니다.

신청 시 잘못 입력한 부분에 대한 책임은 TESA STUDIO에서 책임지지 않습니다.</textarea>
			<input type="checkbox" id="reser_chk"><span class="chkspan">유의 사항을 숙지하였으며, 위의 내용에
			동의합니다.(필수)</span>
		</p>
		<ul>
			<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
			<li class="reser_li">개인정보 수집 및 이용동의</li>
		</ul>
		<p>
			<textarea class="wintextarea" id="reserafter"readonly>이용자 본인은 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다.

1. 개인정보의 수집 및 이용 목적
공연관람 참가 신청시 본인 확인을 위해 개인정보를 수집하고 있습니다.

2. 수집하는 개인정보의 항목
- 이름, 아이디

· 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.</textarea>
			<input type="checkbox" id="reser_chk2"><span class="chkspan">개인정보 수집 및 이용에
			동의합니다.(필수)</span>
		</p>
		<ul>
			<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
			<li class="reser_li">예약 정보</li>
		</ul>
		<ul>
			<li class="reser_con_li"><p class="reser_con_p">예약자명&nbsp;</p>
				<p class="reser_date">김영주</p></li>
			<hr />
			<li class="reser_con_li"><p class="reser_con_p">공연명&nbsp;</p>
				<p>
					<select class="reser_select"
						onchange="javascript:consert_title(this.options[this.selectedIndex].text)">
						<option value="0">[공연선택]</option>
						<option value="${cdelist.C_CODE}">${cdelist.C_TITLE}</option>
					</select>
				</p></li>
			<hr />
			<li class="reser_con_li"><p class="reser_con_p">공연일&nbsp;</p>
			<c:set var="now" value="<%=new java.util.Date()%>" />
			<c:set var="sysYear"><fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일" /></c:set> 
				<p class="reser_date"><c:out value="${sysYear}"/></p></li>
			<hr />
			<li class="reser_con_li"><p class="reser_con_p">공연시간</p>
				<p>
					<select class="reser_select" id="seldate"
						onchange="javascript:consert_date(this.options[this.selectedIndex].text)">
						<option value="0" selected>[공연시간]</option>
						<c:forEach var="m" items="${getTime}">
						<option value="${m.STARTTIME}">${m.STARTTIME}</option>
						</c:forEach>
					</select>
				</p></li>
			<hr />
		</ul>
		<ul>
			<li id="menu" class="reser_li"><a>인원 선택</a>
				<ul class="hide r_reli">
					<li>일반</li>
					<li>
						<div class="number">
							<button id="decreaseQuantity"><span class="plma">-</span></button>
							<span id="numberUpDown">0</span>
							<button id="increaseQuantity"><span class="plma">+</span></button>
						</div>
					</li>
				</ul></li>
			<li class="reser_li">좌석 선택</li>
		</ul>
	</section>
	<div class="content">
		<div>
			<div id="legend"></div>
			<div class="demo">
				<div id="seat-map">
					<div class="front">SCREEN</div>
				</div>
				<div class="div_table">
					<table class="reser_table">

						<tr>
							<th>공연제목 :</th>
							<td id="contitle"></td>
						</tr>
						<tr>
							<th>공연시간 :</th>
							<td id="condate"></td>
						</tr>
						<tr>
							<th>선택인원 :</th>
							<td><span class="numberUpDown"></span></td>
						</tr>
						<tr>
							<th>선택가능 :</th>
							<td><span id="counter"></span></td>
						</tr>
						<tr>
							<th>결제금액 :</th>
							<td><b><span id="total"></span></b></td>
						</tr>
						<tr>
							<th id="tath" colspan="2">선택좌석</th>

						</tr>
					</table>
				</div>
				<div id="selected-seats">
				</div>
				<div style="clear: both"></div>
			</div>
		</div>
	</div>
	<section style="margin-left: 3%;"
		class="bg-title-page p-t-50 p-b-50 flex-col-c-m">
		<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 padding-left31">
			<button
				class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color" onclick="c_resave()">
				신청</button>
			<button
				class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4">
				취소</button>
		</div>
	</section>
</body>
<!--=====================seats===================================-->
<script type="text/javascript">
	var price = 5000; //price
	$(document).ready(function() {
						var $cart = $('#selected-seats'), //Sitting Area
						$counter = $('#counter'), //Votes
						$total = $('#total'); //Total money
						var sc = $('#seat-map')
								.seatCharts(
										{
											map : [ //Seating chart
											'aaaaaaaa',
											'aaaaaaaa',
											'________',
											'aaaaaa__',
											'aaaaaaaa',
											'aaaaaaaa',
											'aaaaaaaa',
											'aaaaaaaa',
											'aaaaaaaa',
											'__aaaa__' ],
											naming : {
												top : false,
												getLabel : function(character,
														row, column) {
													return column;
												}
											},
											legend : { //Definition legend
												node : $('#legend'),
												items : [[ 'a', 'available','선택가능' ],
														[ 'a', 'unavailable','선택불가' ],
														[ 'a', 'selected','선택좌석' ]]
											},
											click : function() { //Click event
												if (this.status() == 'available') { //optional seat
													var minus = $('#numberUpDown').text()*1;
													 if(minus <= 0){
														alert("인원을 먼저 선택해주세요.");
														return 'available';
													}
													else{
														 $('<li style="margin-left: 28%;">'
																	+ (this.settings.row + 1) + '행'
																	+ this.settings.label + '열' + '</li>')
																.attr('id','cart-item-'+ this.settings.id)
																.attr('class','con-list2')
																.data('seatId',this.settings.id)
																.appendTo($cart);
																/* $counter.text(sc.find('selected').length + 1); */
																var a = $('#numberUpDown').text()*1;
																$counter.text(a-(sc.find('selected').length+1));
																/* alert($('#numberUpDown').val()); */
																$total.text(recalculateTotal(sc) + price + "원");
																return 'selected';
													 }
													
													
													/*  selected 선택된 unavailable선택안된 available선택가능*/
												} else if (this.status() == 'selected') { //Checked
													//Update Number
													/* $counter.text(sc.find('selected').length - 1); */
													var a = $('#numberUpDown').text()*1;
													$counter.text(a-(sc.find('selected').length-1));
													//update totalnum
													$total.text(recalculateTotal(sc) - price + "원");
													//Delete reservation
													$('#cart-item-' + this.settings.id).remove();
													//optional
													return 'available';
												} else if (this.status() == 'unavailable') { //sold
													return 'unavailable';
												} else {
													return this.style();
												}
											}
										});
						//sold seat
						sc.get([ '1_2', '4_4', '4_5', '6_6', '6_7', '8_5',
								'8_6', '8_7', '8_8' ]).status('unavailable');
						});
	//sum total money
	function recalculateTotal(sc) {
		var total = 0;
		sc.find('selected').each(function() {
			total += price;
		});
		return total;
	}
</script>
<!--===============================================================================================-->
<script type="text/javascript" src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>

<!-- autoselectscript -->
<script>
	function consert_title(value) {
		$('#contitle').empty();
		$('#contitle').append(value);
	}
	function consert_date(value) {
		$('#condate').empty();
		$('#condate').append(value);
	}
</script>
<script>
	function c_resave(){
		var titlecode = $('.reser_select').val();
				
	}
</script>
	