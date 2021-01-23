function load(){
	document.select.submit();
}

function submit(){
	document.schedule.submit();
}

const show_mem = function(){
	const height = $("body").height();
	$(".grayout").addClass("active");
	$(".grayout.active").css("height", height);
	$(".popup").addClass("active");
};

 $("#member").click(function(){
 	show_mem();
 });

$(".close").click(function(){
	$(".grayout.active").removeClass("active");
	$(".popup.active").removeClass("active");
});

window.onload = function(){
	let showFlg = document.add_member.showFlg.value;
	if(showFlg == '1'){
		show_mem();
	}
	let popup = document.getElementById("flush_success") || document.getElementById("flush_error");
	if(popup =! null){
		popup.animate({opacity:[0,1]}, 1000);
		setTimeout(function(){
				popup.animate({opacity:[1,0]}, 1000)}
				,3000
		);
		setTimeout(function(){popup.style.display = 'none'}, 4000);
	}
}

