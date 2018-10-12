<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="keywords" content="궁, 경복궁, 왕궁, 광화문, 법궁" />
<meta name="description" content="경복궁 사이트 메인 페이지입니다." />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=375, user-scalable=no, minimal-ui, target-densitydpi=device-dpi" />
<meta name="format-detection" content="telephone=no" />
<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
<script src="../js/jquery-1.9.1.min.js"></script>
<script src="../js/gnbJs.js"></script>	
<script src="../js/jquery.easing.1.3.js"></script>

<!-- for mobile -->
<script src="/common/js/m_front_js.js"></script>
<link href="" rel="stylesheet" type="text/css" id="cssHref" />
<link href="" rel="stylesheet" type="text/css" id="cssHrefPc" />


<title>문화재청 경복궁</title>
 <!-- renew -->
<script src="../js/slide.js"></script>
<script type="text/javascript" src="../js/jquery.bxslider.js"></script>
<script src="../js/jquery.flexisel.js"></script>

<script type = "text/javascript">
	/* 쿠키 관련 */
	function getCookie1(cookieName){
		thisCookie = document.cookie.split("; ");
		for(i=0; i<thisCookie.length; i++){
			if(cookieName == thisCookie[i].split("=")[0]){
				return thisCookie[i].split("=")[1];
			}
		}
		return "";
	}
	function setCookie1(cookieName, value, expiretime) {
		var testText = '' + expiretime;
		if (expiretime) {
			var expiredate = '';
			if (expiretime == 'infinite') {
				expiredate = 'Tue, 12 Dec 2999 23:59:59 UTC ';
			} else if (testText.search(new RegExp(':', 'g')) > -1) {
				expiredate = expiretime;
			} else {
				var todayDate = new Date(); 
				todayDate.setHours(todayDate.getHours() +  expiretime);
				expiredate = todayDate.toGMTString();
			}
			document.cookie = cookieName + "=" + escape(value) + "; path=/; expires=" + expiredate + "; domain=.royalpalace.go.kr;";
		} else {
			document.cookie = cookieName + "=" + escape(value) + "; path=/; domain=.royalpalace.go.kr;";
		}
	}

	function eventShowPopup() {
		var obj = document.getElementById("eventPopup");
		if(getCookie1("event_pop") != "1"){
			obj.style.display = 'block';
		}
	}
	function eventDisablePopup(){ 
		setCookie1("event_pop", "1" , 12); 
		eventHidePopup();
	} 
	function eventHidePopup() {
		var obj = document.getElementById("eventPopup");
		obj.style.display = 'none';
	}
</script>

<script type = "text/javascript">
	function setCookie(cname, cvalue, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays*24*60*60*1000));
		var expires = "expires="+d.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}

	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i=0; i<ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1);
			if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
		}
		return "";
	}
</script>

</head>

<body>

