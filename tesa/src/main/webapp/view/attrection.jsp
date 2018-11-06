<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-50 sub-attrmain flex-col-c-m">
	<h2 class="l-text2 t-center">Attrection</h2>
</section>

<section class="newproduct bgwhite p-t-45 p-b-105">
	<div class="container" >
		<div class="sec-title p-b-60">
			<h3 class="m-text5 t-center">attrection main</h3>
		</div>
	<div class="container p-b-20" style="width:50%">
		<div class="row">
			<div class="rs2-select3 bo4 of-hidden attr-size1 m-t-5 m-b-5 m-r-10">
				<select class="selection-1" name="sorting">
					<option>위치</option>
					<option>어드벤처 1층</option>
					<option>어드벤처 2층</option>
					<option>어드벤처 3층</option>
					<option>매직 아일랜드</option>
					<option>키디존</option>
				</select>
			</div>

			<div class="rs2-select3 bo4 of-hidden attr-size1 m-t-5 m-b-5 m-r-10">
				<select class="selection-1" name="sorting">
					<option>나이</option>
					<option>5세 이하</option>
					<option>6 ~ 12세</option>
					<option>12 ~ 60세</option>
					<option>60세 이상</option>
				</select>
			</div>
			<div class="rs2-select3 bo4 of-hidden attr-size1 m-t-5 m-b-5 m-r-10">
				<select class="selection-1" name="sorting">
					<option>키</option>
					<option>130cm이하</option>
					<option>130 ~ 140cm</option>
					<option>140 ~ 150cm</option>
					<option>150 ~ 160cm</option>
					<option>160 ~ 170cm</option>
					<option>170 ~ 180cm</option>
					<option>180cm이상</option>
				</select>
			</div>
			<div class="attr-size2 m-t-5 m-b-5">
				<!-- Button -->
				<button
					class="attr-button hov1 s-text1 con-tc trans-0-4">조회하기</button>
			</div>
		</div>
	</div>
		<!-- Slide2 -->
		<div class="wrap-slick2">
			<div class="slick2 slick-initialized slick-slider">

<!-- 블록1 -->
				<div class="slick-list draggable">
				<c:forEach items="${attrlist}" var="attr">
				<input type= "hidden" value="${attr.at_attr_code}" name="code">
					<div class="item-slick2 p-l-15 p-r-15 p-b-20 slick-slide slick-active"
						data-slick-index="1" aria-hidden="false" tabindex="0"
						style="width: 290px;">
						<!-- Block2 -->
					<a href="attr_d_list?code=${attr.at_attr_code}" class="block2-name dis-block t-center m-text14 p-b-7"
									tabindex="0">
						<div class="block2 addr_border attr-item con-tc hov-img-zoom">
							<div
								class="block2-img wrap-pic-w of-hidden pos-relative ">
								 <img
									src="${pageContext.request.contextPath}/images/attr/${attr.at_attr_img_main}" alt="IMG-PRODUCT">
							</div>

							<div class="block2-txt p-t-20" style="padding-bottom: 10px;">
								
									<h3 style="font-weight: bold;">${attr.at_attr_name}</h4>  <span class="block2-price s-text8 p-r-5"> 위치 : ${attr.at_attr_position}
								</span>
							</div>
						</div>
						</a>
					</div>
				</c:forEach>	
				</div>
			</div>
		</div>

	</div>

</section>