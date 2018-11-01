<!-- Title Page -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m join">
    <h2 class="l-text2 t-center">
        JOIN
    </h2>
</section>

<!-- Cart -->
<section class="cart bgwhite p-t-70 p-b-100">
    <div class="container">
        <!-- Cart item -->
        <div class="container-table-cart pos-relative">
            <div class="wrap-table-shopping-cart bgwhite">
                <table class="table-shopping-cart">

                </table>
            </div>
        </div>
        <h5 class="m-text20 t-center p-b-24">
            join us
        </h5>
        <div class="flex-w flex-sb bo10 p-t-15 p-b-20">
            <div class="m-auto w-full-sm">
            <form name="join_form" action="join" method="post">
                <div class="size13 bo4 m-b-12 dis-inline-block">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text"  onkeyup="id_keyup(this.value)" id="id" name="id" placeholder="아이디">

                </div>
                <div class="size25 trans-0-4 m-b-10 dis-inline-block">
                    <!-- Button -->
                    <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4 dis-inline-block" type="button" onclick="idcheck()">중복확인</button>
                </div>
                    	 <div id="chkMsg"></div>
					
                <div class="size13 t-center bo4 m-b-12">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="password" onkeyup="pw1_keyup(this.value)" name="pw" id="pw1" placeholder="비밀번호">
                </div>
                
                <div class="size13 t-center bo4 m-b-12">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="password" onkeyup="pw2_keyup(this.value)" id="pw2" placeholder="재확인">
                </div>
                
                <div class="size13 t-center bo4 m-b-12">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" id="name" name="name" onkeyup="name_keyup(this.value)" id="name" placeholder="이름">
                </div>

				<div class="join-tel">

	                <div class="size13 rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden m-b-12 float-l">
	                    <select class="selection-1" name="phone1">
	                        <option value="010" selected>010</option>
	                        <option value="011">011</option>
	                        <option value="012">012</option>
	                        <option value="013">013</option>
	                    </select>
	                </div>
					
	                <div class="size13 t-center bo4 m-b-12 m-l-10 float-l">
	                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" onkeyup="phone2_keyup(this.value)" id="phone2" name="phone2" id="tel" placeholder="연락처">
	                </div>
                </div>
                
            <!--     
                <div class="join-addr">
                		<div class="size13 t-center bo4 m-b-12">
	                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" id="zip" name="zip" placeholder="ì°í¸ë²í¸">
	                </div>
                		<div class="size13 t-center bo4 m-b-12 float-l">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" id="addr1" name="addr1" placeholder="ì£¼ì">
                		</div>
                		<div class="size13 t-center bo4 m-b-12 float-l m-l-10">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" id="addr2" name="addr2" placeholder="ìì¸ ì£¼ì">
               		</div>
                
                </div> -->
                
                
                <div class="join-mail">
                
                <div class="size13 t-center bo4 m-b-12 float-l">
                    <input class="sizefull s-text7 p-l-15 p-r-15" type="text" id="email" name="email1" onkeyup="email_keyup(this.value)" placeholder="이메일">
                </div>
                <div class="size13 t-center m-b-12 float-l">
                    <label>@</label>
                </div>
                <div class="size13 rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden m-b-12 float-l">
                    <select class="selection-1" name="email2">
                        <option value="naver.com" selected>naver.com</option>
                        <option value="daum.net">daum.net</option>
                    </select>
                </div>
                </div>

                <div class="container t-center">
                    <div class="size25 trans-0-4 m-b-10 dis-inline-block">
                        <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4 in_member" type="button" onclick="in_member()" disabled="disabled">가입</button>
                    </div>
                    <div class="size25 trans-0-4 m-b-10 dis-inline-block">
                        <!-- Button -->
                        <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" type="button" onclick="history.go(-1)">취소</button>
                    </div>
                </div>
                </form>
            </div>
        </div>

    </div>
</section>
