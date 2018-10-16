<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<!--===============================================================================================-->
<link href='//fonts.googleapis.com/css?family=Kotta+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="../css/r_css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="../js/r_js/jquery-1.11.0.min.js"></script>
<script src="../js/r_js/jquery.seat-charts.js"></script>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="../css/r_style.css">

<!-- ==========select============= -->

</head>
<title>좌석 예약</title>
<!-- Title Page -->
<body class="r_reservebody">
<section class="bg-title-page p-t-40 p-b-40 flex-col-c-m reser_titlesec">
	<h5 style="margin-bottom: 2%" class="reser_title">스테이지 좌석 예약</h5>
</section>
<section class="bg-title-page p-t-80 p-b-80 flex-col-c-m">
	<ul>
		<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
		<li class="reser_li">예약전 확인사항</li>
	</ul>
	<hr class="hrtitle" />

	<p>
		<textarea>익일 공연만 예약이 가능합니다. (예약시간 : 공연 전일 오후 8:00 ~ 익일 오전 8:00 까지)

1매 2좌석 이용 가능합니다.

원활한 관람을 위해 공연시간 15분전까지는 반드시 입장을 완료해 주시기 바랍니다.(공연시간 30분전부터 입장 가능)

공연시간 10분전까지 입장하지 않을 경우 예약석 이용이 불가합니다.

예약증은 출력물 또는 핸드폰으로 찍은 출력증 사진도 사용 가능합니다.

사정에 따라 미리 안내 드리지 못하고 공연이 취소 될 수 있으며 예약석을 이용할 수 없는 경우도 있습니다.

편리한 관람을 위하여 질서 유지에 협조해 주시기 바랍니다.

본 예약증은 비매품이며, 판매할 수 없습니다.

신청 시 잘못 입력한 부분에 대한 책임은 TESA STUDIO에서 책임지지 않습니다.</textarea>
	</p>
	<p class="reser_p">
		<input type="checkbox" id="reser_chk">유의 사항을 숙지하였으며, 위의 내용에
		동의합니다.(필수)
	</p>
	<ul>
		<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
		<li class="reser_li">개인정보 수집 및 이용동의</li>
	</ul>
	<hr class="hrtitle" />
	<p>
		<textarea>이용자 본인은 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다.

1. 개인정보의 수집 및 이용 목적
공연관람 참가 신청시 본인 확인을 위해 개인정보를 수집하고 있습니다.

2. 수집하는 개인정보의 항목
- 이름, 아이디

· 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.</textarea>
	</p>
	<p class="reser_p">
		<input type="checkbox" id="reser_chk">개인정보 수집 및 이용에 동의합니다.(필수)
	</p>
	<ul>
		<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
		<li class="reser_li">예약 정보</li>
	</ul>
	<hr class="hrtitle" />
	<ul >
		<li class="reser_con_li"><p class="reser_con_p">공연명&nbsp;</p>
			<p>
		        <select class="reser_select">
					<option value="0">[공연선택]</option>
					<option value="1">드라큐라의 사랑</option>
				</select>
			</p></li>
			<hr />
		<li class="reser_con_li"><p class="reser_con_p">공연일&nbsp;</p>
			<p class="reser_date">2018년 10월 14일</p></li>
			<hr />
		<li class="reser_con_li"><p class="reser_con_p">공연시간</p>
			<p>
				<!-- <select class="reser_select" id="seldate" onchange="consert_time(this)"> -->
				<select class="reser_select" id="seldate" onchange="javascript:consert_date(this.options[this.selectedIndex].text)"> 
				
					<option value="0">[공연시간]</option>
					<option value="1">15:30</option>
					<option value="2">20:30</option>
				</select>
			</p></li>
			<hr />
	</ul>
	<ul>
		<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
		<li class="reser_li">좌석 선택</li>
		<hr class="hrtitle" />
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
					<th>공연제목  : </th>
					<td>드라큐라의 사랑</td>
				</tr>
				<tr>
					<th>공연시간  : </th>
					<td id="condate"></td>
				</tr>
				<tr>
					<th>티켓장수  : </th>
					<td><span id="counter"></span></td>
				</tr>
				<tr>
					<th>결제금액  : </th>
					<td><b><span id="total"></span></b></td>
				</tr>
				<tr>
					<th id="tath"colspan="2">선택좌석</th>
					
				</tr>
			</table>
			</div>
				<div id="selected-seats"></div>
			<div style="clear:both"></div>
	    </div>

	</div>
</div>
<section style="margin-left: 3%;"
	class="bg-title-page p-t-50 p-b-50 flex-col-c-m">
	<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw2 padding-left31">
		<button
			class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color">
			신청</button>
		<button
			class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4">
			취소</button>
	</div>
</section>
</body>
<!--=====================seats===================================-->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

			<script type="text/javascript">
				var price = 1000; //price
				$(document).ready(function() {
					var $cart = $('#selected-seats'), //Sitting Area
					$counter = $('#counter'), //Votes
					$total = $('#total'); //Total money
					
					var sc = $('#seat-map').seatCharts({
						map: [  //Seating chart
							'aaaaaaaa',
							'aaaaaaaa',
							'________',
							'aaaaaa__',
							'aaaaaaaa',
							'aaaaaaaa',
							'aaaaaaaa',
							'aaaaaaaa',
							'aaaaaaaa',
							'__aaaa__'
						],
						naming : {
							top : false,
							getLabel : function (character, row, column) {
								return column;
							}
						},
						legend : { //Definition legend
							node : $('#legend'),
							items : [
								[ 'a', 'available',   '선택가능' ],
								[ 'a', 'unavailable', '선택불가'],
								[ 'a', 'selected', '선택좌석']
							]					
						},
						click: function () { //Click event
							if (this.status() == 'available') { //optional seat
								$('<li style="margin-left: 28%;">'+(this.settings.row+1)+'행'+this.settings.label+'열'+'</li>')
									.attr('id', 'cart-item-'+this.settings.id)
									.attr('class', 'con-list2')
									.data('seatId', this.settings.id)
									.appendTo($cart);

								$counter.text(sc.find('selected').length+1);
								$total.text(recalculateTotal(sc)+price+"원");
											
								return 'selected';
							} else if (this.status() == 'selected') { //Checked
									//Update Number
									$counter.text(sc.find('selected').length-1);
									//update totalnum
									$total.text(recalculateTotal(sc)-price+"원");
										
									//Delete reservation
									$('#cart-item-'+this.settings.id).remove();
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
					sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8']).status('unavailable');
						
				});
				//sum total money
				function recalculateTotal(sc) {
					var total = 0;
					sc.find('selected').each(function () {
						total += price;
					});
					return total;
				}
			</script>

<!--===============================================================================================-->
<script type="text/javascript" src="../vendor/select2/select2.min.js"></script>
<script type="text/javascript">
	$(".selection-1").select2({
		minimumResultsForSearch : 20,
		dropdownParent : $('#dropDownSelect1')
	});
</script>
<script>
function consert_date(value){
	alert(value);

	
	$('#condate').empty();
	$('#condate').append(value);
}
</script>