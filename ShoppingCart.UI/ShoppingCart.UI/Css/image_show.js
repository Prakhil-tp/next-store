$(document).ready(function(){
	
		$(".side").click(function(){
			
			var path=$(this).attr("src");
			
			$(".main").attr("src",path);
			
		});
	
	});