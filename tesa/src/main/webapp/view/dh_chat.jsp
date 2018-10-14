<link rel="stylesheet" href="../vendor/dh_support/chat/css/custom.css">
	<link rel="stylesheet" href="../vendor/dh_support/chat/css/bootstrap3.css">
	<link href="../vendor/dh_support/suggest/css/style.css" rel="stylesheet" />
	<link href="../vendor/dh_support/suggest/css/font-awesome.min.css" rel="stylesheet" />

<!-- 인터넷을 통해 제이쿼리 가져오기 -->
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
	function submitFunction() {
		var chatName = $('#chatName').val();
		var chatContent = $('#chatContent').val();
		$.ajax({
			type : "POST",
			url : "./chatSubmitServlet",
			data : {
				chatName : chatName,
				chatContent : chatContent
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
			var parsed = JSON.parse(data);
			var result = parsed.result;
			for(var i = 0; i < result.length; i++){
				addChat(result[i][0].value,result[i][1].value,result[i][2].value);
			}
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
		
	}
	
	

</script>

</head>
<body>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa fa-circle text-green"></i> 1:1 실시간 상담
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
							<div id="chatList" class="portlet-body chat-widget"
								style="overflow-y: auto; width: auto; height: 300px;">
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

<button type="button" class="btn btn-default pull-right" onclick="chatListFunction('today');">추가</button>


</body>