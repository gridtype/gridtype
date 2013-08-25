$(document).ready(function(){
	if (median === null) {
		median = [0,0,0,0,0];
	};
	var opts = {
	  "yMax": 5,
	  "xMax": 5,
	  "yMin": 0,
	  "xMin": 0,
	  "axisPaddingLeft": -60,
	  "axisPaddingBottom": 10,
	  "paddingLeft": 10
	}
	var data = {
	  "xScale": "ordinal",
	  "yScale": "linear",
	  "type": "line-dotted",
	  "main": [
	    {
	      "className": "",
	       
	      "data": [
	        {
	          "x": "5) Deliver",
	          "y": median[0],

	        },
	        {
	          "x": "4) Audience",
	          "y": median[1]
	        },
	        {
	          "x": "3) Form",
	          "y": median[2]
	        },
	        {
	          "x": "2) Concept",
	          "y": median[3]
	        },
	        {
	          "x": "1) Impression",
	          "y": median[4]
	        }

	      ]
	    }
	  ]
	};
	
	
	//check if there's toolbar that needs tab'in	
	
	if ($('.btn-toolbar')){
		
		$('.btn-group a').on('click',function(e){
			var $btn = $(this),
				id = $btn.context.id;
			console.log(id);
			if($btn.hasClass('btn-primary')){
				$btn.removeClass('btn-primary');
			} else {
				$btn.addClass('btn-primary').siblings().removeClass('btn-primary');
			}
			
			$('#toolbar-panes .toolbar-pane').removeClass('expanded').addClass('collapsed');

			if(id === 'chart'){
				$('#rating-graph').removeClass('collapsed').addClass('expanded');
				var myChart = new xChart('bar', data, '#rating-graph', opts);	
			} else if(id === 'comment'){
				$('#comments-pane').removeClass('collapsed').addClass('expanded');
			} else if (id === 'info'){
				$('#info-pane').removeClass('collapsed').addClass('expanded');
			} else {
				return false;
			}
		});
					
		
	}

});