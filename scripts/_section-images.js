$(document).ready(function(){
	gridType.curate.init('.thumbnails');
	$('a#load-more-button').on('click',function(){
		gridType.loadMore.get('image',12,'.thumbnail-item');
	});
});
/*

/* killing infinate scroll in lieu of a button for the time being
$(window).scroll(function() {
	var scrollFired = false;
	if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		//    if($(window).scrollTop() <= ($(document).height() - 50) - $(window).height()){
		if (!scrollFired || scrollFired === false) {
			scrollFired = true;
			$("#ajax_loader").css("display", "block");
			setTimeout(gridType.loadMore.get('image',12,'.thumbnail-item'), 1000);
			scrollFired = true;
		}
	}
});
*/
