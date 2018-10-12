
//gnb
$(function(){
	var gnb = this;
	gnb.$obj = $("#gnbMenu");

	gnb.dep1 = gnb.$obj.children('.gnb').children('.depth1_1');
	gnb.dep2 = $('.depth2');

	/*  */
	gnb.active = {
		$obj : null, obj : null, resettimer : null, flag : false,
		over : function(){
			setTimeout(function() {
				gnb.$obj.find(".depth2").css({'display':'block'}) ;
				gnb.$obj.stop().animate({"height":gnb.maxH},100,'easeInOutCubic');
				
			 }, 200); 

			 setTimeout(function() {
				 $('.gnb_bg').stop().animate({"height":"390px"},{ duration:200, easing:"easeOutExpo" });
				 $('.gnb_bg').addClass('on');
			 }, 150); 
		},
		out : function(){

			setTimeout(function() {
				gnb.$obj.find(".depth2").css({'display':'none'}) ;
				gnb.$obj.stop().animate({"height":"55"},100,'easeInOutCubic');
				$('.gnb_bg').stop().animate({"height":"0"},{ duration:500, easing:"easeOutExpo" });
				$('.gnb_bg').removeClass('on');
			 }, 200); 
		},
	};
/*
	gnb.dep1.on('mouseover focusin',function(){
		gnb.active.flag = true;
		$(this).siblings().removeClass('over');
		$(this).addClass('over');
		slideDown = setTimeout(function() {
			gnb.active.over.call(this);
		}, 300);
	})
	gnb.$obj.children('.gnb').on('mouseleave focusout',function(){
		if (!$('.gnb_toggle').hasClass('active')) {
			clearTimeout(slideDown);
			gnb.active.flag = false;
			slideUp = setTimeout(function() {
				if(gnb.active.flag) return false;
				gnb.dep1.removeClass('over');
				gnb.active.out.call(this);
			}, 100);
		};
	})
	*/
    gnb.$obj.on('mouseover focusin',function(){
        gnb.active.flag = true;
        $(this).siblings().removeClass('over');
        $(this).addClass('over');
        slideDown = setTimeout(function() {
                   gnb.active.over.call(this);
        }, 0);
	});
	gnb.$obj.on('mouseleave focusout',function(){
	       clearTimeout(slideDown);
		   gnb.active.flag = false;
		   slideUp = setTimeout(function() {
					  if(gnb.active.flag) return false;
					  gnb.dep1.removeClass('over');
					  gnb.active.out.call(this);
		   }, 0);
	});

});

$(document).ready(function(){
	var winH = $(window).innerHeight();
	var headH = $('.header').innerHeight();
	var consH = $('#Content_Sub').innerHeight();
	var footH = $('#Foot').innerHeight();
	var cfT = consH + footH - headH;
	//console.log(winH, headH, consH, footH, cfT);

	if(winH < cfT){
		$(window).scroll(function(){
			if( $(window).scrollTop() > 180) {
				$('.header').addClass('fixed');
			}else{
				$('.header').removeClass('fixed');
			}
		});
	}

	$('.header .language p a').click(function(){
		$(this).parent().parent().find('ul').toggle();
		$(this).toggleClass('active');
	});
});