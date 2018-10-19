$(function (){
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; // January is 0!
if(dd<10) {
    dd=('0'+dd)*1
    
} 
if(mm<10) {
    mm=('0'+mm)*1
} 
today = mm+'/'+dd;
$('#datebtn1').append(today);
$('#datebtn1').addClass('color');
today = mm+'/'+((dd*1)+1);
$('#datebtn2').append(today);
today = mm+'/'+((dd*1)+2);
$('#datebtn3').append(today); 
today = mm+'/'+((dd*1)+3);
$('#datebtn4').append(today);
today = mm+'/'+((dd*1)+4);
$('#datebtn5').append(today);
today = mm+'/'+((dd*1)+5);
$('#datebtn6').append(today);
})

