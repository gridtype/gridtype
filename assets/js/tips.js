jQuery(document).ready(function(){

	// Show Add Tip
	$('#addtip').tooltip('show');

	// Hide Add Tip
	var hideAddTipTimer = setInterval(hideAddTip, 3000);
	function hideAddTip(){ 
		$('#addtip').tooltip('hide');
		clearInterval(hideAddTipTimer);
		$('#addtip').tooltip('destroy');
	}
	
	
	
	
	// Show Manage Tip
	var showManageTipTimer = setInterval(showManageTip, 3100);
	function showManageTip(){ 
		$('#managetip').tooltip('show');
		clearInterval(showManageTipTimer);
		
	}
	
	// Hide Manage Tip
	var hideManageTipTimer = setInterval(hideManageTip, 6100);
	function hideManageTip(){ 
		$('#managetip').tooltip('hide');
		clearInterval(hideManageTipTimer);
		$('#managetip').tooltip('destroy');
	}
	
	


	// Show Explore Tip
	var showExplorerTipTimer = setInterval(showExploreTip, 6200);
	function showExploreTip(){ 
		$('#exploretip').tooltip('show');
		clearInterval(showExplorerTipTimer);
	}

	// Hide Explore Tip
	var hideExplorerTipTimer = setInterval(hideExploreTip, 9100);
	function hideExploreTip(){ 
		$('#exploretip').tooltip('hide');
		clearInterval(hideExplorerTipTimer);
		$('#exploretip').tooltip('destroy');
	}
	
	
});

