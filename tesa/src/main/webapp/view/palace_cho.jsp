<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script>
    
    function submit1(){
   	 var pay = <%=request.getParameter("pay")%>
   	 location.href='palace_pay.jsp?pay='+pay;
    }
    </script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>

<!-- Title Page -->
	 
	<!-- <section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="../view/palace.jsp">PALACE</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="../view/palace_res.jsp">Narration</a></li>
				<li class=" m-r-10 p-r-10 bo17"><a href="../view/palace_hanbok.jsp">Hanbok</a></li>
				<li class=""><a href="javascript:void(0)">Check&Cancel</a></li>
			</ul>
		</nav>
	</div>
	</section> -->
	
	<section class="bg-title-page flex-c-m p-t-120 p-b-120 p-l-15 p-r-15 sub-bus text-white" style="background-image: url(../images/palace/5b0e429af320a96377541.jpg); min-height:428px">
		<h2 class="tit6 t-center">
			
		</h2>
	</section>
	<section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="../view/palace.jsp">PALACE</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="../view/palace_res.jsp">Narration</a></li>
				<li class=" m-r-10 p-r-10 bo17"><a href="../view/palace_hanbok.jsp">Hanbok</a></li>
				<li class=""><a href="javascript:void(0)">Check&Cancel</a></li>
			</ul>
		</nav>
	</div>
	</section>
	<!--<section>
		 <div class="container">
			<div class="info-reservation p-t-40 p-b-70" style="text-align:center">
				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						결제 방법 선택
					</h4>
					<p>즉시결제(무통장입금,계좌이체,카드결제 등)과 현장결제 중 선택 하실 수 있습니다.</p>
					<div class="wrap-btn-booking flex-c-m m-t-6">
							Button3
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_pay.jsp'">
								즉시결제
							</button>
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_res_com.jsp'">
								현장결제
							</button>
						</div>
				</div>
              </div>
		</div> 
		</section>-->
		
		<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		
		<div class="container">
			<div class="info-reservation p-t-40 p-b-70" style="text-align:center">
				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						결제 방법 선택
					</h4>
					<p>즉시결제(무통장입금,계좌이체,카드결제 등)과 현장결제 중 선택 하실 수 있습니다.</p>
					<div class="wrap-btn-booking flex-c-m m-t-6">
							<!-- Button3 -->
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="submit1()">
								즉시결제
							</button>
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_res_com.jsp'">
								현장결제
							</button>
							

					</div>
					</div>
					</div>
					</div>
					
					</section>
		
	
	<section>
		<div class="container">
			<div class="info-reservation p-t-40 p-b-70">
				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						단체해설 예약시 주의사항
					</h4>

					<p>
						- 해설은 불특정 다수의 관람객을 대상으로 이루어지므로 이해가 부족한 초등학교 저학년 및 미취학 아동의 단체 해설 예약은 불가함을 알려드립니다.
					</p>
					
					<p>
						- 10인 미만 개인 관람객은 별도의 예약 없이 해설에 참여하실 수 있습니다.
					</p>
					<p>
						- 10인 이상의 단체는 예약이 필요하며 한 회당 30명까지 예약이 가능합니다.
					</p>
					<p>
						- 단체해설예약은 별도해설이 아니며, 예약자와 개별적으로 참여하는 관람객이 함께 해설을 받습니다.
					</p>
				</div>

				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						연락처
					</h4>

					<p>
						LHS : 010-xxxx-xxxx
					</p>
				</div>

			</div>
		</div>
	</section>
	