if (typeof gridType === "undefined") { gridType = {};}

gridType.loadMore = {
	ajaxInProcess: false,
	get: function(type,limitResult,offsetItem){		
		var scrollFired = false,
			ajaxPath,
			objectPath,
			offsetCount = $(offsetItem).length;
		if (gridType.loadMore.ajaxInProcess === true){
			console.log('stopping');
			return false;
			
		} else {
			gridType.loadMore.ajaxInProcess = true;
		}
		if (type === 'image'){ ajaxPath = 'images/ajaxGetImages/'; objectPath = '/images/view/';}
		if (type === 'album'){ ajaxPath = 'albums/ajaxGetAlbums/'; objectPath = 'images/album/';}
		if (type === 'image' || type === 'album' ){
			console.log('asking for '+limitResult+' items with an offset of '+offsetCount);
				$.ajax({
					url: gridType.localPath + '/' + ajaxPath,
					type: 'POST',
					data: {
						offset: offsetCount,
						limit: limitResult
					}
				}).done(function(data) {
					var payload = $.parseJSON(data),
						payloadCount = payload.length,
						html = '';
					console.log(payload);
					if (payloadCount === 0 || payloadCount < limitResult) { gridType.loadMore.last() }
					if (type === 'image'){
						$.each(payload, function(i, item) {
							html += '<li class="span2 thumbnail-item"><div class="thumbnail"><a href="' + gridType.localPath + objectPath + item.id + '"><img src="' + gridType.localPath + '/assets' +  item.image + item.image_type + '"></a><div class="caption"><span>' + item.name + '</span></div></div></li>';
						});							
					}
					if (type === 'album'){
						$.each(payload, function(i, item) {
							html += '<li class="span2 thumbnail-item"><div class="thumbnail"><a href="' + gridType.localPath + objectPath + item.id + '"><img src="' + item.cover_image + '" alt="Album" title="Click to view the album"></a><div class="caption"><h3>' + item.name + '</h3><small>By: <a href="' + gridType.localPath +'users/show/">'+item.username+'</a></small><div class="badge badge-info" style="float:right;">'+item.count+'</div></div></div></li>';
							});

					}
					if (html != ''){
						$(html).appendTo('ul.thumbnails').hide().fadeIn('slow');
						if (typeof gridType.curate != "undefined"){
							gridType.curate.init('.thumbnails');
						}						
					}
					$("#ajax_loader").css("display", "none");
					gridType.loadMore.ajaxInProcess = false;
				});
		}
	},
	last: function(){
		$("#ajax_loader,#load-more-button").css("display", "none");
		//columnConform();
		//$(window).unbind('scroll');
	}
};
/* Perfectly valid JS model patter, replacing with other pattern 
var loadMore = (function(){
	return {
		get: function(type,limitResult){
			var scrollFired = false,
				ajaxPath,
				objectPath;
				console.log(limitResult);
				console.log('firing');
			if (type === 'image'){ ajaxPath = 'images/ajaxGetImages/'; objectPath = 'images/single/';}
			if (type === 'album'){ ajaxPath = 'albums/ajaxGetAlbums/'; objectPath = 'images/album/';}
			if ( type === 'image' || type === 'album' ){
					var offsetCount = $('.thumbnail-item').length,
						$oEl = $(this);
						console.log(limitResult);
					//console.log(typeof(offsetCount));
					$.ajax({
						url: gridType.localPath + ajaxPath,
						type: 'POST',
						data: {
							offset: offsetCount,
							limit: limitResult
						}
					}).done(function(data) {
						var payload = $.parseJSON(data),
							payloadCount = payload.length,
							html = '';
						if (payloadCount === 0 || payloadCount < limitResult) { loadMore.last() }
						if (type === 'image'){
							$.each(payload, function(i, item) {
								html += '<li class="span2 thumbnail-item"><div class="thumbnail"><a href="' + gridType.localPath + objectPath + item.id + '"><img src="' + gridType.localPath + item.image + item.image_type + '"></a><div class="caption"><span>' + item.name + '</span></div></div></li>';
							});							
						}
						if (type === 'album'){
							$.each(payload, function(i, item) {
								html += '<li class="span2 thumbnail-item"><div class="thumbnail"><a href="' + gridType.localPath + objectPath + item.id + '"><img src="' + item.cover_image + '" alt="Album" title="Click to view the album"></a><div class="caption"><h3>' + item.name + '</h3><small>By: <a href="' + gridType.localPath +'users/show/">'+item.username+'</a></small><div class="badge badge-info" style="float:right;">'+item.count+'</div></div></div></li>';
								});

						}
						if (html != ''){
							$(html).appendTo('ul.thumbnails').hide().fadeIn('slow');
							curate();
						}
						$("#ajax_loader").css("display", "none");
					});
			}
		},
		last: function(){
			$("#ajax_loader").css("display", "none");
			//columnConform();
			$(window).unbind('scroll');
		}
	};
}());
*/