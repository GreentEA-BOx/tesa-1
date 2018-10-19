<!-- Title Page -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" type="text/css" href="../css/r_style.css">
</head>
<section class="bg-title-page p-t-20 p-b-30 flex-col-c-m bottomsolid">

    <h2 class="l-text5 t-center">로그인</h2>
</section>
<section class="bg-title-page p-t-80 p-b-50 flex-col-c-m t-center">
	<form id="login_frm" name="login_frm" method="post" action="">
		<input type="hidden" name="sid" value="WORLD" title="SID" class="notRequired" />
		<input type="hidden" name="popup" value="N" title="팝업여부" class="notRequired" />
		<input type="hidden" id="password" name="password" value="" title="팝업여부" class="notRequired" />
		<input type="hidden" name="returnurl" id="returnurl" title="리턴URL" class="notRequired" />
		<div class="loginDiv">
			<div class="formDiv">
				<p><input type="text" class="joininput2" placeholder="아이디" name="loginid" id="loginid" title="아이디" maxlength="20" /></p>
				<p><input type="password" class="joininput2" placeholder="비밀번호"  name="pw" id="pw" title="비밀번호"  maxlength="30"/></p>
				<div class="loginUtil">
					<p class="check"><input type="checkbox" id="idsave" name="idsave" title="아이디 저장" value="Y" class="notRequired"  />
					<label for="idsave">아이디 저장</label></p>
					<div class="findArea">
						<a href="#" target="_blank">아이디 찾기</a>
						<a href="#" target="_blank">비밀번호 찾기</a>
					</div>
				</div>
			</div>
					<div class="m-t-10 m-b-10 t-center">
						<button
							class="sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color"
							onclick="#">
						로그인</button>
					</div>
		</div>
	</form>
</section>