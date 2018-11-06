$(function (){
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
if(dd<10) {
    dd=('0'+dd)
} 
if(mm<10) {
    mm=('0'+mm)
} 
today = mm+'/'+dd;
$('#datebtn1').append(today);
$('#datebtn1').addClass('color');
var value = 2;
while(value < 7) {
	dd = ((dd*1)+1);
	if(dd<10){
		dd=('0'+dd);
	}
	today = mm+'/'+ dd;
	$('#datebtn'+value).append(today);
	if($('#hiddendate').val() == today){
		$('#datebtn1').removeClass('color');
		$('#datebtn'+value).addClass('color');
	}
	value++;
}
})


$(function (){
$('.datebtn').click(function(){
	var today = new Date();
	var yyyy = today.getFullYear();
	var text = $(this).text();
	var res = text.substring(6);
	var replace = res.replace('/', '-');
	var result = (yyyy+'-' + replace);
	location.href = '/tesa/consert/'+result;
	$('.datebtn').removeClass('color');
	$(this).addClass('color');
	/*$.ajax({
		url :  '/tesa/consert/' + result,
		type : 'get',
		data : {result : result},
		success : function(data) {
			alert(data);
			console.log(data);
			$('.row').empty();
			$('.row').append("<c:forEach items='${clist}' var='m'><ul class='con-items'><li class='con-item'><p class='con-img'>" +
					"<img src='${pageContext.request.contextPath}/images/${m.C_I_THUMBNAIL}'></p>" +
					"<div class='con-text'><p class='con-title'>${m.C_TITLE}</p><p class='con-content'>${m.C_CONTENT}</p><div class='con-times p-t-20'>" +
					"<p><span class='con-subject'>공연 시간</span><span class='con-time'> ${m.STARTTIME} ~ ${m.ENDTIME}</span></p></div><div class='con-times'>" +
					"<p><span class='con-subject'>공연 장소</span><span class='con-time'>${m.C_M_MAP}</span></p></div>" +
					"<div class='flex-w flex-m w-full-sm m-t-10 m-b-10 btnw'><button class='flex-c-m sizefullbb con-tc con-rad2 hov1 s-text1 trans-0-4' onclick='conreseat'>좌석예약</button></div>" +
					"</div><a href='c_detail/${m.C_CODE}' class='con-detail t-center text-white'>상세보기</a></li></ul></c:forEach>");
		},
		error : function() {
			alert("에러입니다");
		}
	});*/
}) 
});
	

