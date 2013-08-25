$(document).ready(function(){
	gridType.curate.init('.thumbnails');
	$('a#load-more-button').on('click',function(){
		gridType.loadMore.get('album',12,'.thumbnail-item');
	});
});
/*

$(window).scroll(function() {
	var scrollFired = false;
	if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		//    if($(window).scrollTop() <= ($(document).height() - 50) - $(window).height()){
		if (!scrollFired) {
			scrollFired = true;
			$("#ajax_loader").css("display", "block");
			setTimeout(gridType.loadMore.get('album',12,'.thumbnail-item'), 1500);
		}
	}
});
*/
