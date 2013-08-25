$(document).ready(function() {
    $('#tabs a').click(function (e) {
          e.preventDefault();
          $(this).tab('show');
    })
	if (median == null) { median = [0, 0, 0, 0, 0];};
	//load the graph when loading this tab
	$('a[href="#rate"]').on('shown', function(e) {
		//e.target // activated tab
		//e.relatedTarget // previous tab
		gridType.chart.init(median);
		$('a[href="#rate"]').unbind('shown');
	});
});