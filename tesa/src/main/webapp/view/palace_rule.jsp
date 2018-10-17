
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="keywords" content="궁, 경복궁, 왕궁, 광화문, 법궁" />
<meta name="description" content="경복궁 사이트 메인 페이지입니다." />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=375, user-scalable=no, minimal-ui, target-densitydpi=device-dpi" />
<meta name="format-detection" content="telephone=no" />
<link href="../css/global.css" rel="stylesheet" type="text/css" /> 
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/gnbJs.js"></script>	
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>

<!-- for mobile -->
<script src="/common/js/m_front_js.js"></script>
<link href="" rel="stylesheet" type="text/css" id="cssHref" />
<link href="" rel="stylesheet" type="text/css" id="cssHrefPc" />


<title>문화재청 경복궁</title>

<script type="text/javascript" language="javascript">
	function mainmenu(c_value){
		var menucnt= 6;
		for(var i=1; i<=menucnt ;i++){
		document.getElementById("menu"+i).style.display="none";
		document.getElementById("top_menu"+i).src='../../images/top/btn_m0'+i+'.gif';
		}
		document.getElementById("menu"+c_value).style.display="block";
		document.getElementById("top_menu"+c_value).src='../../images/top/btn_m0'+c_value+'_ov.gif';
	}
</script>
</head>

<body>

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
				<a href="/" class="logo"><img src="/images/common/gb_logo.png" alt="문화재청 경복궁" /></a>
				<div id="gnbMenu">
				<ul class="gnb">
					<li class="depth1_1"><span><a href="/content/guide/guide01_tab02.asp">관람안내</a></span>
						<div class="depth2">
							<p class="tit">관람안내</p>
							<ul>
								<li><strong><a href="/content/guide/guide01_tab02.asp">관람 규칙 및 규정</a></strong></li>
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
			</div> -->
		<!-- 	<div class="gnb_bg"></div>

			<div id="main-navbar" class="main-navbar main-navbar-fixed-top dynamic-right"><div class="main-navbar-content"><div id="toggle-sidebar">메뉴</div></div></div> 
			<div id="main-sidebar" class="main-sidebar main-sidebar-left">
				<div id="main-sidebar-wrapper" class="main-sidebar-wrapper"></div>
			</div>
		</div>
		
<script>
	
	mainmenu(2)
	
