//This JS needs to do the following:
/*
!Functions
Ajax Rate
Ajax Comment
Ajax Update Chart
Show/Hide Chart
Show/Hide Comments Form
Show/Hide Rating Form

*/


$(document).ready(function() {
    $('#tabs a').click(function (e) {
          e.preventDefault();
          $(this).tab('show');
    })
	if (median == null) { median = [0, 0, 0, 0, 0];};

	//MAIN
	// lightbox for the big image in the main well		
	$(".fancybox").fancybox({
		openEffect: 'none',
		closeEffect: 'none'
	});
	//RAIL - tab specific
	// RATING 
	//ajax submit rating
	$('#ajax-rating-form').on('submit', function(e) {
		e.preventDefault(); // prevent native submit
		$(this).ajaxSubmit({
			//target: '#myResultsDiv',
			type: 'POST',
			success: function(data) {
				data = $.parseJSON(data);			
				gridType.chart.update(data);
				$('#rating-button').val('Change Your Rating');				
			}
		});
	});
	
	//load the graph when loading this tab
	$('a[href="#rate"]').on('shown', function(e) {
		//e.target // activated tab
		//e.relatedTarget // previous tab
		gridType.chart.init(median);
		$('a[href="#rate"]').unbind('shown');
	});
	
	// COMMENT
	// Comment form ajax submit
	$('#comment-form').on('submit', function(e) {
		e.preventDefault(); // prevent native submit
		$(this).ajaxSubmit({			
			type: 'POST',
			success: function(data) {
				data = $.parseJSON(data);
				var html = '';
				html +=	'<blockquote class="'+data.blockclass+'">';
				html +=	'<p>'+data.comment+'</p>';
				html += '<div class="btn btn-mini disabled text-left">';
				html += 'By: <strong>'+data.username+'</strong> <em>('+data.role+')</em>';
				html += '</div> <small class="text-right">just now</small>';
				html += '</blockquote>';
				$('#comments-block').prepend(html);
				$('#comment-form textarea[name="comment"]').val('');
			}
		});
	});

	//FLAG
	$('.flag-alert button.btn').on('click', function() {
		gridType.flag.send($(this));
	});
}); // End Doc Ready Functions