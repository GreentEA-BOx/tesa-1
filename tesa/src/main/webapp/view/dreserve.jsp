<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<link rel="stylesheet" type="text/css" href="../css/dining.css">
	<!-- Title Page -->
	<section class="bg-title-pages p-t-50 p-b-40 flex-col-c-m" style="background-image: url(${pageContext.request.contextPath}/images/dining/mainimg.jpg);">
		<h2 class="l-text2h t-center">
			Tesa Dining
		</h2>
	</section>
<section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="dining.jsp">HOME</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="javascript:void(0)">Reservation</a></li>
				<li class=" m-r-10 p-r-10 bo17"><a href="javascript:void(0)">Time Table</a></li>
				<li class=""><a href="javascript:void(0)">menu</a></li>
			</ul>
		</nav>
	</div>
	</section>
	
<!-- Reservation -->
	<section class="section-reservation bg1-pattern p-t-50 p-b-113">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 p-b-30">
					<div class="t-center">
						<span class="tit2 t-center">
							TESA Dining
						</span>

						<h3 class="tit3 t-center m-b-35 m-t-2">
							Reservation
						</h3>
					</div>

					<form class="wrap-form-reservation size22 m-l-r-auto">
						<div class="row">
							<div class="col-md-4">
								<!-- Date -->
								<span class="txt9">
									Date
								</span>

								<div class="wrap-inputdate pos-relative bg-white txt10 size11 bo16 bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="my-calendar bo-rad-10 sizefull txt10 p-l-15" type="text" name="date">
									<i class="btn-calendar fa fa-calendar ab-r-m hov-pointer m-r-18" aria-hidden="true"></i>
								</div>
							</div>

							<div class="col-md-4">
								<!-- Time -->
								<span class="txt9">
									Time
								</span>

								<div class="wrap-inputtime size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23">
									<!-- Select2 -->
									<select class="selection-1" name="time">
										<option>9:00</option>
										<option>9:30</option>
										<option>10:00</option>
										<option>10:30</option>
										<option>11:00</option>
										<option>11:30</option>
										<option>12:00</option>
										<option>12:30</option>
										<option>13:00</option>
										<option>13:30</option>
										<option>14:00</option>
										<option>14:30</option>
										<option>15:00</option>
										<option>15:30</option>
										<option>16:00</option>
										<option>16:30</option>
										<option>17:00</option>
										<option>17:30</option>
										<option>18:00</option>
									</select>
								</div>
							</div>

							<div class="col-md-4">
								<!-- People -->
								<span class="txt9">
									People
								</span>

								<div class="wrap-inputpeople size11 bg-white bo16 bo-rad-10 p-t-13 p-l-15 p-r-15 m-t-3 m-b-23">
									<!-- Select2 -->
									<select class="selection-1" name="people">
										<option>1 person</option>
										<option>2 people</option>
										<option>3 people</option>
										<option>4 people</option>
										<option>5 people</option>
										<option>6 people</option>
										<option>7 people</option>
										<option>8 people</option>
										<option>9 people</option>
										<option>10 people</option>
										<option>10+</option>
						
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<!-- Name -->
								<span class="txt9">
									Name
								</span>

								<div class="wrap-inputname size11 bo16 bg-white bo-rad-10 m-l-2 m-t-3 m-b-23">
									<input class="bo-rad-10 sizefull txt10 p-l-15 p-r-15" type="text" name="name" placeholder="Name">
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

						</div>

						<div class="wrap-btn-booking flex-c-m m-t-80">
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
