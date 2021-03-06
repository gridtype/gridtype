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