<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script>
   function payDetail(){
	   var selectOption = $("#selectMethod option:selected").val();
	    
	   if(selectOption=='o_card')
	   {
	   $('#bank').css("display", "none");
	   $('#card').css("display", "block");
	   $('#blank').css("display", "none");
	   }
	   else
	   {
	   $('#bank').css("display", " block");
	   $('#card').css("display", "none");
	   $('#blank').css("display", "none");
	   }
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
									<select class="selection-1" name="p_method" id="selectMethod" onchange="payDetail()">
									    <option>--결제방법--</option>
										<option value="o_bank">무통장입금</option>
										<option value="o_bank">계좌이체</option>
										<option value="o_card">카드결제</option>
									</select>
								</div>
							</div>
							
							<div class="col-md-4">
								<!-- People -->
								<span class="txt9">
									Payment Detail
								</span>
								
								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23" id="blank">
									<!-- Select2 -->
									<select class="selection-1" name="p_detail" id="blank">
									    <option>----</option>
										
									</select>
									</div>

								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23" id="bank" style="display:none">
									<!-- Select2 -->
									<select class="selection-1" name="p_detail" id="bank">
									    <option>--은행--</option>
										<option>국민은행</option>
										<option>우리은행</option>
										<option>하나은행</option>
									</select>
									
									</div>
									
								 	 <div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23"  style="display:none" id="card">
									<select class="selection-1" name="p_detail" id="card">
									    <option>--카드--</option>
										<option>현대카드</option>
										<option>삼성카드</option>
										<option>신한카드</option>
									</select>
									
									</div>
									
									</div>
                          
                           </div> 
	                            <div class="col-md-4">
								<!-- fee -->
								<span class="txt9">
									입장료 : 
								</span>
								<span class="txt9" id="pay">
									<%=request.getParameter("pay")%>
								</span>
								<span class="txt9">
									원 
								</span>
								</div>
						
					<div class="wrap-btn-booking flex-c-m m-t-6">
							<!-- Button3 -->
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_res_com.jsp'">
								Submit
							</button>
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4"
							onclick="location.href='palace_res_com.jsp'">
								나중에 결제
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