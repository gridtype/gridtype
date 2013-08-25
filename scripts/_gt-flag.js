if (typeof gridType === "undefined") { gridType = {};}

gridType.flag = {

	send: function(handler){
	 	var attributesMap = handler.context.dataset,
	 	flagId = attributesMap.flagId,
	 	flagType = attributesMap.flagType;
	 	
	 	//this needs an error/undefined check on flagId and flagType
		$.ajax({
<<<<<<< HEAD
<<<<<<< HEAD
			url: 'http://localhost:8888/GITS/gridtype/flag/ajax_flag',
=======
			url: gridType.localPath+'/flag/ajax_flag',
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
=======
			url: gridType.localPath+'/flag/ajax_flag',
>>>>>>> 226e251d1842e0dff6de5f412ea94d41b36f5c6f
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