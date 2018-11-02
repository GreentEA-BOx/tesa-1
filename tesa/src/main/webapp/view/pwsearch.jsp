<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/r_style.css">
<!-- Title Page -->
<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m">
	<h2 class="l-text5 t-center">비밀번호 찾기</h2>
</section>

<!-- Cart -->
<section class="cart bgwhite p-t-40 p-b-100">
	<div class="container">
		<div class="applyDiv2">
			<hr class="hrtitle">
			<div class="writeType1">
				<form name="pwsearch" action="pwsearch" method="post">
					<ul>
							<li class="joinli">
							<div class="left">
								<p class="tit star">아이디 *</p>
							</div>
							<div class="inputArea">
								<input type="text" 
									name="searchid" id="searchid" class="joinus" />
							</div>
						</li>
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">이름 *</p>
							</div>
							<div class="inputArea">
								<input type="text" 
									name="searchname" id="searchname" class="joinus" />
							</div>
						</li>
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">가입시 사용한이메일 *</p>
							</div>
							<div class="inputArea">
								<input type="text" placeholder="yondoo" id="searchemail"
									name="email1" maxlength="40" title="이메일" class="joininput" />
								<span class="spanclass">@</span>
								<select id="email2" name="email2" class="joinselect" title="ì´ë©ì¼">
									<option value="hanmail.net">hanmail.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="naver.com" selected>naver.com</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="korea.com">korea.com</option>
									<option value="orgio.net">orgio.net</option>
									<option value="shinbiro.com">shinbiro.com</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="netian.com">netian.com</option>
								</select> 
							</div>
						</li>
						<hr>
					<%-- 	<c:set var="idc" value="${idc}" />
						<div style="color:red; font-weight:bold; margin-bottom:3%;"class="t-center">
						<c:if test="${idc != null}">
						<c:forEach var="idc" items="${idc}">
							íì¬ ì°¾ì¼ì  ìì´ëë : ${idc} ìëë¤.
						</c:forEach>
						</c:if></div> --%>
						<div class="container t-center margin-top">
						
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
									type="button" onclick="pw_search()">찾기</button>
							</div>
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<!-- Button -->
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4"
									type="button" onclick="history.go(-1)">취소</button>
							</div>
						</div>
					</ul>
				</form>
			</div>
		</div>
	</div>
</section>