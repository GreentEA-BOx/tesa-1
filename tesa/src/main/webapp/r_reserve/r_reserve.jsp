<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="../css/r_style.css">
</head>
<title>좌석 예약</title>
<!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-40 flex-col-c-m reser_titlesec">
	<h5 style="margin-bottom: 2%" class="reser_title">스테이지 좌석 예약</h5>
</section>
<section class="bg-title-page p-t-80 p-b-80 flex-col-c-m">
<ul>
<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
<li class="reser_li">예약전 확인사항</li> 
</ul>
<hr/>

<p><textarea>익일 공연만 예약이 가능합니다. (예약시간 : 공연 전일 오후 8:00 ~ 익일 오전 8:00 까지)

1매 2좌석 이용 가능합니다.

원활한 관람을 위해 공연시간 15분전까지는 반드시 입장을 완료해 주시기 바랍니다.(공연시간 30분전부터 입장 가능)

공연시간 10분전까지 입장하지 않을 경우 예약석 이용이 불가합니다.

예약증은 출력물 또는 핸드폰으로 찍은 출력증 사진도 사용 가능합니다.

사정에 따라 미리 안내 드리지 못하고 공연이 취소 될 수 있으며 예약석을 이용할 수 없는 경우도 있습니다.

편리한 관람을 위하여 질서 유지에 협조해 주시기 바랍니다.

본 예약증은 비매품이며, 판매할 수 없습니다.

신청 시 잘못 입력한 부분에 대한 책임은 롯데월드 어드벤처에서 책임지지 않습니다.</textarea></p>
<p class="reser_p"><input type="checkbox" id="reser_chk">유의 사항을 숙지하였으며, 위의 내용에 동의합니다.(필수)
</p>
<ul>
<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
<li class="reser_li">개인정보 수집 및 이용동의</li> 
</ul>
<hr/>
<p><textarea>이용자 본인은 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다.

1. 개인정보의 수집 및 이용 목적
공연관람 참가 신청시 본인 확인을 위해 개인정보를 수집하고 있습니다.

2. 수집하는 개인정보의 항목
- 이름, 아이디

· 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.</textarea></p>
<p class="reser_p"><input type="checkbox" id="reser_chk">개인정보 수집 및 이용에 동의합니다.(필수)
</p>
<ul>
<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
<li class="reser_li">예약정보</li> 
</ul>
<hr/> 
<ul>
<li><p>공연명</p>
<p><select>
	<option value="0">[공연선택]</option>
	<option value="1">[드라큐라의 사랑]</option>
</select></p></li>
<li><p>공연일</p>
	<p>2018년 10월 14일</p>
</li>
<li><p>공연시간</p>
<p><select>
	<option value="0">[공연선택]</option>
	<option value="1">[드라큐라의 사랑]</option>
</select></p></li>
</ul>
<ul>
<!-- ul li들 스퀘어로 바꾸기(첫번째만) -->
<li class="reser_li">좌석 선택</li> 
</ul>
	
<section style="margin-left:3%;" class="bg-title-page p-t-50 p-b-50 flex-col-c-m">
	<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw2">
					<button
						class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color">
						신청</button>
					<button
						class="flex-c-m sizefullbbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4">
						취소</button>
							
						</div>

</section>

