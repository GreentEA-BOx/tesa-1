<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
      <script>
     
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
	 
	
	<section class="bg-title-page flex-c-m p-t-120 p-b-120 p-l-15 p-r-15 sub-bus text-white" style="background-image: url(../images/palace/9b089f95-b4c5-4b80-a8c5-781c3d98516d2.jpg); min-height:428px">
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
	
	<!-- Reservation -->
	<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<span class="tit2 t-center">
							TESA PALACE
						</span>

						<h3 class="tit3 t-center m-b-35 m-t-2">
							결제
						</h3>
					</div>

						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">
									Name(Payment)
								</span>

								<div class="wrap-inputname size11 bo16 bg-white bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="name" placeholder="Name(Payment)">
								</div>
							</div>

							<div class="col-md-4">
								<!-- Phone -->
								<span class="txt9">
									Phone
								</span>

								<div class="wrap-inputphone size11 bg-white bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="phone" placeholder="Phone">
								</div>
							</div>

							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9">
									Email
								</span>

								<div class="wrap-inputemail size11 bg-white bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="email" placeholder="Email">
								</div>
							</div>
							
							<div class="col-md-4">
								<!-- People -->
								<span class="txt9">
									Payment method
								</span>

								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23">
									<!-- Select2 -->
									<select class="selection-1" name="p_method">
									    <option>--결제방법--</option>
										<option id='o_bank'>무통장입금</option>
										<option id='o_bank'>계좌이체</option>
										<option id='o_card'>카드결제</option>
									</select>
								</div>
							</div>
							
							<div class="col-md-4">
								<!-- People -->
								<span class="txt9">
									Payment Detail
								</span>

								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23" id="bank">
									<!-- Select2 -->
									<select class="selection-1" name="p_detail" id="paybank">
									    <option>--은행--</option>
										<option>국민은행</option>
										<option>우리은행</option>
										<option>하나은행</option>
									</select>
									
									</div>
									
								 	 <div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23"  style="display:none" id="card">
									Select2
									<select class="selection-1" name="p_detail" id="paycard">
									    <option>--은행--</option>
										<option>국민카드</option>
										<option>우리카드</option>
										<option>하나카드</option>
									</select>
									</div>
							</div>

						</div> 

						
					<div class="wrap-btn-booking flex-c-m m-t-6">
							<!-- Button3 -->
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_hanbok_com.jsp'">
								Submit
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
						한복 예시
					</h4>
					<p>남자(한복) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;남자(개량한복) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;여자(한복) &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;여자(개량한복)  </p>
					
                    <img src="../images/palace/hanbok/sodamhanbok_544.jpg">
                    <img src="../images/palace/hanbok/536_shop1_239841.jpg">
                    
					<img src="../images/palace/hanbok/593a9a3063a95.jpg">
                    <img src="../images/palace/hanbok/013001000020.jpg">
				</div>

				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						무료한복대여 예약시 주의사항
					</h4>
					
					<p>
						- 한복대여점에서 확인절차 뒤 안내를 받으시면 됩니다.
					</p>

					<p>
						- 마련한 한복 중에서 무작위로 준비 해놓기 때문에 받으시는 한복 색상과 스타일은 사진과 다를 수 있습니다.
					</p>
					
					<p>
						- 퇴장시 다시 한복대여점에 방문하신 뒤 반납하시면 됩니다.
					</p>
					
					<p>
						- 1인 1복장이 원칙입니다.
					</p>
					
					<p>
						- 고의적인 훼손 및 분실시 벌금이 있습니다.(10만원)
					</p>
				
				</div>
				
				<div class="w-full-md p-t-40">
					<h4 class="txt5 m-b-18">
						연락처
					</h4>

					<p>
						한복대여점 : 02-xxxx-xxxx
					</p>
				</div>

			</div>
		</div>
	</section>