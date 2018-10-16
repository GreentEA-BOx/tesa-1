<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<link rel="stylesheet" href="../vendor/dh_support/chat/css/cs-pc.min.css">
<link rel="stylesheet" href="../vendor/dh_support/chat/css/common.min.css">
<link rel="stylesheet" href="../vendor/dh_support/chat/css/custom.css">
<link rel="stylesheet" href="../vendor/dh_support/chat/css/bootstrap3.css">
<script src="../vendor/dh_support/chat/js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
var lastID = 0;
function submitFunction() {
	var chatName = $('#chatName').val();
	var chatContent = $('#chatContent').val();
	$.ajax({
		type : "POST",
		url : "./chatSubmitServlet",
		data : {
			chatName : encodeURIComponent(chatName),
			chatContent : encodeURIComponent(chatContent)
		},
		success : function(result) {
			if (result == 1) {
				autoClosingAlert('#successMessage',2000);
			} else if (result == 0) {
				autoClosingAlert('#dangerMessage',2000);
			} else {
				autoClosingAlert('#warningMessage',2000);
			}
		}
	});
	$('#chatContent').val('');
}

function autoClosingAlert(selector, delay){
	var alert = $(selector).alert();
	alert.show();
	window.setTimeout(function() {alert.hide()},delay);
}
function chatListFunction(type){
	$.ajax({
		type : "POST",
		url : "./chatListServlet",
		data : {
			listType: type,
		},
		success : function(data) {
		if(data == "") return;
		var parsed = JSON.parse(data);
		var result = parsed.result;
		for(var i = 0; i < result.length; i++){
			addChat(result[i][0].value,result[i][1].value,result[i][2].value);
		}
		lastID = Number(parsed.last);
		/* alert(lastID); */
		}
	});
}

function addChat(chatName, chatContent, chatTime){
	$('#chatList').append(
			'<div class="row">' +
			'<div class="col-lg-12">' +
				'<div class="media">' +
					'<a class="pull-left" href="#">' +
						'<img class="media-object img-circle"' +
						'src="https://lorempixel.com/30/30/people/1/" alt="">' +
					'</a>' +
					'<div class="media-body">' +
						'<h4 class="media-heading">' +
							chatName + '<span class="small pull-right">'+ chatTime +'</span>' +
						'</h4>' +
					'</div>' +
					'<p>' + chatContent + '</p>' +
				'</div></div></div><hr>');
	$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
}

	function getInfiniteChat(){
	setInterval(function(){
		chatListFunction(lastID);
	},1000);
} 
	

</script>

</head>
<body>
<div class="cs-pqnachat__inq-list" id="csChatInqList">

  <div class="cs-pqnachat__inq-list__title-area">
    <div class="cs-pqnachat__inq-list__title-inner">
      <span class="cs-pqnachat__inq-list__title-text">나의 문의내역</span>
      <div class="cs-chat__start-chat-wrapper">
        <button class="cs-chat__start-chat-btn" id="btnStartChat" type="button">1:1채팅 문의하기</button>
      </div>
    </div>
    <div class="cs-chat__start-chat-arrow" id="csChatStartChatArrow"></div>
  </div>

  <div id="csChatDeleteArea" class="cs-pqnachat__inq-list__delete-area visible">
    <div class="cs-pqnachat__inq-list__edit-area visible">
      <a id="csChatEditOpen" class="cs-pqnachat__inq-list__edit-button text-blue" href="javascript:void(0);">편집</a>
    </div>
    <div class="cs-pqnachat__inq-list__edit-area">
      <a id="csChatEditClose" class="cs-pqnachat__inq-list__edit-button text-blue" href="javascript:void(0);">취소</a>
      <a id="csChatDeleteBtn" class="cs-pqnachat__inq-list__delete-button" href="javascript:void(0);">
        <span class="cs-pqnachat__inq-list__icon-trash"><span id="csmChatDeleteCount">삭제</span></span>
      </a>
    </div>
  </div>

  <div id="listLoadingBar" class="cs-loading-icon-wrapper">
    <img class="cs-loading-icon" src="//image12.coupangcdn.com/image/mobile/ajax-loader.gif" alt="image">
