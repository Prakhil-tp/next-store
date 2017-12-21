$(document).scroll(function(){
			var b_top=$(document).scrollTop();
			if(b_top>100)
			{
				$(".fixed").stop(true,true);
				$(".fixed").fadeIn(500);
			}
			else
			{
				$(".fixed").stop(true,true);
				$(".fixed").fadeOut();
			}
});	