<!--레이어팝업 시작-->
<!--<div id="eventPopup" style="width: 667px;display: none; z-index:1000;position:  absolute;top: 177px; right: 0; left: 0;margin:  auto;
    background-color: white;
    /*-webkit-box-shadow: 1px 1px 1px #adadad;  /* Safari and Chrome */*/
    /*-moz-box-shadow: 1px 1px 1px #adadad;  /* Firefox */*/
    filter: progid:DXImageTransform.Microsoft.Shadow(color=#adadad, Direction=135, Strength=6);  /* IE */">
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="border: 1px solid #322d73;">
  <tr>
    <td colspan="2"><a href="http://www.royalpalace.go.kr:8080/content/guide/guide5.asp"><img src="/images/main/notice_180903.jpg" width="667" usemap="#Map" border="0" /></a></td>
  </tr>
  <tr>
    <td style="background-color: #fff;font-size: 13px;color: #000;padding: 7px 0px 7px 10px;
    font-family: dotum;text-align: left;border-top: 1px solid #666;"><input id="eventPopupNomore" type="checkbox" onfocus="this.blur();" onclick="eventDisablePopup();" style="border: none; margin-top:3px;"> <label for="eventPopupNomore" id="today">하루 동안 이 창을 열지않음</label></td>
    <td style="background-color: #fff;font-size: 13px;color: #000;padding: 7px 10px 7px 8px;
    font-family: dotum;text-align: right;border-top: 1px solid #666;"><a href="javascript:eventHidePopup();" style="color: #000; text-decoration: none;">[닫기]</a></td>
  </tr>
</table>
</div>
<script type = "text/javascript">eventShowPopup();</script>-->


<!-- 슬라이드 팝업 시작 -->
<!-- <div class="banner_ui">
	<div class="banner_box">
		<ul id="slider1">
			<li>
			<div class="item">
				<a href="http://www.royalpalace.go.kr/content/board/view.asp?seq=451&page=2&c1=&c2="><span class="txt2">청소년 단체관람 사전예약 시 주의사항 : 청소년 단체관람 사전예약과 안내해설 예약은 별도입니다.</span></a>
		     </div>
			 </li>
			 <li>
             <div class="item">
				<a href="http://www.royalpalace.go.kr/content/board/view.asp?seq=489&page=&c1=&c2="><span class="txt2">경복궁 취향교 복원 및 향원정 보수 안내 : 2019년 하반기 완료예정</span></a>
		     </div>
			 </li>
		</ul>		
	</div>
	<p class="today">
		<span><input type="checkbox" id="today" /><label for="today">하루닫기</label></span>
		<a href="#" class="btn_close"><img src="images/banner/btn_today.gif" alt="닫기" /></a>
	</p>

	<p class="open">
		<a href="#" class="btn_open"><img src="images/banner/btn_open.gif" alt="열기" /></a>
	</p> -->
	<script type="text/javascript">
	//<![CDATA[
		$('#slider1').bxSlider({
		  auto: true,
		  autoControls: false,
		  ause: 10000,
		  speed: 3000,
		  slideMargin: 0,
		  pager:false,
		  mode: 'vertical'
		});

		$(document).ready(function(){

			var pop_1day_close = getCookie('pop_1day_close');

			if (pop_1day_close)
			{
				document.getElementById("today").checked = true;


				$(".banner_ui").css({'margin-top': '-50px'});
				$(".banner_box").css({'top': '-500px'});
				$(".banner_ui .open").css({'display' : 'block'});
			}
			if (!$(".banner_ui").length) {
				return;
			}

			$(".banner_ui .today .btn_close").click(function(){
				
				$(".banner_ui").animate({'margin-top': '-50px'},300);
				$(".banner_box").animate({'top': '-500px'},400);
				$(".banner_ui .open").css({'display' : 'block'});

				if(document.getElementById('today').checked) 
				{
					setCookie('pop_1day_close', '1', 1);
					//alert('checked');
				}
				if(!document.getElementById('today').checked) 
				{
					setCookie('pop_1day_close', '', -1);
					//alert('unchecked');
				}	
			});
			$(".banner_ui .btn_open").click(function(){
				
				$(".banner_ui").animate({'margin-top': '0'},300);
				$(".banner_box").animate({'top': '0'},400);
				$(".banner_ui .open").css({'display' : 'none'});
			
			});
		});
	//]]>
	</script>
</div>
<!-- 슬라이드 팝업 끝 -->


	<!-- <div id="skip"> <a href="#Content">본문바로가기</a> <a href="#Top">네비게이션 바로가기</a> </div>
	<div id="wrap">
 		<div class="header">
			<div class="utill">
				<div>
					<a href="http://www.royalpalace.go.kr:8080/html/eng_gbg/main/main.jsp" target="_blank" title="경복궁 영문사이트 새창으로 이동">ENGLISH</a>
					<a href="/content/sitemap.asp">SITEMAP</a>
				</div>
			</div>
			<div class="gnb_wrap">
				<a href="/" class="logo"><img src="../images/palace/TESA-Logo.svg.png" alt="문화재청 경복궁" /></a>
				<div id="gnbMenu">
				<ul class="gnb">
					<li class="depth1_1"><span><a href="/content/guide/guide01_tab02.asp">관람안내</a></span>
						<div class="depth2">
							<p class="tit">관람안내</p>
							<ul>
								<li><a href="/content/guide/guide01_tab02.asp">관람 규칙 및 규정</a></li>
								<li><a href="/content/guide/guide4.asp">관람 코스</a></li>
								<li><a href="/content/guide/guide01_tab01.asp">관람 시간 및 요금</a></li>
								<li><a href="/content/guide/guide01_tab07.asp">한복무료관람 가이드라인</a></li>
								<li><a href="/content/guide/guide01_tab06.asp">해설 안내</a></li>
								<li><a href="/content/guide/guide6.asp">오시는 길</a></li>
								<li><a href="/content/guide/guide5.asp">주차 및 요금 안내</a></li>
								<li><a href="/content/guide/guide01_tab05.asp">편의 시설 안내</a></li>
								<li><a href="/content/guide/guide7.asp">주변 둘러보기</a></li>
							</ul>
						</div>
					</li>
                    
					<li class="depth1_2"><span><a href="/content/guide/guide21.asp">관람예약/신청</a></span>
						<div class="depth2">
							<p class="tit">관람예약/신청</p>
							<ul>
								<li><a href="/content/guide/guide21.asp">한국어 단체해설</a></li>
								<li><a href="/content/guide/guide26.asp">경회루 특별관람</a></li>
								<li><a href="https://www.royalpalace.go.kr/content/guide/youthgroup.asp">청소년 단체관람</a></li>
								<li><a href="/content/guide/childrenstory.asp">구연동화 교육신청(단체)</a></li>
								<li><a href="/content/guide/guide01_tab03.asp">촬영 및 장소사용</a></li>							
								<li><a href="/content/guide/guide11.asp">집옥재 왕실문화강좌</a></li>
								<li><a href="/content/guide/guide30.asp">궁중회화특강 신청</a></li>
								
								<li><a href="/content/guide/guide27.asp">경복궁 야간 특별관람 예약</a></li>
								
								<li><a href="/content/guide/guide32.asp">칠궁 특별관람</a></li>
								<li><a href="/content/guide/guidesejong.asp">세종대왕을 만나다</a></li>
							</ul>
						</div>
					</li>
                    
					<li class="depth1_3"><span><a href="/content/call/call.asp">참여마당</a></span>
						<div class="depth2">
							<p class="tit">참여마당</p>
							<ul>                         	
								<li><a href="/content/call/call.asp">채팅·화상(수화)상담</a></li>
								<li><a href="http://www.cha.go.kr/html/HtmlPage.do?pg=/minwon/minwon_guide.jsp&mn=NS_02_01_01" target="_blank" title="민원신청 새창으로 이동">민원신청</a></li>
								<li><a href="/content/community/question/list.asp">자주하는 질문</a></li>							
							</ul>
						</div>
					</li>
                    
					<li class="depth1_4"><span><a href="/content/data/data_01.asp">자료마당</a></span>
						<div class="depth2">
							<p class="tit">자료마당</p>
							<ul> 
								<li><a href="/content/data/data_01.asp">경복궁의 역사</a></li>
								<li><a href="/content/data/data_02.asp">알고싶은 이야기 </a></li>
								<li><a href="/content/data/data_03.asp">경복궁 들여다보기 </a></li>
								<li><a href="/content/guide/guide8.asp">경복궁 가이드북 </a></li>
								<li><a href="/content/data/data_05.asp">간행물 </a></li>
								<li><a href="/content/news/list.asp">언론보도 </a></li>
							</ul>
						</div>
					</li>
                    <li class="depth1_5"><span><a href="/content/preview/preview04_2.asp">행사</a></span>
						<div class="depth2">
							<p class="tit">행사</p>
							<ul> 
								<li><a href="/content/preview/preview04.asp">경복궁 야간 특별관람</a></li>
								<li><a href="/content/preview/preview04_2.asp">다례체험</a></li>
								<li><a href="/content/preview/preview04_10.asp">수라간 시식공감</a></li>
								<li><a href="/content/preview/preview04_11.asp">주ㆍ야간 전통공연</a></li>
								<li><a href="/content/preview/preview04_3.asp">장고개방 </a></li>
								<li><a href="/content/preview/preview04_4a.asp">소주방 개방 </a></li>
								<li><a href="/content/preview/preview04_5a.asp">수문장 교대의식 </a></li>
								<li><a href="/content/preview/preview04_9.asp">수문장 복식체험 </a></li>
								<li><a href="/content/preview/preview04_6.asp">왕가의 산책 </a></li>
								<li><a href="/content/preview/preview04_7a.asp">귀빈관람 </a></li>
							</ul>
						</div>
					</li>
					<li class="depth1_6"><span><a href="/content/preview/preview03.asp">미리보는 경복궁</a></span>
						<div class="depth2">
							<p class="tit">미리보는 경복궁</p>
							<ul> 
								<li><a href="/content/preview/preview01_top.asp">경복궁 가상체험</a></li>
								<li><a href="/content/preview/preview02_tab1.asp">행사영상자료 </a></li>
								li><a href="/webzin/index.htm" target="_blank">행사사진자료 </a></li
								<li><a href="/content/preview/preview03.asp">경복궁의 사계 </a></li>
								<li><a href="/content/preview/preview04.asp">칠궁</a></li>
								<li><a href="/content/preview/preview05.asp">재능기부</a></li>
							</ul>
						</div>
					</li>
					<li class="depth1_7"><span><a href="/" onclick='window.open("/child/hello_01.html","child","left=154,top=46,scrollbars=no,resizable=no,width=680,height=510");return false;' title="새창">어린이 경복궁</a></span>
					</li>
					<li class="depth1_8"><span><a href="/content/about/about01.asp">경복궁 관리소</a></span>
						<div class="depth2">
							<p class="tit">경복궁 관리소</p>
							<ul>
								<li><a href="/content/about/about01.asp">인사말</a></li>
								<li><a href="/content/about/about02.asp">연혁</a></li>
								<li><a href="/content/about/about03.asp">직원소개 </a></li>
								<li><a href="/content/board/list.asp">공지사항</a></li>
							</ul>
						</div>
					</li>
				</ul>
				</div>
			</div>
			<div class="gnb_bg"></div>

			<div id="main-navbar" class="main-navbar main-navbar-fixed-top dynamic-right"><div class="main-navbar-content"><div id="toggle-sidebar">메뉴</div></div></div> 
			<div id="main-sidebar" class="main-sidebar main-sidebar-left">
				<div id="main-sidebar-wrapper" class="main-sidebar-wrapper"></div>
			</div>
		</div>
		
<script>
	
</script>renew -->
<section class="sub-menu p-t-10 p-b-10">
	<div class="container">
		<nav>
			<ul>
				<li class=" m-r-10"><a href="../view/palace.jsp">HOME</a></li>
				<li class=" m-r-10 p-l-10 p-r-10 bo2"><a href="../view/palace_res.jsp">Narration</a></li>
				<li class=" m-r-10 p-r-10 bo17"><a href="../view/palace_hanbok.jsp">Hanbok</a></li>
				<li class=""><a href="javascript:void(0)">Check&Cancel</a></li>
			</ul>
		</nav>
	</div>
	</section>
	
	<div class="main_visual" style="height: auto;">
		<div id="sliderMainTop">
			<ul id="sliderMain">
				 <li>
					 <p class="s1" alt="근정전"></p>
				 </li>
				  <!-- <li>
					 <p class="s2" alt="경회루"></p>
				 </li>
				 <li>
					<p class="s3" alt="건춘문"></p>
				 </li>
				 <li>
					<p class="s4" alt="사정전"></p>
				 </li>
				 <li>
					 <p class="s5" alt="향원정"></p>
				 </li>
				 <li>
					 <p class="s6" alt="자경전"></p>
				 </li> -->
			</ul>
		</div>
	</div>
	

		 <div id="mContent">
			<div class="m_bookLink">
				<ul>
					<!-- <li><a href="/content/guide/guide30.asp">궁중회화특강 신청<span>예약바로가기</span></a></li> -->
					<li><a href="/content/guide/guide01_tab01.asp">관람시간 및 요금 <span>휴궁일 : 매주 화요일</span></a></li>
                    <!-- <li><a href="/content/guide/childrenstory.asp">구연동화 교육신청<span>유치원대상 경복궁 이야기</span></a></li> -->
					<li><a href="../view/palace_res.jsp">단체해설관람 <em>예약</em><span>단체해설관람 예약 안내 및 신청</span></a></li>
					<li><a href="../view/palace_hanbok.jsp">무료한복대여 <em>예약</em><span>무료한복대여 예약 안내 및 신청</span></a></li>
					<!-- <li><a href="/content/guide/guide29.asp">청소년 단체관람 <em>예약</em><span>학생 등 청소년 단체 35명 이상 관람시</span></a></li>-->
					<li><a href="/content/guide/guide32.asp">칠궁 특별관람 <em>예약</em><span>매주 화요일~ 토요일</span></a></li>
				</ul>
			</div><!-- //예약 -->

			<div class="m_notice">
				<h2>공지사항</h2>
				<a href="/content/board/list.asp" class="more">더보기</a>
				<ul>
					
					<li><a href="/content/board/view.asp?seq=548&page=1&c1=&c2=">2018년 10월 9일(화) 한글날 경복궁 관람 운영 안내</a> <span class="date">2018-10-02</span></li>
					
					<li><a href="/content/board/view.asp?seq=547&page=1&c1=&c2=">2018년 10월 3일(수) 개천절 경복궁 관람 운영 안내</a> <span class="date">2018-10-02</span></li>
					
					<li><a href="/content/board/view.asp?seq=546&page=1&c1=&c2="><경복궁에서 세종대왕을 만나다> 교육프로그램 안내</a> <span class="date">2018-10-02</span></li>
					
					<li><a href="/content/board/view.asp?seq=545&page=1&c1=&c2=">2018년 10월 경복궁 야간 특별관람 안내</a> <span class="date">2018-10-02</span></li>
					
					<li><a href="/content/board/view.asp?seq=543&page=1&c1=&c2="><2018년 가을 여행주간 경복궁 관람료 할인 안내></a> <span class="date">2018-09-28</span></li>
					
					<li><a href="/content/board/view.asp?seq=542&page=1&c1=&c2=">경복궁관리소 행정지원인력 시설물청소원 최종합격자 발표</a> <span class="date">2018-09-21</span></li>
																					
				</ul>
			</div><!-- //공지사항 -->

			<div class="m_goLink">
				<h2>바로가기</h2>
				<ul>
					<li><a href="/content/guide/guide01_tab02.asp">관람규칙</a></li>
					<li><a href="/content/guide/guide01_tab03.asp">촬영/장소 사용신청</a></li>
					<li><a href="/content/guide/guide01_tab06.asp">해설안내</a></li>
					<li style="font-size:9px;line-height: 150%; letter-spacing:2px;"><a href="http://www.royalpalace.go.kr:8080/html/eng/reservation/gyeonghoeru.jsp" target="_blank">Gyeonghoeru Reservation</a></li>
					<li><a href="/content/community/question/list.asp">자주하는 질문</a></li>
					<li><a href="/content/guide/guide6.asp">오시는 길</a></li>
				</ul>
			</div><!-- //바로가기 -->


			<!-- 알림판 -->
			<div class="m_popzone">
				<h2>알림판</h2>
				<div id="sliderPopUpZone" class="popup_img" style="display:none; overflow:hidden;">						
					<div class="owl-dots">
						<span>
							<a class='control_prev_sliderPopUpZone' href='#none'><img src='../images/palace/icon_mPrev2.png' alt="이전버튼"></a>
							<a class='control_next_sliderPopUpZone' href='#none'><img src='../images/palace/icon_mNxt2.png' alt="다음버튼"></a>
							<a class='control_stop_sliderPopUpZone' href='#none'><img src='../images/palace/icon_mPause.png' alt="정지버튼"></a>
						</span>
						<span class="contral_dots"></span>
					</div>
					<ul class="enterleave_sliderPopUpZone" style="position:relative; margin:0; padding:0; list-style: none;">						
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="1">
							<a href="/content/guide/guide32.asp"><img src="../images/palace/pop_0514.jpg" alt="칠궁 특별관람" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="2">
							<a href="http://www.royalpalace.go.kr/content/board/view.asp?seq=545&page=1&c1=&c2="><img src="../images/palace/pop0405.jpg" alt="경복궁 야간특별관람" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="3">
							<a href="https://www.geps.or.kr/g_news/notice/cms_gongi_inq.jsp?gm=a124&no_sqn=7880" target="_blank"><img src="../images/palace/pop_0927002.jpg" alt="공무원연금 UCC" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="3">
							<img src="../images/palace/pop_0927001.jpg" alt="10월 태극기달기" />
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="4">
							<a href="https://1398.acrc.go.kr/hpg/psm/hpgPsmStep1.do" target="_blank"><img src="../images/palace/pop_0801.jpg" alt="공익신고" /></a>
						</li>						
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="5">
							<a href="http://www.acrc.go.kr/acrc/board.do?command=searchDetail&menuId=05020401" target="_blank"><img src="../images/palace/pop_151210.gif" alt="공익신고" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="6">
							<img src="../images/palace/zone150708.gif" onclick='window.open("http://www.royalpalace.go.kr/popup/pop150702.html","popup3","left=0,top=0,scrollbars=no,resizable=no,width=600,height=565")' style="cursor:pointer" alt="드론비행금지" />
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="7">
							<a href="http://www.royalpalace.go.kr/upload/eti.pdf"><img src="../images/palace/pop_16021201.gif" alt="문화재관람예절" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="8">
							<a href="https://www.safepeople.go.kr" target="_blank"><img src="../images/palace/pop141001.gif" alt="안전제보 신청하기" /></a>
						</li>
						<li style="position:relative; display:block; float:left; margin:0; padding:0;" inum="9">
							<a href="http://www.royalpalace.go.kr/upload/popl.pdf" target="_blank"><img src="../images/palace/pop1215.jpg" alt="빈틈없은 신고자 보호" /></a>
						</li>				
					</ul>
				</div>
			</div><!-- //알림판 -->

			<div class="m_partner">
				<div class="inner">
					<ul id="partner-ul">
						<li><a href="http://www.k-heritage.tv/" target="_blank" title="새창"><img src="../images/palace/bottom_banner1.png" alt="문화유산채널"></a></li>
						<li><a href="http://www.cdg.go.kr" target="_blank" title="새창"><img src="../images/palace/bottom_banner3.png" alt="문화재청창덕궁"></a></li>
						<li><a href="http://www.deoksugung.go.kr/" target="_blank" title="새창"><img src="../images/palace/bottom_banner4.png" alt="문화재청덕수궁"></a></li>
						<li><a href="http://cgg.cha.go.kr/" target="_blank" title="새창"><img src="../images/palace/bottom_banner6.jpg" alt="문화재청창경궁"></a></li>
						<li><a href="http://jm.cha.go.kr" target="_blank" title="새창"><img src="../images/palace/bottom_banner5.png" alt="문화재청종묘"></a></li>
						<li><a href="http://www.k-heritage.tv/" target="_blank" title="새창"><img src="../images/palace/bottom_banner1.png" alt="문화유산채널"></a></li>
						<li><a href="http://www.cdg.go.kr" target="_blank" title="새창"><img src="../images/palace/bottom_banner3.png" alt="문화재청창덕궁"></a></li>
						<li><a href="http://www.deoksugung.go.kr/" target="_blank" title="새창"><img src="../images/palace/bottom_banner4.png" alt="문화재청덕수궁"></a></li>
						<li><a href="http://cgg.cha.go.kr/" target="_blank" title="새창"><img src="../images/palace/bottom_banner6.jpg" alt="문화재청창경궁"></a></li>
						<li><a href="http://jm.cha.go.kr" target="_blank" title="새창"><img src="../images/palace/bottom_banner5.png" alt="문화재청종묘"></a></li>
					</ul>
					<div class="slide-nav">
						<a href="#" class="prev nbs-flexisel-nav-left">이전배너</a>
						<a href="#" class="stop">멈춤</a>
						<a href="#" class="next nbs-flexisel-nav-right">다음배너</a>
					</div>
				</div>
				<script>
				$("#partner-ul").flexisel({
					visibleItems: 6,
					itemsToScroll: 1,
					animationSpeed: 400,
					navigationTargetSelector: $('.m_partner .slide-nav'),
					infinite: true,
					autoPlay: {
						enable: true,
						interval: 5000,
						pauseOnHover: true
					},
					responsiveBreakpoints: {
						portrait: {
							changePoint:767,
							visibleItems: 1,
							itemsToScroll: 1
						},
						landscape: {
							changePoint:1023,
							visibleItems: 3,
							itemsToScroll: 1
						},
						tablet: {
							changePoint:1219,
							visibleItems: 4,
							itemsToScroll: 1
						}
					}
				});
				</script>
			</div><!-- //배너 모음-->

			
		</div><!--//End Content-->