</div>

  <div class="cs-pqnachat__inq-list__item-list-wrapper edit-mode" id="csChatItemListWrapper">
    <div class="cs-pqnachat__inq-list__item-list-container" id="csChatItemListContainer" style="transform: translate(0px, 0px) translateZ(0px);">
      <ul class="cs-pqnachat__inq-list__item-list" id="csChatItemListUl">
  <li class="cs-pqnachat__inq-list__item-row" data-id="2975044" data-chat-or-o2o-type="CHAT">
    <div class="cs-pqnachat__inq-list__item-container">

      <span class="cs-pqnachat__inq-list__checkbox-wrapper">
        <div class="cs-pqnachat__inq-list__checkbox"></div>
      </span>

      <span class="cs-pqnachat__inq-list__item-img-container">
        <img class="cs-pqnachat__inq-list__item-img" src="https://thumbnail14.coupangcdn.com/thumbnails/remote/250x250ex/image/retail/images/2018/02/28/18/9/7aeb8bb3-fbb9-442c-bc60-65879c8ceea0.jpg" data-type="productImage">
      </span>


      <table class="cs-pqnachat__inq-list__item-inner">
        <tbody><tr>
          <td>
            <div class="cs-pqnachat__inq-list__item-top">
              <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">상담내용1</span>
              <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.02</span>
            </div>
            <div class="cs-pqnachat__inq-list__item-bottom">
              <span class="cs-pqnachat__inq-list__item-contents">내용1</span>
              <span class="cs-chat__inq-list__unread-count ">0</span>
              <span class="cs-chat__inq-list__wait-answer ">답변대기</span>
            </div>
          </td>
        </tr>
      </tbody></table>

      <div class="cs-pqnachat__inq-list__close-area">
        <div class="cs-sprite-icon-chat-delete-x-button cs-pqnachat__inq-list__close-icon"></div>
      </div>

      <!--<span class="cs-pqnachat__inq-list__item-inner">
        <div class="cs-pqnachat__inq-list__item-top">
          <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">에스앤씨 건강한 혼밥 시즌2 도시락 세트</span>
          <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.02</span>
        </div>
        <div class="cs-pqnachat__inq-list__item-bottom">
          <span class="cs-pqnachat__inq-list__item-contents">장시간 고객님의 무응답 상태가 지속되어 상담이 종료되었습니다. 추가로 문의하실 사항은 다시 접수해주시기 바랍니다.</span>
          <span class="cs-chat__inq-list__unread-count ">0</span>
        </div>
      </span>-->

    </div>
  </li>

  <li class="cs-pqnachat__inq-list__item-row" data-id="2974785" data-chat-or-o2o-type="CHAT">
    <div class="cs-pqnachat__inq-list__item-container">

      <span class="cs-pqnachat__inq-list__checkbox-wrapper">
        <div class="cs-pqnachat__inq-list__checkbox"></div>
      </span>

      <span class="cs-pqnachat__inq-list__item-img-container empty">
        <img class="cs-pqnachat__inq-list__item-img cs-pqnachat__inq-list__item-img--default" src="https://csmessenger.coupang.com/resources/20181015194545/requirejs/cs-center/pc/image/single-image/inquiry_item_img_placeholder.png" data-type="defaultImage">
      </span>


      <table class="cs-pqnachat__inq-list__item-inner">
        <tbody><tr>
          <td>
            <div class="cs-pqnachat__inq-list__item-top">
              <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">이벤트</span>
              <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.15</span>
            </div>
            <div class="cs-pqnachat__inq-list__item-bottom">
              <span class="cs-pqnachat__inq-list__item-contents">상담내용2</span>
              <span class="cs-chat__inq-list__unread-count ">0</span>
              <span class="cs-chat__inq-list__wait-answer ">답변대기</span>
            </div>
          </td>
        </tr>
      </tbody></table>

      <div class="cs-pqnachat__inq-list__close-area">
        <div class="cs-sprite-icon-chat-delete-x-button cs-pqnachat__inq-list__close-icon"></div>
      </div>

      <!--<span class="cs-pqnachat__inq-list__item-inner">
        <div class="cs-pqnachat__inq-list__item-top">
          <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">이벤트</span>
          <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.02</span>
        </div>
        <div class="cs-pqnachat__inq-list__item-bottom">
          <span class="cs-pqnachat__inq-list__item-contents">상담이 종료되었습니다.
추가 사항은 언제든지 다시 문의해주세요.</span>
          <span class="cs-chat__inq-list__unread-count ">0</span>
        </div>
      </span>-->

    </div>
  </li>

  <li class="cs-pqnachat__inq-list__item-row" data-id="2972870" data-chat-or-o2o-type="CHAT">
    <div class="cs-pqnachat__inq-list__item-container">

      <span class="cs-pqnachat__inq-list__checkbox-wrapper">
        <div class="cs-pqnachat__inq-list__checkbox"></div>
      </span>

      <span class="cs-pqnachat__inq-list__item-img-container">
       <img class="cs-pqnachat__inq-list__item-img cs-pqnachat__inq-list__item-img--default" src="https://csmessenger.coupang.com/resources/20181015194545/requirejs/cs-center/pc/image/single-image/inquiry_item_img_placeholder.png" data-type="defaultImage">
      </span>


      <table class="cs-pqnachat__inq-list__item-inner">
        <tbody><tr>
          <td>
            <div class="cs-pqnachat__inq-list__item-top">
              <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">상담내용3</span>
              <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.16</span>
            </div>
            <div class="cs-pqnachat__inq-list__item-bottom">
              <span class="cs-pqnachat__inq-list__item-contents">상담이 종료되었습니다.
