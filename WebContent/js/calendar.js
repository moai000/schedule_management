
function load(){
	document.select.submit();
}

function submit(no){
	document.schedule.day.value = document.getElementById("select_day"+no).textContent;
	document.schedule.submit();
}

const show_pop = function(mode){
	const height = $("body").height();
	$(".grayout").addClass("active");
	$(".grayout.active").css("height", height);

	$(".popup_"+mode).addClass("active");
};

 $("#member").click(function(){
 	show_pop("mem");
 });

 $("#schedule").click(function(){
 	show_pop("sche");
 });

$(".close").click(function(){
	$(".grayout.active").removeClass("active");
	$(".popup_mem.active").removeClass("active");
	$(".popup_sche.active").removeClass("active");
	$(".grayout").css("height", 0);
});

window.onload = function(){
	let showFlg = document.add_member.showFlg.value;
	if(showFlg == '1'){
		show_mem();
	}
	$("#flush_success").hide().fadeIn(1000);
	setTimeout(function(){
		$("#flush_success").fadeOut(1000);
	}, 3000);
	$("#flush_error").hide().fadeIn(1000);
	setTimeout(function(){
		$("#flush_error").fadeOut(1000);
	}, 3000);
}
