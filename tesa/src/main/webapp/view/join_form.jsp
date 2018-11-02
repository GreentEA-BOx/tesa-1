<!-- Title Page -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/r_style.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="bg-title-page p-t-20 p-b-30 flex-col-c-m bottomsolid">

	<h2 class="l-text5 t-center">회원가입</h2>
</section>

<!-- Cart -->
<section class="cart bgwhite p-t-70 p-b-100">
	<div class="container">
		<!-- Cart item -->
	<!-- 	<div class="container-table-cart pos-relative">
			<div class="wrap-table-shopping-cart bgwhite">
				<table class="table-shopping-cart">

				</table>
			</div>
		</div> -->
		<div class="applyDiv2">
			<p class="titli bub">기본정보</p>
			<hr class="hrtitle">
			<div class="writeType1">
				<form name="join_form" action="join" method="post">
					<ul>
						<li class="joinli">
							<div class="left">
								<p class="tit star">아이디 *</p>
							</div>

							<div class="inputArea">
								<input type="text" placeholder="영문,숫자만 입력가능" class="joinus"
									onkeyup="id_keyup(this.value)" id="id" name="id" maxlength="20"/>
									<div id="chkMsg"class="inputArea">
							</div>
							</div>
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<!-- Button -->
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4 dis-inline-block joinbtn"
									type="button" onclick="idcheck()">중복확인</button>
							</div>
						</li>
						
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">비밀번호 *</p>
							</div>
							<div class="inputArea">
								<input type="password" onkeyup="pw1_keyup(this.value)" name="pw"
									id="pw1" class="joinus" />
							</div>
						</li>
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">재입력 *</p>
							</div>
							<div class="inputArea">
								<input type="password" onkeyup="pw1_keyup(this.value)"
									name="pw2" id="pw2" class="joinus" />
							</div>
						</li>
						<hr>
							<li class="joinli">
							<div class="left">
								<p class="tit star">이름 *</p>
							</div>
							<div class="inputArea">
								<input type="text" onkeyup="name_keyup(this.value)"
									name="name" id="name" class="joinus" />
							</div>
						</li>
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">이메일 *</p>
							</div>
							<div class="inputArea">
								<input type="text" onkeyup="email_keyup(this.value)" placeholder="abcdef" id="email"
									name="email1" maxlength="40" title="이메일" class="joininput" />
								<span class="spanclass">@</span>
								<select id="email2" name="email2" class="joinselect" title="이메일">
									<option value="naver.com" selected>naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
								</select> <input type="hidden" name="rqstEmail" id="rqstEmail"
									title="이메일" value="" class="emailChk" />
							</div>
							<div class="emailcheck"></div>
						</li>
						<hr>
						<li class="joinli">
							<div class="left">
								<p class="tit star">연락처 *</p>
							</div>
							<div class="inputArea">

								<select class="joininput" name="phone1">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="012">012</option>
									<option value="013">013</option>
								</select> <input class="joinus" type="text"
									onkeyup="phone2_keyup(this.value)" id="phone2" name="phone2"
									id="tel" placeholder="연락처">
							</div>
						</li>
						<hr>
						<div class="container t-center margin-top">
							<div class="size25 trans-0-4 m-b-10 dis-inline-block">
								<button
									class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4 in_member"
									type="button" onclick="in_member()" disabled="disabled">가입</button>
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
