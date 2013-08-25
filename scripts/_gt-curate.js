if (typeof gridType === "undefined") { gridType = {};}

gridType.curate = {
	init: function(selector){
		$(selector).each(function() {
			var $oEl = $(this),
				sHtml = '<div class="fluid-row"></div>';
			if (screen.width <= 480) {
				var perSlide = 2;
			} else {
				var perSlide = $oEl.attr('data-per-slide') || 4;
			}
			while ($oEl.children(".thumbnail-item").length > 0) {
				$oEl.children(".thumbnail-item").slice(0, perSlide).wrapAll(sHtml);
			}
			$oEl.children(".thumbnail-item").each(function() {
				var tmp = 0,
					$slide = $(this);
				$slide.children(".thumbnail-item").each(function() {
					var suffix = (tmp % 2 == 0) ? "odd" : "even";
					$(this).addClass("feat-" + suffix);
					tmp++;
				});
			});
		});		
	}
};