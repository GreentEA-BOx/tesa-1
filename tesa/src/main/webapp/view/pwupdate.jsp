<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/r_style.css">
<!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m">
	<h2 class="l-text5 t-center">비밀번호 변경</h2>
</section>

<!-- Cart -->
<section class="cart bgwhite p-t-40 p-b-100">
	<div class="container">
		<div class="applyDiv2">
			<hr class="hrtitle">
			<div class="writeType1">
				<form name="pwup" action="pwup" method="post">
					<ul>
						<li class="joinli">
							<div class="left">
								<p class="tit star">아이디 *</p>
							</div>
							<div class="inputArea">
								<label class="margin-top16px">${id}</label> 
							</div>
						</li>
						<hr>
							<li class="joinli">
							<div class="left">
								<p class="tit star">이메일 *</p>
							</div>
							<div class="inputArea">
								<label class="margin-top16px">${email}</label>
							</div>
							<input type="hidden" name="m_email" value="${email}">
							<input type="hidden" name="m_id" value="${id}">
							<input type="hidden" name="m_name" value="${name}">
						</li>
						<hr>
							<li class="joinli">
							<div class="left">
								<p class="tit star">비밀번호 *</p>
							</div>
							<div class="inputArea">
								<input type="text" 
									name="m_pw" id="pw1" class="joinus" />
							</div>
						</li>
				
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">재확인 *</p>
							</div>
							<div class="inputArea">
								<input type="text" 
									name="pw2" id="pw2" class="joinus" />
							</div>
						</li>
						<hr>
						<div class="container t-center margin-top">
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
									onclick="pwup()">변경</button>
							</div>
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<!-- Button -->
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
									type="button" onclick="window.close()">취소</button>
							</div>
						</div>
					</ul>
				</form>
			</div>
		</div>
	</div>
</section>