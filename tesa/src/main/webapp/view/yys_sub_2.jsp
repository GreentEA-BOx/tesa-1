<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/yys_prg.css">

<section class="yys_img2 p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${pageContext.request.contextPath}/images/yys_img/2222.jpg);">
		<h2 class="l-text2 t-center">
			Leisure Reservation

		</h2>
		<p class="m-text13 t-center">
			예 약 하 기</p>
	</section>

	<br>
	
	
	
	
	<!-- Reservation -->
	<section class="section-reservation bg1-pattern p-t-100 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<span class="tit2 t-center">
							TESA Leisure
						</span>

						<h3 class="tit3 t-center m-b-35 m-t-2">
							빠 른 예 약 
						</h3>
					</div>
					
				

					<form class="wrap-form-reservation size22 m-l-r-auto shuttle on">
						<h4 class="p-t-40 p-b-40">패키지 예약</h4>
						<div class="row">
							<div class="col-md-4">
								<!-- Date -->
								<span class="txt9">
									날짜
								</span>

								<div class="wrap-inputdate pos-relative bg-white txt10 size11 bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="my-calendar bo-rad-10 sizefull txt10 p-l-15" type="text" name="date">
									<i class="btn-calendar fa fa-calendar ab-r-m hov-pointer m-r-18" aria-hidden="true"></i>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Time -->
								<span class="txt9">
									패키지
								</span>

								<div class="wrap-inputtime size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23">
									<!-- Select2 -->
									<select class="selection-1" name="Leisure_item">
										<option>패키지 선택</option>
										<option>빅3+바벸</option>
										<option>빅5+바벸</option>
										<option>TASA Friend</option>
										<option>TASA Premium</option>
		
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<!-- People -->
								<span class="txt9">
									인원
								</span>

								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23">
									<!-- Select2 -->
									<select class="selection-1" name="Leisure_people">
										<option>인원수</option>
										<option>1 명</option>
										<option>2 명</option>
										<option>3 명</option>
										<option>4 명</option>
										<option>5 명</option>
										<option>6 명</option>
										
									</select>
									
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="Leisure_name">
									예약자
								</span>

								<div class="wrap-inputname size11 bo16 bg-white bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="name" placeholder="Name">
								</div>
							</div>

							<div class="col-md-4">
								<!-- Phone -->
								<span class="txt9">
									전화번호
								</span>

								<div class="wrap-inputphone size11 bg-white bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="phone" placeholder="Phone">
								</div>
							</div>

							<div class="col-md-4">
								<!-- Email -->
								<span class="txt9">
									이메일
								</span>

								<div class="wrap-inputemail size11 bg-white bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="email" placeholder="Email">
								</div>
							</div>

						</div>

						<div class="wrap-btn-booking flex-c-m m-t-6">
							<!-- Button3 -->
							<button type="submit" class="btn3 flex-c-m size13 txt11 p-l-10 p-r-10 text-white trans-0-4">
								예약하기
							</button>
						</div>
					</form>
					
					
				</div>
			</div>
		</div>
	</section>
	