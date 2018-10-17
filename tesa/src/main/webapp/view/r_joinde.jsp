<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>

<link rel="stylesheet" type="text/css" href="../css/r_style.css">
</head>

	<!-- Slide -->
	<section class="bg-title-page p-t-100 flex-col-c-m">
		<h5 style="margin-bottom: 2%" class="l-text5 t-center">참가신청(유료)</h5>
		</section>
	<section class="bg-title-page p-b-140 flex-col-c-m">
		<form name="frm" method="post" action="">
			<input type="hidden" name="titl" value="할로윈 어린이스타(유료)" />
			<input type="hidden" name="prcpnSeq" value="30" />
			<input type="hidden" name="detailsKey" value="30" />
			
		<div class="applyDiv">
			<p class="titi titli bub">기본정보</p>
			<hr class="hrtitle">
			<div class="writeType1">
				<ul>
					<li class="joinli">
						<div class="left">
							<p class="tit star">신청자 *</p>
						</div>
						
						<div class="right">
							<p class="txt">김영주</p>
						</div>
					</li>
					<hr>
					<li class="joinli">
						<div class="left">
							<p class="tit star">연락처 *</p>
						</div>
						<div class="inputArea">
							<input type="tel" placeholder="01012345678" class="joininput" maxlength="13" />
						</div>
					</li>
					<hr>
					<li class="joinli">
						<div class="left">
							<p class="tit star">이메일 *</p>
						</div>
						<div class="inputArea">
							<input type="text" placeholder="abcdef" id="rqstEmail1" name="rqstEmail1" maxlength="40" title="이메일" class="joininput" /><!--
							--><span class="spanclass">@</span><!--
							--><input type="text" id="rqstEmail2" name="rqstEmail2" maxlength="20" title="이메일"  class="joininput"/><!--
							--><select  id="rqstEmailTail" class="joinselect" title="이메일" >
								<option value="">직접입력</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="korea.com">korea.com</option>
								<option value="orgio.net">orgio.net</option>
								<option value="shinbiro.com">shinbiro.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="netian.com">netian.com</option>
								</select>
							<input type="hidden" name="rqstEmail" id="rqstEmail" title="이메일" value="" class="emailChk" />
						</div>
					</li>
					<hr>
					<li class="joinli">
						<div class="left">
							<p class="tit star">참여일 *</p>
						</div>
						<div class="inputArea">
							<select name="prcpnDt_y" id="year" class="joinselect" title="참여일(년도)">
								<option value="">년도 선택</option>
								<option value="2018">2018년</option>
								</select><!--
							--><select name="prcpnDt_m" id="month" class="joinselect" title="참여일(월)">
								<option value="">월 선택</option>
								<option value="201810">201810월</option>
								</select><!--
							--><select name="prcpnDt" id="day" class="joinselect" title="참여일(일)">
								<option value="">일 선택</option>
								<option value="20181017">20181017일</option>
								<option value="20181018">20181018일</option>
								<option value="20181019">20181019일</option>
								<option value="20181020">20181020일</option>
								<option value="20181021">20181021일</option>
								<option value="20181022">20181022일</option>
								<option value="20181023">20181023일</option>
								<option value="20181024">20181024일</option>
								<option value="20181025">20181025일</option>
								<option value="20181026">20181026일</option>
								<option value="20181027">20181027일</option>
								<option value="20181028">20181028일</option>
								<option value="20181029">20181029일</option>
								<option value="20181030">20181030일</option>
								</select>
						</div>
					</li>
					<hr>
				</ul>
			</div>
			
			
			<!-- tq -->
			<p class="titi titli bub">손님참여 프로그램 신청 아동보호자 (법정대리인) 동의서</p><!-- 2018-05-03 수정 -->
			<p class="cPurple">※ 개인정보 보호법에 의해 만 14세 미만 아동은 손님참여 시 보호자(법정대리인)의 동의가 있어야 참여가 가능합니다.</p>
			<hr class="hrtitle">
			<div class="writeType1">
				<ul>
					<li class="tableNo">
						<div class="left">
							<p class="tit">법정대리인(친권자 - 미성년자와의 관계)</p>
						</div>
						<div class="inputArea boomo">
							<select name="rqstRelNm" class="joinselect">
								<option value="부">부</option>
								<option value="모">모</option>
								<option value="기타">기타</option>
							</select>
							<input type="text" name="rqstRelNmEtc" id="rqstRelNmEtc" class="joininput" title="부모외 대리인" maxlength="10" placeholder="관계를 입력해주세요." style="display:none;" p>
						</div>
					</li>
					<hr>
				</ul>
			</div>
			<div class="chkboxright">
				<input type="checkbox" name="piapAgrYn" value="Y"  /><!--
				--><label>법정대리인 본인은 손님참여자의 손님참여 및 개인정보 수집, 이용에 동의합니다.</label>
			</div>
			
			<div class="margin-top">
			<p class="titi titli bub">참여자 정보</p>
			<hr class="hrtitle">
			<div class="writeType1">
				<ul>
					<li class="joinli">
						<div class="left">
							<p class="tit">
								참여자 이름<input type="hidden" name="prcpnTitl" value="참여자 이름" />
							</p>
						</div>
						<div class="inputArea">
							<input type="text" name="prcpnTitlVal" title="참여자 이름" class="joininput" maxlength="200" />
							</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">
								옷사이즈<input type="hidden" name="prcpnTitl" value="옷사이즈" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prcpnTitlVal" class="joinselect"  title="옷사이즈">
								<option value="">선택</option>
								<option value="S - 105cm~110cm">S - 105cm~110cm</option>
								<option value="M - 111cm~120cm">M - 111cm~120cm</option>
								<option value="L - 121cm~135cm">L - 121cm~135cm</option>
								</select>
								
								</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">
								옵션<input type="hidden" name="prcpnTitl" value="옵션" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prcpnTitlVal" class="joinselect"  title="옵션">
								<option value="">선택</option>
								<option value="옵션없음(5만원)">옵션없음(5만원)</option>
								<option value="주인공 연기자와 함께 퍼레이드 코스 투어 및 기념사진 촬영 2장 (7만원)">주인공 연기자와 함께 퍼레이드 코스 투어 및 기념사진 촬영 2장 (7만원)</option>
								<option value="주인공 연기자와 함께 퍼레이드 코스 투어 및 기념사진 촬영 2장, 선물 증정 (10만원)">주인공 연기자와 함께 퍼레이드 코스 투어 및 기념사진 촬영 2장, 선물 증정 (10만원)</option>
								</select>
								
								</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">
								참여자 나이<input type="hidden" name="prcpnTitl" value="참여자 나이" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prcpnTitlVal" class="joinselect"  title="참여자 나이">
								<option value="">선택</option>
								<option value="6세">6세</option>
								<option value="7세">7세</option>
								<option value="8세">8세</option>
								<option value="9세">9세</option>
								<option value="10세">10세</option>
								</select>
								
								 ※ 2009년생 ~ 2013년생 참여가능</div>
					</li>
					<hr>
					</ul>
			</div>	
			</div>	
			
			<div class="margin-top">							
			<p class="titi titli bub">참여 정보</p>
			<p class="cPurple">※ 공연은 단일 또는 다중으로 참여가 가능합니다.</p>	
			<p style="color:red; font-weight:bold; margin-top:10px;">※ 원하시는 공연만 선택바랍니다.</p>			
			<hr class="hrtitle">
			<div class="writeType1">
				<ul>
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연명</p>
						</div>
						<div class="right">
							<p class="txt">
								로티스 할로윈 파티 퍼레이드<input type="hidden" name="prfmSeqList" value="1033" />
							</p>
						</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연시간</p>
						</div>
						<div class="inputArea">
							<p class="txt">
								<select name="prfmTimeList1033" class="joinselect" title="공연시간" data-seq="1033">
									<option value="">공연시간</option>
								</select>
							</p>
						</div>
					</li>					
						<hr>					
					<li  class="joinli">												
						<div class="left">
							<p class="tit">
								희망 배역<input type="hidden" name="prfmPrcpnTitl1033" value="희망 배역" />								
								<input type="hidden" name="prfmClasSeq1033" value="182" class="notRequired" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prfmPrcpnTitlVal1033" class="joinselect" title="희망 배역" data-prfm-clas-seq="182">
								<option value="">희망 배역 선택</option>
								<option value="할로윈 공주(여1)" data-choc-seq="482">할로윈 공주(여1)</option>
								<option value="할로윈 왕자(남1)" data-choc-seq="483">할로윈 왕자(남1)</option>
								<option value="코스프레 프린세스(여1)" data-choc-seq="484">코스프레 프린세스(여1)</option>
								<option value="핑크위치(여1)" data-choc-seq="485">핑크위치(여1)</option>
								</select>
							<input type="hidden" name="prfmChocSeq1033" value="" class="notRequired" />
						</div>
					</li>
					<hr>
						</ul>
			</div><div class="writeType1">
				<ul>
				<hr class="hrtitle">
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연명</p>
						</div>
						<div class="right">
							<p class="txt">
								드라큐라의 사랑<input type="hidden" name="prfmSeqList" value="1033" />
							</p>
						</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연시간</p>
						</div>
						<div class="inputArea">
							<p class="txt">
								<select name="prfmTimeList1033" class="joinselect" title="공연시간" data-seq="1033">
									<option value="">공연시간</option>
								</select>
							</p>
						</div>
					</li>					
						<hr>					
					<li  class="joinli">												
						<div class="left">
							<p class="tit">
								희망 배역<input type="hidden" name="prfmPrcpnTitl1033" value="희망 배역" />								
								<input type="hidden" name="prfmClasSeq1033" value="182" class="notRequired" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prfmPrcpnTitlVal1033" class="joinselect" title="희망 배역" data-prfm-clas-seq="182">
								<option value="">희망 배역 선택</option>
								<option value="할로윈 공주(여1)" data-choc-seq="482">할로윈 공주(여1)</option>
								<option value="할로윈 왕자(남1)" data-choc-seq="483">할로윈 왕자(남1)</option>
								<option value="코스프레 프린세스(여1)" data-choc-seq="484">코스프레 프린세스(여1)</option>
								<option value="핑크위치(여1)" data-choc-seq="485">핑크위치(여1)</option>
								</select>
							<input type="hidden" name="prfmChocSeq1033" value="" class="notRequired" />
						</div>
					</li>
					<hr>
						</ul>
			</div><div class="writeType1">
				<ul><hr class="hrtitle">
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연명</p>
						</div>
						<div class="right">
							<p class="txt">
								렛츠 드림 나이트 퍼레이드<input type="hidden" name="prfmSeqList" value="1033" />
							</p>
						</div>
					</li>
					<hr>
					<li  class="joinli">
						<div class="left">
							<p class="tit">공연시간</p>
						</div>
						<div class="inputArea">
							<p class="txt">
								<select name="prfmTimeList1033" class="joinselect" title="공연시간" data-seq="1033">
									<option value="">공연시간</option>
								</select>
							</p>
						</div>
					</li>					
						<hr>					
					<li  class="joinli">												
						<div class="left">
							<p class="tit">
								희망 배역<input type="hidden" name="prfmPrcpnTitl1033" value="희망 배역" />								
								<input type="hidden" name="prfmClasSeq1033" value="182" class="notRequired" />
							</p>
						</div>
						<div class="inputArea">
							<select name="prfmPrcpnTitlVal1033" class="joinselect" title="희망 배역" data-prfm-clas-seq="182">
								<option value="">희망 배역 선택</option>
								<option value="할로윈 공주(여1)" data-choc-seq="482">할로윈 공주(여1)</option>
								<option value="할로윈 왕자(남1)" data-choc-seq="483">할로윈 왕자(남1)</option>
								<option value="코스프레 프린세스(여1)" data-choc-seq="484">코스프레 프린세스(여1)</option>
								<option value="핑크위치(여1)" data-choc-seq="485">핑크위치(여1)</option>
								</select>
							<input type="hidden" name="prfmChocSeq1033" value="" class="notRequired" />
						</div>
					</li>
					<hr>
				</ul>
			</div>
			</div>
			<hr class="hrtitle">
			<div class="writeType1 type2">
				<ul>
					<li class="tableNo">
						<div class="left">
						
							<p class="tit">개인정보 수집,<br/> 이용동의서</p>
						</div>
						<div class="inputArea">
							<textarea class="type2 notRequired" placeholder="이용자 본인은 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다." readonly>이용자 본인은 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다.
