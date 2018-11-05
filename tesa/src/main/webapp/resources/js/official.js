function idcheck() {
	var id = $("#id").val();
	var idck = 0;
	var idReg = /^[a-z0-9]{6,20}$/g;
	if (!idReg.test(id)) {
		alert("아이디는 6~20자 소문자 또는 숫자이어야 합니다.");
	} else{
		$.ajax({
					url : 'idcheck',
					type : 'post',
					data : {
						id : id
					},
					success : function(data) {
						if ($.trim(data) == 0) {
							$('#chkMsg')
									.html(
											"<input type='hidden' id='cntidchk' value='" + data + "'><p style='COLOR: blue;margin-left:5px;margin-top:10px'>사용가능한 아이디 입니다.</p>");
							$(".in_member").removeAttr("disabled");
							
						} else {
							$('#chkMsg')
									.html(
											"<p style='COLOR: red; margin-left:5px;margin-top:10px'>중복된 아이디 입니다. </p>");
							$(".in_member").addAttr("disabled", "disabled");
						}
					},
					error : function() {
						alert("에러입니다");
					}
				});
	}
}
function id_keyup(data) {
	var Reg = /^[a-zA-Z0-9]*$/g;
	var rengthReg = /^[a-zA-Z0-9]{1,20}$/g;
	if (!Reg.test(data)) {
		alert("20자 이내의 영문자 또는 숫자이어야 합니다 ");
		$("#id").val('');
		return;
	}
	if (!rengthReg.test(data)) {
		$("#id").val(data.substring(0, 20));
	}
}

function pw1_keyup(data) {
	var rengthReg = /^.{1,50}$/g;
	if ($("#pw1").val().length == 0) {
		return;
	}
	if (!rengthReg.test(data)) {
		alert("50자리를 초과할 수 없습니다");
		$("#pw1").val(data.substring(0, 50));
	}
}

function pw2_keyup(data) {
	var rengthReg = /^.{1,50}$/g;
	if ($("#pw2").val().length == 0) {
		return;
	}
	if (!rengthReg.test(data)) {
		alert("50자리를 초과할 수 없습니다");
		$("#pw2").val(data.substring(0, 50));
	}
}

function name_keyup(data) {
	var Reg = /^[a-zA-Zㄱ-ㅎ가-힣]*$/g;
	var rengthReg = /^[a-zA-Zㄱ-ㅎ가-힣]{1,10}$/g;
	if (!Reg.test(data)) {
		alert("10자 이내의 영문 또는 한글이어야 합니다 ");
		$("#name").val('');
		return;
	}
	if (!rengthReg.test(data)) {
		$("#name").val(data.substring(0, 10));
	}
}

function phone2_keyup(data) {
	var Reg = /^[0-9]*$/g;
	var rengthReg = /^[0-9]{1,8}$/g;
	if (!Reg.test(data)) {
		alert("숫자만 입력해주세요");
		$("#phone2").val('');
		return;
	}
	if (!rengthReg.test(data)) {
		$("#phone2").val(data.substring(0, 8));
	}
}

function email_keyup(data) {
	var Reg = /^[a-zA-Z0-9]*$/g;
	var rengthReg = /^[a-zA-Z0-9]{1,20}$/g;
	var email2= $('#email2').val();
	if (!Reg.test(data)) {
		alert("20자 이내의 영문자 또는 숫자이어야 합니다 ");
		$("#email").val('');
		return;
	}
	if (!rengthReg.test(data)) {
		$("#email").val(data.substring(0, 20));
	}
	$.ajax({
		url : 'emailcheck',
		type : 'post',
		data : {
			email : data+"@"+email2
		},
		success : function(data) {
			if ($.trim(data) == 0) {
				$('.emailcheck')
						.html(
								"<input type='hidden' id='cntemail' value='" + data + "'><p style='COLOR: blue;margin-left:5px;margin-top:13px'>사용가능한 메일 입니다.</p>");
				$(".in_member").removeAttr("disabled");
			} else {
				$('.emailcheck')
						.html(
								"<p style='COLOR: red; margin-left:5px;margin-top: 13px;'>중복된 메일 입니다. </p>");
				$(".in_member").addAttr("disabled", "disabled");
			}
		},
		error : function() {
			alert("에러입니다");
		}
	});
}

function in_member() {
	// 마우스로 복붙하는 것 막으려면 여기도 패턴 주면됨
	// 공백 check
	if($('#cntemail').val() != 0 || $('#cntidchk').val() != 0){
		alert("중복확인을 해주세요");
		return
	}
	if ($("#id").val().length != 0 && $("#pw1").val().length != 0
			&& $("#pw2").val().length != 0 && $("#name").val().length != 0
			&& $("#email").val().length != 0) {

		// pw check
		if ($("#pw1").val() == $("#pw2").val()) {
			// phone check
			if ($("#phone2").val().length == 7
					|| $("#phone2").val().length == 8) {
				// name check
				var Reg = /^[a-zA-Z가-힣]{1,10}$/g;
				if (Reg.test($("#name").val())) {
					document.join_form.submit();
				} else {
					alert("이름을 확인해 주세요");
				}
			} else {
				alert("전화번호를 확인해주세요");
			}
		} else {
			alert("패스워드를 일치시켜주세요");
		}
	} else {
		alert("정보를 모두 입력해 주세요");
	}
}

function id_search() {
	if ($("#searchname").val().length == 0) {
		alert("이름을 입력해 주세요");
	} else if ($("#searchemail").val().length == 0) {
		alert("이메일을 입력해 주세요");
	} else{
		document.idsearch.submit();
	}
}
function pw_search() {
	if ($("#searchname").val().length == 0) {
		alert("이름을 입력해 주세요");
	} else if ($("#searchemail").val().length == 0) {
		alert("이메일을 입력해 주세요");
	} else if($("#searchid").val().length == 0){
		alert("아이디를 입력해 주세요");
	} else{
		alert("이메일로 메일이 발송되었습니다.");
		document.pwsearch.submit();
	}
}
function pwup() {
	if($("#pw1").val().length == 0 || $("#pw2").val().length == 0){
		alert("비밀번호를 입력해 주세요");
		return;
	}
	if($("#pw1").val().length >= 6 && $("#pw2").val().length >= 6){
		if($("#pw1").val() == $("#pw2").val()){
			alert("변경 완료. 로그인 페이지로 이동합니다.");
			document.pwup.submit();
		}
	}else{
		alert("6자리이상 쓰셈");
	}
}
$(document).ready(function(){
	 
    var key = getCookie("key");
    $("#id").val(key); 
     
    if($("#id").val() != ""){ 
        $("#idsave").attr("checked", true); 
    }
     
    $("#idsave").change(function(){
        if($("#idsave").is(":checked")){
            setCookie("key", $("#id").val(), 7);
        }else{ 
            deleteCookie("key");
        }
    });
     
    $("#id").keyup(function(){ 
        if($("#idsave").is(":checked")){ 
            setCookie("key", $("#id").val(), 7); 
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}
