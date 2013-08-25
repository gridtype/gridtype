if (typeof gridType === "undefined") { gridType = {};}

gridType.chart = {
	//build the chart firstly
	init: function(medianArray){
		console.log(medianArray);
		console.log(typeof(medianArray));
		var opts = {
			"yMax": 5,
			"xMax": 5,
			"yMin": 0,
			"xMin": 0,
			"axisPaddingLeft": -60,
			"axisPaddingBottom": 10
		}, data = {
			"xScale": "ordinal",
			"yScale": "linear",
			"type": "line-dotted",
			"main": [{
				"className": "",
				"data": [{
					"x": "Impression",
					"y": medianArray[0],
				}, {
					"x": "Concept",
					"y": medianArray[1]
				}, {
					"x": "Form",
					"y": medianArray[2]
				}, {
					"x": "Audience",
					"y": medianArray[3]
				}, {
					"x": "Deliver",
					"y": medianArray[4]
				}] //end main
			}] // end data
		};
		
		new xChart('line-dotted', data, '#rating-graph', opts);
		//console.log(theChart);
		
	},
	update: function(medianArray){

		var opts = {
			"yMax": 5,
			"xMax": 5,
			"yMin": 0,
			"xMin": 0,
			"axisPaddingLeft": -60,
			"axisPaddingBottom": 10
		}, data = {
			"xScale": "ordinal",
			"yScale": "linear",
			"type": "line-dotted",
			"main": [{
				"className": "",
				"data": [{
					"x": "Impression",
					"y": medianArray[0],
				}, {
					"x": "Concept",
					"y": medianArray[1]
				}, {
					"x": "Form",
					"y": medianArray[2]
				}, {
					"x": "Audience",
					"y": medianArray[3]
				}, {
					"x": "Deliver",
					"y": medianArray[4]
				}] //end main
			}] // end data
		};
		
		new xChart('line-dotted', data, '#rating-graph', opts);
	}
};

if (typeof gridType === "undefined") { gridType = {};}

gridType.flag = {

	send: function(handler){
	 	var attributesMap = handler.context.dataset,
	 	flagId = attributesMap.flagId,
	 	flagType = attributesMap.flagType;
	 	
	 	//this needs an error/undefined check on flagId and flagType
		$.ajax({
			url: gridType.localPath+'/flag/ajax_flag',
			type: 'POST',
			data: { id: flagId, type: flagType}
		}).done(function(data){
				console.log(data);
				gridType.flag.close();
		});
	},
	close: function(){
		$('.flag-alert').alert('close');
		$('.flag-confirmation').delay(1000).removeClass('out').addClass('in');
	}	 
}
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