1. 개인정보의 수집 및 이용 목적
손님참여 이벤트 참가 신청시 본인 확인 및 프로그램 진행을 위해 개인정보를 수집하고 있습니다.
							
2. 수집하는 개인정보의 항목
ㆍ필수입력사항
- 이름(신청자,참여자), 연락처, E-mail, 성별, 나이, 옷사이즈
							
ㆍ서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
- 접속로그, 쿠키, 접속IP정보
							
3. 개인정보의 보유 및 이용기간
수집, 이용에 관한 동의일로부터 1년
							
※ 귀하는 개인정보 수집, 이용에 대한 동의를 거부하실 권리가 있으며, 동의를 거부하실 경우 서비스 이용이 제한됩니다.</textarea>
						</div>
					</li>
				</ul>
			</div>							
			<div class="chkboxright">
				<input type="checkbox" name="agree" title="개인정보 수집,이용동의서" /><!--
				--><label>개인정보 수집 및 이용에 동의합니다.</label>
			</div>
		</div>
			<div class="flex-w flex-m w-full-sm m-t-10 m-b-10 btnw2">
					<button
						class="sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4 color"
						onclick="javascript:r_reserve()">
						신청</button>
					<button
						class="sizefullbbbbb con-tc con-rad2 hov1 s-text1 trans-0-4" onclick="location.href='r_list.jsp'">
						취소</button>
							
						</div>
		</form>
</section>

	<script>
		function r_list(){
			location.href="r_show.jsp";
		}
	</script>
	<script>
		function r_re(){
			location.href="r_re.jsp";
		}
	</script>