</script> -->

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

		<!--//End Top-->
		 
		<div id="Content_Sub">
			 			
			<div class="Left_Menu LM_bg01">
				<ul class="Left_Tit">
					<li><h1>관람안내</h1></li>
				</ul>
				<ul class="Left_menu_txt">
					<li class="menu_select"><strong><a href="../view/palace_rule.jsp">관람 규칙 및 규정</a></strong></li>
					<!-- <li ><a href="/content/guide/guide4.asp">관람 코스</a></li>
					<li ><a href="/content/guide/guide01_tab01.asp">관람 시간 및 요금</a></li>
					<li ><a href="/content/guide/guide01_tab07.asp">한복무료관람 가이드라인</a></li>
					<li ><a href="/content/guide/guide01_tab06.asp">해설 안내</a></li>
					<li ><a href="/content/guide/guide6.asp">오시는 길</a></li>
					<li ><a href="/content/guide/guide5.asp">주차 및 요금 안내</a></li>
					<li ><a href="/content/guide/guide01_tab05.asp">편의 시설 안내</a></li>
					<li ><a href="/content/guide/guide7.asp">주변 둘러보기</a></li> -->
				</ul>
			</div>

			<div class="Right_cont">
				<div class="Sub_Head_tit SHT_bg01">
					<ul>
						<li class="path">
						메인<img src="../../images/sub/arrow01.gif" alt="" />
						관람안내<img src="../../images/sub/arrow01.gif" alt="" />
						<span>관람 규칙 및 규정</span></li>
					</ul>
					<h1>관람 규칙 및 규정</h1>
				</div>
				<div class="Bonmun">
					<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" summary="">
						<!--tr>
						<td><a href="guide01_tab01.asp"><img src="../images/guide/guide01_tab01_btn_01.gif" onMouseOver="this.src='../images/guide/guide01_tab01_btn_10.gif'" onMouseOut="this.src='../images/guide/guide01_tab01_btn_01.gif'" alt="관람및 요금시간" width="128" height="27" border="0"></a><a href="guide01_tab02.asp"><img src="../images/guide/guide01_tab01_btn_02.gif" alt="관람규칙" width="125" height="27" border="0"></a><a href="guide01_tab03.asp"><img src="../images/guide/guide01_tab01_btn_03.gif" onMouseOver="this.src='../images/guide/guide01_tab01_btn_07.gif'" onMouseOut="this.src='../images/guide/guide01_tab01_btn_03.gif'" alt="촬영 및 장소사용안내" width="126" height="27" border="0"></a><a href="guide01_tab04.asp"><img src="../images/guide/guide01_tab01_btn_04.gif" onMouseOver="this.src='../images/guide/guide01_tab01_btn_08.gif'" onMouseOut="this.src='../images/guide/guide01_tab01_btn_04.gif'" alt="무료해설안내" width="125" height="27" border="0"></a><a href="guide01_tab05.asp"><img src="../images/guide/guide01_tab01_btn_05.gif" onMouseOver="this.src='../images/guide/guide01_tab01_btn_09.gif'" onMouseOut="this.src='../images/guide/guide01_tab01_btn_05.gif'" alt="각종 편의시설 안내" width="125" height="27" border="0"></a></td>                        
					</tr-->
					  <tr> 
						<td><table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
							<tr> 
							  <td><table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
								<!--tr>
								  <td height="62" valign="top"><img src="../images/guide/guide01_tab02_01.gif" alt="관람규칙" width="224" height="52"></td>
								</tr-->
								<tr>
								  <td class="comm">관람하시면서 꼭 준수해 주셔야 할 사항입니다.<br>모두에게 기분좋은 관람이 될 수 있도록 협조하여 주시기 바랍니다.</td>
								</tr>
							  </table></td>
							</tr>
						  </table></td>
					  </tr>
					  <tr> 
						<td height="121" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0" summary="">
							<tr> 
							  <td height="25" class="guide_01" style="padding:10px 17px"><strong style="color:#993333">궁·능원 및 유적관람 등에 관한 규정(일부개정 2017. 9.8. 문화재청 훈령 제439호)</strong> <br><br>
							 <strong>문화재 보존·관리 등을 위하여 다음 각 호 중 어느 하나의 해당하는 자에 대하여 관람중지, 관련 물품 보관 또는 입장제한 등의 필요한 조치를 취할 수 있다.</strong></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">인화물질 및 무기류(총포, 화약, 도검류 등) 등 위험물 소지자</p></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">주류, 각종 야영용품(텐트, 돗자리, 그늘막 등) 및 취사도구 소지자</p></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">음식물 반입</p></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">반려동물과 함께 들어오는 자(다만 장애인복지법 제2조에서 정한 장애인과 함께 들어오는 장애인 보조견은 예외로 한다. 이 경우 ‘장애인 보조견’이라 함은 장애인복지법 제40조 제2항의 ‘장애인 보조견 표지’를 붙인 ‘장애인 보조견’을 말한다.)</p></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">운동·놀이기구, 악기, 확성기 및 다른 사람의 관람 또는 문화재의 보존·관리에 지장을 줄 우려가 있는 물건 소지자</p></td>
							</tr>
							<tr> 
							  <td height="25" class="guide_01" ><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">음주, 복장, 무속행위, 방언(放言), 사사로운 제사행위, 종교집회, 고성방가, 풍기문란 및 기타 부적절한 행위로 다른 사람의 관람 또는 문화재 보존·관리에 지장을 줄 우려가 있는 자
</p>
</td>
							</tr><tr> 
							  <td height="25" class="guide_01" style="letter-spacing:-1px"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">정당한 사유 없이 관람규정이나 직원의 안내에 따르지 않는 자
</p>
</td>
							</tr><tr> 
							  <td height="25" class="guide_01"><p class="gbg_dot"><img src="../images/palace/guide01_tab01_icon_01.gif" alt=" " width="28" height="11">경복궁 경내 전 지역은 금연구역으로 하며, 유적관리기관의 장은 흡연자에 대해 관람중지, 퇴장 등 필요한 조치를 취할 수 있다.</p></td>
							</tr>
							<tr> 
							  <td height="30"></td>
							</tr>
						</table></td>
					  </tr>
					</table>
				</div>
			</div>
		</div><!--//End Content-->
		
	<!-- <div id="Foot">
		<div class="footer">
			<ul class="fm">
				<li><a href="/content/etc01.asp">개인정보처리방침</a></li>
				<li><a href="/content/copyright.asp">저작권정책</a></li>
			</ul>
			<p class="addr">
				우)03045 서울특별시 종로구 사직로 161 <br />전화번호(02) 3700-3900 팩스(02) 3700-3909<br />
				COPYRIGHT 2014 BY GYEONGBOKGUNG. ALL RIGHTS RESERVED.
			</p>
		</div>

		<div class="m_footer">
			<ul class="fm">
				<li><a href="/content/board/list.asp">공지사항</a></li>
				<li><a href="/content/guide/guide6.asp">오시는길</a></li>
				<li><a href="http://www.royalpalace.go.kr:8080/html/eng_gbg/main/main.jsp">English</a></li>
			</ul>
			<p class="addr">
				COPYRIGHT 2014 BY GYEONGBOKGUNG. ALL RIGHTS RESERVED.
			</p>
		</div>
	</div>//Foot -->
</div><!--//wrap -->




<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-115869396-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-115869396-1');
</script>

</body>
</html>