추가 사항은 언제든지 다시 문의해주세요.</span>
              <span class="cs-chat__inq-list__unread-count ">0</span>
              <span class="cs-chat__inq-list__wait-answer ">답변대기</span>
            </div>
          </td>
        </tr>
      </tbody></table>

      <div class="cs-pqnachat__inq-list__close-area">
        <div class="cs-sprite-icon-chat-delete-x-button cs-pqnachat__inq-list__close-icon"></div>
      </div>

      <!--<span class="cs-pqnachat__inq-list__item-inner">
        <div class="cs-pqnachat__inq-list__item-top">
          <span class="cs-pqnachat__inq-list__item-product cs-pqnachat__inq-list__item-product--more-width">(집밥반찬)싱글반찬 10종세트</span>
          <span class="cs-pqnachat__inq-list__item-date cs-pqnachat__inq-list__item-date--smaller-width">2018.10.02</span>
        </div>
        <div class="cs-pqnachat__inq-list__item-bottom">
          <span class="cs-pqnachat__inq-list__item-contents">상담이 종료되었습니다.
추가 사항은 언제든지 다시 문의해주세요.</span>
          <span class="cs-chat__inq-list__unread-count ">0</span>
        </div>
      </span>-->

    </div>
  </li>
</ul>
      <div id="csPqnaChatListMoreArea" class="cs-pqnachat__inq-list__more-area">
  <div class="cs-pqnachat__inq-list__more-area-inner">
    <span class="cs-pqnachat__inq-list__more-text">더보기</span>
    <span class="cs-pqnachat__inq-list__more-arrow"></span>
  </div>
  <div class="cs-pqnachat__inq-list__more-area-bottom"></div>
</div>
    </div>
  <div class="iScrollVerticalScrollbar iScrollLoneScrollbar" style="position: absolute; z-index: 9999; width: 7px; bottom: 2px; top: 2px; right: 1px; overflow: hidden;"><div class="iScrollIndicator" style="box-sizing: border-box; position: absolute; background: rgba(0, 0, 0, 0.5); border: 1px solid rgba(255, 255, 255, 0.9); border-radius: 3px; width: 100%; transition-duration: 0ms; display: none; height: 702px; transform: translate(0px, 0px) translateZ(0px);"></div></div></div>

</div>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i> 실시간 채팅방
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
							<div id="chatList" class="portlet-body chat-widget"
								style="overflow-y: auto; width: auto; height: 600px;">
								<!-- <div class="row">
									<div class="col-lg-12">
										<p class="text-center text-muted small">2017년 5월 30일</p>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="media">
											<a class="pull-left" href="#"> <img class="media-object img-circle" src="https://lorempixel.com/30/30/people/1/">
												<img class="media-object img-circle"
												src="https://lorempixel.com/30/30/people/1/">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													홍길동 <span class="small pull-right">오전 12:23</span>
												</h4>
											</div>
											<p>안녕하세요. 오랜만입니다. 홍길동입니다.</p>
										</div>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-lg-12">
										<div class="media">
											<a class="pull-left" href="#"> <img class="media-object img-circle" src="images/icon.png">
												<img class="media-object img-circle"
												src="https://lorempixel.com/30/30/people/1/">
											</a>
											<div class="media-body">
												<h4 class="media-heading">
													이순신<span class="small pull-right">오전 12:28</span>
												</h4>
											</div>
											<p>저도 반갑습니다. 오랜만에 뵈니까 반갑네요.</p>
										</div>
									</div>
								</div> -->
							</div>
							<div class="portlet-footer">
								<div class="row">
									<div class="form-group col-xs-4">
										<input style="height: 40px;" type="text" id="chatName"
											class="form-control" placeholder="이름" maxlength="8">
									</div>
								</div>
								<div class="row" style="height: 90px">
									<div class="form-group col-xs-10">
										<textarea style="height: 80px;" id="chatContent"
											class="form-control" placeholder="메시지를 입력하세요."
											maxlength="100"></textarea>
									</div>
									<div class="form-group">
										<button type="button" class="btn btn-default pull-right"
											onclick="submitFunction()">전송</button>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="alert alert-success" id="successMessage"
			style="display: none;">
			<strong>메시지 전송에 성공하였습니다.</strong>
		</div>
		<div class="alert alert-danger" id="dangerMessage"
			style="display: none;">
			<strong>이름과 내용을 모두 입력해주세요.</strong>
		</div>
		<div class="alert alert-warning" id="warningMessage"
			style="display: none;">
			<strong>데이터베이스 오류가 발생했습니다.</strong>
		</div>
	</div>
<script>
	 $(document).ready(function(){
		chatListFunction('ten');
		getInfiniteChat();
	}); 

	</script>
</body>
</html>